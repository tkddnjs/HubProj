package service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import domain.Cooper;
import service.pacade.CooperService;
import store.pacade.CooperStore;

@Service
public class CooperServiceLogic implements CooperService {

	@Autowired
	private CooperStore cooperStore;
	
	@Override
	public int registerCooper(Cooper cooper) {
		return cooperStore.insertCooper(cooper);
	}

	@Override
	public int modifyCooper(Cooper cooper) {
		return cooperStore.updateCooper(cooper);
	}

	@Override
	public int removeCooper(int coId) {
		return cooperStore.deleteCooper(coId);
	}

	@Override
	public List<Cooper> findAll() {
		return cooperStore.selectAll();
	}

	@Override
	public Cooper findCoopersByCoId(int coId) {
		return cooperStore.selectCooperByCoId(coId);
	}

}
