package org.o7planning.sbjdbc.services;

import java.util.List;
import java.util.Optional;


import org.o7planning.sbjdbc.model.users;
import org.springframework.stereotype.Service;

public interface UserService {
	Iterable<users> findAll();

    List<users> search( Integer q);

    Optional<users> finduserById(Integer id);
    Optional<users> finduserByemail(String email);
    void saveUser(users contact);
    
    void deleteUser(Integer  id);
}
