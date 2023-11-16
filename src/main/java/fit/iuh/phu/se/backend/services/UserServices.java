package fit.iuh.phu.se.backend.services;

import fit.iuh.phu.se.backend.entities.User;
import fit.iuh.phu.se.backend.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServices {
    @Autowired
    private UserRepository userRepository;

    public User getUserById(long userId) {
        return userRepository.findById(userId).orElse(null);
    }

    public boolean authenticateUser(String email, String password) {

        User user = userRepository.findByEmail(email);

        if (user != null) {

            return user.getPasswordHash().equals(password);
        }

        return false;
    }

}
