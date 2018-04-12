package org.eldoradoholidays.dao;

import java.util.List;

import org.eldoradoholidays.dto.Resort;
import org.eldoradoholidays.dto.ResortBook;

public interface ResortDAO {

	List<Resort> getAllResorts();
	Resort getSingleResort(int id);
	
	boolean bookResort(ResortBook resortBook);
	boolean updateRoom(Resort resort);
	
}
