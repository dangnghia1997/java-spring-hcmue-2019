package org.o7planning.sbjdbc.services;

import java.util.List;
import java.util.Optional;
import org.o7planning.sbjdbc.model.publisher;

public interface PublisherServices {
	Iterable<publisher> findAll();
    List<publisher> search(String q);
    Optional<publisher> findPublisherById(Integer id);
    void savePublisher(publisher contact);
    void deletePublisher(Integer id);
}
