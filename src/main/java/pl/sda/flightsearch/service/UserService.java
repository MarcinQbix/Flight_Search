package pl.sda.flightsearch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.sda.flightsearch.model.User;
import pl.sda.flightsearch.repository.IUserRepository;

import java.util.List;

@Service
public class UserService implements IUserService {
    private IUserRepository iUserRepository;

    @Autowired
    public UserService(IUserRepository iUserRepository) {
        this.iUserRepository = iUserRepository;
    }

    @Override
    public void save(User user) {
        iUserRepository.save(user);
    }

    @Override
    public List<User> findAll() {
        return iUserRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        iUserRepository.deleteById(id);
    }
}
