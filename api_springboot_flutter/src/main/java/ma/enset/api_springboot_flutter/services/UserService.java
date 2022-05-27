package ma.enset.api_springboot_flutter.services;

import ma.enset.api_springboot_flutter.dtos.UserDTO;

import java.util.List;

public interface UserService {
    List<UserDTO> allUsers();
    UserDTO saveUser(UserDTO userDTO);
}
