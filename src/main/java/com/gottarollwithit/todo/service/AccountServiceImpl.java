package com.gottarollwithit.todo.service;

import com.gottarollwithit.todo.model.Account;
import com.gottarollwithit.todo.model.RegistrationForm;
import com.gottarollwithit.todo.model.RoleEnum;
import com.gottarollwithit.todo.repository.AccountRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Optional;

@Service
public class AccountServiceImpl implements AccountService {

    private static final Logger LOGGER = LoggerFactory.getLogger(AccountServiceImpl.class);
    private final AccountRepository userRepository;

    @Autowired
    public AccountServiceImpl(AccountRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public Account getAccountById(long id) {
        LOGGER.debug("Getting user={}", id);
        return userRepository.findOne(id);
    }

    @Override
    public Account getAccountByUsername(String username) {
        LOGGER.debug("Getting user by username={}", username);
        return userRepository.findByUsername(username);
    }

    @Override
    public Collection<Account> getAllUsers() {
        LOGGER.debug("Getting all users");
        return userRepository.findAll(new Sort("email"));
    }

    @Override
    public Account create(RegistrationForm form) {
        Account account = new Account();
        account.setEmail(form.getEmail());
        account.setUsername(form.getUsername());
        account.setPassword(new BCryptPasswordEncoder().encode(form.getPassword()));
        account.setFirstName(form.getFirstName());
        account.setLastName(form.getLastName());
        account.setDateOfBirth(form.getDateOfBirth());
        return userRepository.save(account);
    }

    @Override
    public Optional<Account> getAccountByUsernameOrEmail(String username, String email) {
        return userRepository.findByUsernameOrEmail(username, email);
    }

    @PostConstruct
    public void initialize() {
//        Account admin = new Account();
//        admin.setUsername("admin");
//        admin.setEmail("admin@localhost.com");
//        admin.setPassword(new BCryptPasswordEncoder().encode("admin"));
//        admin.setFirstName("Admin");
//        admin.setLastName("Account");
//        admin.setDateOfBirth(LocalDate.of(1991, 12, 20));
//        admin.setRoleEnum(RoleEnum.ADMIN);
//        Account user = new Account();
//        user.setUsername("user");
//        user.setEmail("user@localhost.com");
//        user.setPassword(new BCryptPasswordEncoder().encode("user"));
//        user.setFirstName("User");
//        user.setLastName("Account");
//        user.setDateOfBirth(LocalDate.of(1991, 12, 20));
//        userRepository.save(Arrays.asList(admin, user));
    }
}
