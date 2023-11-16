package fit.iuh.phu.se.frontend.controller;

import fit.iuh.phu.se.backend.entities.Post;
import fit.iuh.phu.se.backend.services.PostServices;
import fit.iuh.phu.se.backend.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class BlogController {

    @Autowired
    private PostServices postService; // Assume you have a PostService to interact with posts
    @Autowired
    private UserServices userService; // Assume you have a UserService to interact with users

    @GetMapping("/blog")
    public String showBlog(Model model) {
        List<Post> posts = postService.getAllPosts();
        model.addAttribute("posts", posts);
        return "blog";
    }

    @GetMapping("/post/{postId}")
    public String showPost(@PathVariable long postId, Model model) {
        Post post = postService.getPostById(postId);
        model.addAttribute("post", post);
        return "post";
    }
}

