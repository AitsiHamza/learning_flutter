package ma.enset.api_springboot_flutter.services;

import lombok.AllArgsConstructor;
import ma.enset.api_springboot_flutter.dtos.UserDTO;
import ma.enset.api_springboot_flutter.entities.User;
import ma.enset.api_springboot_flutter.mappers.UserMapper;
import ma.enset.api_springboot_flutter.repositories.UserRepository;
import ma.enset.api_springboot_flutter.services.UserService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@AllArgsConstructor
@Service
public class UserServiceImpl implements UserService {
    private UserRepository userRepository;
    private UserMapper userMapper;

    @Override
    public List<UserDTO> allUsers() {
        List<User> users = userRepository.findAll();
        List<UserDTO> userDTOs = users.stream().map(u -> userMapper.fromUser(u)).collect(Collectors.toList());
        return userDTOs;
    }

    @Override
    public UserDTO saveUser(UserDTO userDTO) {
        User user=userMapper.fromUserDTO(userDTO);
        User savedUser=userRepository.save(user);
        return userMapper.fromUser(savedUser);
    }
}
