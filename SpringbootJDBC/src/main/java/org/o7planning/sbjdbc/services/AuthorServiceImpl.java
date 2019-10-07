package org.o7planning.sbjdbc.services;

import java.util.List;
import java.util.Optional;

import org.o7planning.sbjdbc.Repository.AuthorRepository;
import org.o7planning.sbjdbc.model.author;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class AuthorServiceImpl implements AuthorServices{
	@Autowired
    private AuthorRepository authorRepository;

    @Override
    public Iterable<author> findAll() {
        return authorRepository.findAll();
    }

    @Override
    public List<author> search(String q) {
        return authorRepository.findByauthornameLike(q);
    }

    @Override
    
    public Optional<author> findAuthorById(Integer id) {
        return authorRepository.findById(id);
    }


    @Override
    public void saveAuthor(author contact) {
     authorRepository.save(contact);
    }

    @Override
    public void deleteAuthor(Integer id) {
    	authorRepository.deleteById(id);
    }
}
