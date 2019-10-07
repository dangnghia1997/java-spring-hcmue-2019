package org.o7planning.sbjdbc.services;

import java.util.List;
import java.util.Optional;
import org.o7planning.sbjdbc.Repository.PublisherRepository;
import org.o7planning.sbjdbc.model.publisher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class PublisherImpl implements PublisherServices {
	@Autowired
    private PublisherRepository publisherRepository;
    @Override
    public Iterable<publisher> findAll() {
        return publisherRepository.findAll();
    }

    @Override
    public List<publisher> search(String q) {
        return publisherRepository.findBypublishernameLike(q);
    }

    @Override
    
    public Optional<publisher> findPublisherById(Integer id) {
        return publisherRepository.findById(id);
    }


    @Override
    public void savePublisher(publisher contact) {
     publisherRepository.save(contact);
    }

    @Override
    public void deletePublisher(Integer id) {
    	publisherRepository.deleteById(id);
    }
}
