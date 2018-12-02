package pl.sda.flightsearch.service;

import pl.sda.flightsearch.model.User;

import java.util.List;

public interface IUserService {
void save (User user);
List<User> findAll();
void delete (Long id);
}
