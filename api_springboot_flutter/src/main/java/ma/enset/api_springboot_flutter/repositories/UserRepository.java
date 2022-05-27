package ma.enset.api_springboot_flutter.repositories;

import ma.enset.api_springboot_flutter.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,String> {
}
