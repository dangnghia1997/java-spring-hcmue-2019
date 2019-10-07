package org.o7planning.sbjdbc.services;

import java.util.List;
import java.util.Optional;

import org.o7planning.sbjdbc.model.author;

public interface AuthorServices {
	Iterable<author> findAll();
    List<author> search(String q);
    Optional<author> findAuthorById(Integer id);
    void saveAuthor(author contact);
    void deleteAuthor(Integer id);
}
