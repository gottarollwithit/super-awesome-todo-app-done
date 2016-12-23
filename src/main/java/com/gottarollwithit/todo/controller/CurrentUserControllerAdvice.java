package com.gottarollwithit.todo.controller;

import com.gottarollwithit.todo.model.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class CurrentUserControllerAdvice {

    private static final Logger LOGGER = LoggerFactory.getLogger(CurrentUserControllerAdvice.class);

    @ModelAttribute("currentUser")
    public Session getCurrentUser(Authentication authentication) {
        LOGGER.debug("Getting current user");
        return (authentication == null) ? null : (Session) authentication.getPrincipal();
    }


}
