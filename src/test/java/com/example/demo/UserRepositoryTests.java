//package com.example.demo;
//import static org.assertj.core.api.Assertions.assertThat;
//
//import com.example.demo.database.dao.UserDAO;
//import com.example.demo.database.entity.User;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
//import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
//import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
//import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
//import org.springframework.test.annotation.Rollback;
//
//@DataJpaTest
//@AutoConfigureTestDatabase(replace = Replace.NONE)
//@Rollback(false)
//public class UserRepositoryTests {
//
//    @Autowired
//    private TestEntityManager entityManager;
//
//    @Autowired
//    private UserDAO repo;
//
//    @Test
//    public void testCreateUser() {
//        User user = new User();
//
//        user.setId(3);
//        user.setUsername("Testing123");
//        user.setFirstName("Ravi");
//        user.setLastName("Kumar");
//        user.setEmail("ravikumar@gmail.com");
//        user.setPhone("877-777-9090");
//        user.setPassword("ravi2020");
//        User savedUser = repo.save(user);
//
//        User existUser = entityManager.find(User.class, savedUser.getId());
//
//        assertThat(user.getEmail()).isEqualTo(existUser.getEmail());
//
//    }
//}
