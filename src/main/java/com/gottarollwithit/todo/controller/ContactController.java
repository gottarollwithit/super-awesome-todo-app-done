package com.gottarollwithit.todo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContactController {

    private static final Logger LOGGER = LoggerFactory.getLogger(ContactController.class);

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String getContactPage() {
        LOGGER.debug("getting contact page");
        return "contact";
    }

}
