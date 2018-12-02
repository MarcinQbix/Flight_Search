package pl.sda.flightsearch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sda.flightsearch.repository.UserRepository;

@Service
public class UserService {


    private UserRepository userRepository;

//    @Autowired
//    public UserService(UserRepository userRepository) {
//        this.userRepository = userRepository;
//    }
}
