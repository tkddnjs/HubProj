package service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import domain.Bucketlist;
import service.pacade.BucketlistService;
import store.pacade.BucketlistStore;
import store.pacade.ConnChainStore;

@Service
public class BucketlistServiceLogic implements BucketlistService {

	@Autowired
	private BucketlistStore bucketlistStore;
	@Autowired
	private ConnChainStore connChainStore;
	
	@Override
	public int registerBucketlist(Bucketlist bucketlist) {
		int result = 1;
		
		bucketlist.setBucketlistId(bucketlistStore.nextBucketlistId());
		
		result *= bucketlistStore.insertBucketlist(bucketlist);
		result *= bucketlistStore.insertBucketlistConn(bucketlist);
		
		List<String> sList = bucketlist.getConnChains();
		for(String connChain : sList){
			for(String str : connChainStore.selectConnChains()){
				if(connChain.equals(str)){
					sList.remove(connChain);
					break;
				}
			}
		}
		
		for(String connChain : sList){
			result *= connChainStore.insertConnChain(connChain);
		}
		
		return result;
	}

	@Override
	public int modifyBucketlist(Bucketlist bucketlist) {
		return bucketlistStore.updateBucketlist(bucketlist);
	}

	@Override
	public int removeBucketlist(int bucketlistId) {
		return bucketlistStore.deleteBucketlist(bucketlistId);
	}

	@Override
	public Bucketlist findBucketlistByBucketlistId(int bucketlistId) {
		return bucketlistStore.selectBucketlistByBucketlistId(bucketlistId);
	}

	@Override
	public List<Bucketlist> findAll(String userId) {
		return bucketlistStore.selectAll(userId);
	}

}
