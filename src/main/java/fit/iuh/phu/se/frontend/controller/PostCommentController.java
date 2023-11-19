package fit.iuh.phu.se.frontend.controller;

import fit.iuh.phu.se.backend.entities.Post;
import fit.iuh.phu.se.backend.entities.PostComment;
import fit.iuh.phu.se.backend.entities.User;
import fit.iuh.phu.se.backend.repositories.PostCommentRepository;
import fit.iuh.phu.se.backend.services.PostServices;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller

public class PostCommentController {

    @Autowired
    private PostCommentRepository postCommentRepository;

    @Autowired
    private PostServices postServices;
    @GetMapping("/showpost/{id}")
    public String showPost(@PathVariable("id") Long postId, Model model, HttpSession session) {
        List<PostComment> postCommentList = postCommentRepository.findAllByPostId(postId);



        Post post = postServices.getPostById(postId);
        model.addAttribute("post", post);
        model.addAttribute("postCommentList", postCommentList);
        User user = (User) session.getAttribute("user");
        model.addAttribute("user", user);
        return "post";
    }




}
