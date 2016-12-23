package com.gottarollwithit.todo.repository;

import com.gottarollwithit.todo.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface AccountRepository extends JpaRepository<Account, Long> {

    Account findByUsername(String username);

    Optional<Account> findByUsernameOrEmail(String username, String email);
}
