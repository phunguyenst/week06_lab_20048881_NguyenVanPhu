package fit.iuh.phu.se.backend.repositories;

import fit.iuh.phu.se.backend.entities.PostComment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PostCommentRepository extends JpaRepository<PostComment, Long> {
    List<PostComment> findAllByPostId(Long postId);
}