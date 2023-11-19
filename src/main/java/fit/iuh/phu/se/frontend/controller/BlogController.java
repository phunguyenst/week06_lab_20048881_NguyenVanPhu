package fit.iuh.phu.se.frontend.controller;

import fit.iuh.phu.se.backend.entities.Post;
import fit.iuh.phu.se.backend.entities.PostComment;
import fit.iuh.phu.se.backend.entities.User;
import fit.iuh.phu.se.backend.repositories.PostCommentRepository;
import fit.iuh.phu.se.backend.repositories.PostRepository;
import fit.iuh.phu.se.backend.services.PostServices;
import fit.iuh.phu.se.backend.services.UserServices;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.Instant;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Controller
public class BlogController {

    @Autowired
    private PostServices postService;
    @Autowired
    private UserServices userService;

    @Autowired
    private PostRepository postRepository;
    @Autowired
    private PostCommentRepository postCommentRepository;
//    @GetMapping("/blog")
//    public String showBlog(Model model) {
//        List<Post> posts = postService.getAllPosts();
//        model.addAttribute("posts", posts);
//        return "blog";
//    }
@GetMapping("/blog")
public String showProductListPaging(
        HttpSession session,
        Model model,
        @RequestParam("page") Optional<Integer> page,
        @RequestParam("size") Optional<Integer> size) {
    int currentPage = page.orElse(1);
    int pageSize = size.orElse(6);
    Page<Post> postPage = postService.findPaginated(currentPage - 1,
            pageSize, "title", "asc");
    model.addAttribute("postPage", postPage);
    int totalPages = postPage.getTotalPages();
    if (totalPages > 0) {
        List<Integer> pageNumbers = IntStream.rangeClosed(1, totalPages)
                .boxed()
                .collect(Collectors.toList());
        model.addAttribute("pageNumbers", pageNumbers);
    }
    return "blog";
}

    @GetMapping("/post/{postId}")
    public String showPost(@PathVariable long postId, Model model) {
        Post post = postService.getPostById(postId);
        model.addAttribute("post", post);
        return "post";
    }

    @GetMapping("/createPost")
    public String showaddPost() {
        return "/addpost";
    }

    @PostMapping("/addpost")
    public String addPost(Model model, @RequestParam("title") String title, @RequestParam("summary") String summary, @RequestParam("content") String content, @RequestParam("published") Boolean published, HttpSession session) {

        User loggedInUser = (User) session.getAttribute("useronl");

        if (loggedInUser != null) {
            Post post = new Post();
            post.setAuthor(loggedInUser);
            post.setContent(content);
            post.setCreatedAt(Instant.now());
            post.setMetaTitle("Meta Title for " + loggedInUser.getFirstName());
            post.setPublished(published);
            post.setPublishedAt(Instant.now());
            post.setSummary(summary);
            post.setTitle(title);
            post.setPublishedAt(Instant.now());
            post.setPostComments(new LinkedHashSet<>());
            postRepository.save(post);

            return "redirect:/blog";
        } else {

            return "redirect:/login";
        }
    }







}

