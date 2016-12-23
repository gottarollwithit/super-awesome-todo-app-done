package com.gottarollwithit.todo.controller;

import com.gottarollwithit.todo.model.Session;
import com.gottarollwithit.todo.model.TodoItem;
import com.gottarollwithit.todo.service.TodoItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {

    private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);

    private final TodoItemService todoItemService;

    @Autowired
    public HomeController(TodoItemService todoItemService) {
        this.todoItemService = todoItemService;
    }

    @RequestMapping(value = {"/", "/index"})
    public String getHomePage(Model model) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            List<TodoItem> todoItems = todoItemService.getTodaysList(((Session) authentication.getPrincipal()).getAccount());
            model.addAttribute("todayList", todoItems);
        }
        LOGGER.debug("Getting home page");
        return "home";
    }

}
