package ma.enset.api_springboot_flutter;

import ma.enset.api_springboot_flutter.dtos.UserDTO;
import ma.enset.api_springboot_flutter.entities.User;
import ma.enset.api_springboot_flutter.services.UserService;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.UUID;
import java.util.stream.Stream;

@SpringBootApplication
public class ApiSpringbootFlutterApplication {

    public static void main(String[] args) {
        SpringApplication.run(ApiSpringbootFlutterApplication.class, args);
    }

    @Bean
    CommandLineRunner start(UserService userService){
        return args -> {
            Stream.of("hamza1", "meriem1", "amine1", "houda1","hamza1", "meriem1", "amine1", "houda1","hamza1", "meriem1", "amine1", "houda1","hamza1", "meriem1", "amine1", "houda1")
                    .forEach(name -> {
                        UserDTO userDTO=new UserDTO();
                        userDTO.setId(UUID.randomUUID().toString());
                        userDTO.setNom(name+" "+RandomStringUtils.randomAlphabetic(5));
                        userService.saveUser(userDTO);
                    });
        };
    }

}
