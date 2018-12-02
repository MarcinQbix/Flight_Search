package pl.sda.flightsearch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.flightsearch.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
}
