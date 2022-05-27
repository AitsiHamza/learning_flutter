package ma.enset.api_springboot_flutter.controllers;

import lombok.AllArgsConstructor;
import ma.enset.api_springboot_flutter.dtos.UserDTO;
import ma.enset.api_springboot_flutter.services.UserService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/v1/users")
@CrossOrigin("*")
@AllArgsConstructor
public class UserController {
    private UserService userService;

    @GetMapping("/all")
    public List<UserDTO> getAllUsers() {
        return userService.allUsers();
    }

}
