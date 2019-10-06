package org.o7planning.sbjdbc.Repository;

import java.util.List;
import java.util.Optional;

import org.o7planning.sbjdbc.model.author;
import org.o7planning.sbjdbc.model.books;
import org.springframework.data.repository.CrudRepository;

public interface AuthorRepository extends CrudRepository<author,Integer> {
	List<author> findByauthornameLike(String authorname);
	author findOne(int q);
	Optional<author> findById(Integer q);
	void delete(int q);
}
