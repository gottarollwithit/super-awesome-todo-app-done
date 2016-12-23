package com.gottarollwithit.todo.service;

import com.gottarollwithit.todo.model.Session;

public interface SessionService {

    boolean canAccessUser(Session session, Long userId);

}
