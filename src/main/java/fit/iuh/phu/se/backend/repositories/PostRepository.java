package fit.iuh.phu.se.backend.repositories;

import fit.iuh.phu.se.backend.entities.Post;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostRepository extends JpaRepository<Post, Long> {
}