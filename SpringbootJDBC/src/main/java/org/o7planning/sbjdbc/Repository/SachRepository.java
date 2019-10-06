package org.o7planning.sbjdbc.Repository;

import java.util.List;
import java.util.Optional;

import org.o7planning.sbjdbc.model.books;
import org.springframework.data.repository.CrudRepository;

public interface SachRepository extends CrudRepository<books,Integer>{
	List<books> findBybooknameLike(String book);
	Optional<books> findById(Integer q);
	void delete(int q);
}
