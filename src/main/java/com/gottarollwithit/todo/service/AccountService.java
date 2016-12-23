package com.gottarollwithit.todo.service;

import com.gottarollwithit.todo.model.Account;
import com.gottarollwithit.todo.model.RegistrationForm;

import java.util.Collection;
import java.util.Optional;

public interface AccountService {

    Account getAccountById(long id);

    Account getAccountByUsername(String username);

    Collection<Account> getAllUsers();

    Account create(RegistrationForm form);

    Optional<Account> getAccountByUsernameOrEmail(String username, String email);

}
