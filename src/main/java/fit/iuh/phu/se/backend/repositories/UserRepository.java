package fit.iuh.phu.se.backend.repositories;

import fit.iuh.phu.se.backend.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}