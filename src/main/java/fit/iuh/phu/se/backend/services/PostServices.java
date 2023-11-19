package fit.iuh.phu.se.backend.services;

import fit.iuh.phu.se.backend.entities.Post;
import fit.iuh.phu.se.backend.entities.User;
import fit.iuh.phu.se.backend.repositories.PostRepository;
import fit.iuh.phu.se.backend.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServices {
    @Autowired
    private PostRepository postRepository;
    @Autowired
    private UserRepository userRepository;

    public List<Post> getAllPosts() {
        return postRepository.findAll();
    }

    public Post getPostById(long postId) {
        return postRepository.findById(postId).orElse(null);
    }

    public Page<Post> findPaginated(int pageNo, int pageSize, String sortBy, String sortDirection) {
        Sort sort = Sort.by(Sort.Direction.fromString(sortDirection), sortBy);
        Pageable pageable = PageRequest.of(pageNo, pageSize, sort);
        return postRepository.findAll(pageable);
    }
    public void savePost(Post post, Long userId) {
        User author = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found with id: " + userId));

        post.setAuthor(author);
        postRepository.save(post);
    }
}
