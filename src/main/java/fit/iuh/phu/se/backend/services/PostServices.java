package fit.iuh.phu.se.backend.services;

import fit.iuh.phu.se.backend.entities.Post;
import fit.iuh.phu.se.backend.repositories.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServices {
    @Autowired
    private PostRepository postRepository;

    public List<Post> getAllPosts() {
        return postRepository.findAll();
    }

    public Post getPostById(long postId) {
        return postRepository.findById(postId).orElse(null);
    }
}
