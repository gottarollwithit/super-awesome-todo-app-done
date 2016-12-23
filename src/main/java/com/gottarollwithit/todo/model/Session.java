package com.gottarollwithit.todo.model;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

public class Session extends User {

    private Account account;

    public Session(Account account) {
        super(account.getEmail(), account.getPassword(), AuthorityUtils.createAuthorityList(account.getRoleEnum().toString()));
        this.account = account;
    }

    public Account getAccount() {
        return account;
    }

    public Long getId() {
        return account.getId();
    }

    public RoleEnum getRole() {
        return account.getRoleEnum();
    }

    @Override
    public String toString() {
        return account.toString();
    }
}
