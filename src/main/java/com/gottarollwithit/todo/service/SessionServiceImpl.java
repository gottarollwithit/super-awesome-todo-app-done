package com.gottarollwithit.todo.service;

import com.gottarollwithit.todo.model.Account;
import com.gottarollwithit.todo.model.RoleEnum;
import com.gottarollwithit.todo.model.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class SessionServiceImpl implements SessionService, UserDetailsService {

    private static final Logger LOGGER = LoggerFactory.getLogger(SessionService.class);

    private final AccountService accountService;

    @Autowired
    public SessionServiceImpl(AccountService accountService) {
        this.accountService = accountService;
    }

    @Override
    public boolean canAccessUser(Session session, Long userId) {
        LOGGER.debug("Checking if user={} has access to user={}", session, userId);
        return session != null
                && (session.getRole() == RoleEnum.ADMIN || session.getId().equals(userId));
    }

    @Override
    public Session loadUserByUsername(String username) throws UsernameNotFoundException {
        LOGGER.debug("Authenticating user with username={}", username);
        Account account = accountService.getAccountByUsername(username);
        return new Session(account);
    }

}
