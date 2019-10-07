package org.o7planning.sbjdbc.services;

import java.util.List;
import java.util.Optional;


import org.o7planning.sbjdbc.Repository.UserRepository;
import org.o7planning.sbjdbc.model.users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
    private UserRepository usRepository;

   
    @Override
    public Iterable<users> findAll() {
        return usRepository.findAll();
    }

    @Override
    public List<users> search(Integer q) {
        return usRepository.findByidLike(q);
    }

    @Override
  
    public Optional<users> finduserById(Integer id) {
        return usRepository.findById(id);
    }
    @Override
    
    public Optional<users> finduserByemail(String email) {
        return usRepository.findByEmailContaining(email);
    
    }


    @Override
    public void saveUser(users contact) {
     usRepository.save(contact);
    }

    @Override
    public void deleteUser(Integer id) {
    	usRepository.deleteById(id);
    }
}
