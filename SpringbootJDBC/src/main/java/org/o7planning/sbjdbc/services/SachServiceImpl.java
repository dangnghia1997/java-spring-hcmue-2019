package org.o7planning.sbjdbc.services;

import java.util.List;
import java.util.Optional;

import org.o7planning.sbjdbc.Repository.SachRepository;
import org.o7planning.sbjdbc.model.books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
public class SachServiceImpl implements SachServices
{
	@Autowired
    private SachRepository sachRepository;

    @Override
    public Iterable<books> findAll() {
        return sachRepository.findAll();
    }

    @Override
    public List<books> search(String q) {
        return sachRepository.findBybooknameLike(q);
    }

    @Override
  
    public Optional<books> findBookById(Integer id) {
        return sachRepository.findById(id);
    }


    @Override
    public void saveBook(books contact) {
     sachRepository.save(contact);
    }

    @Override
    public void deleteBook(Integer id) {
    	sachRepository.deleteById(id);
    }
}
