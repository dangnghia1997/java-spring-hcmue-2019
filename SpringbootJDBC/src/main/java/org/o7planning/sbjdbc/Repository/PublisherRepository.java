package org.o7planning.sbjdbc.Repository;

import java.util.List;
import java.util.Optional;


import org.o7planning.sbjdbc.model.publisher;
import org.springframework.data.repository.CrudRepository;

public interface PublisherRepository  extends CrudRepository<publisher,Integer>{
	List<publisher> findBypublishernameLike(String name);
	Optional<publisher> findById(Integer q);
	void deleteById(Integer q);
}
