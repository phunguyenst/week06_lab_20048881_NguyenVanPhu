package fit.iuh.phu.se.backend.repositories;

import fit.iuh.phu.se.backend.entities.PostComment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostCommentRepository extends JpaRepository<PostComment, Long> {
}