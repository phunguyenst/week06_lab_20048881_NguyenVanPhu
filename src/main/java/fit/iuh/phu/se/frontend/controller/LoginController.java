package fit.iuh.phu.se.frontend.controller;

import fit.iuh.phu.se.backend.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    @Autowired
    private UserServices userService;

    @RequestMapping("/login")
    public String showLoginForm() {
        return "login"; // Tên của trang login (login.jsp hoặc login.html)
    }

    @PostMapping("/login")
    public String login(Model model, String email, String password) {
        // Kiểm tra thông tin đăng nhập trong cơ sở dữ liệu
        boolean isValidUser = userService.authenticateUser(email, password);

        if (isValidUser) {
            // Nếu thông tin đăng nhập hợp lệ, bạn có thể chuyển hướng đến trang chính hoặc làm bất kỳ điều gì bạn muốn
            return "redirect:/blog";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";
        }
    }
}
