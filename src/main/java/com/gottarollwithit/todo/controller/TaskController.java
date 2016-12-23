package com.gottarollwithit.todo.controller;

import com.gottarollwithit.todo.model.PriorityEnum;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class TaskController {

    private static final Logger LOGGER = LoggerFactory.getLogger(TaskController.class);

    private final TodoItemService todoItemService;

    @Autowired
    public TaskController(TodoItemService todoItemService) {
        this.todoItemService = todoItemService;
    }

    @RequestMapping("/tasks")
    public String getAll(Model model) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        List<TodoItem> allList = todoItemService.getAllList(((Session) authentication.getPrincipal()).getAccount());
        LocalDateTime startTime = LocalDate.now().atStartOfDay();
        List<TodoItem> monthList = allList.stream().filter(todoItem -> todoItem.getDueTime() != null && todoItem.getDueTime().isAfter(startTime) && todoItem.getDueTime().isBefore(startTime.plusMonths(1))).collect(Collectors.toList());
        List<TodoItem> weekList = allList.stream().filter(todoItem -> todoItem.getDueTime() != null && todoItem.getDueTime().isAfter(startTime) && todoItem.getDueTime().isBefore(startTime.plusWeeks(1))).collect(Collectors.toList());
        List<TodoItem> timelessList = allList.stream().filter(todoItem -> todoItem.getDueTime() == null).collect(Collectors.toList());
        model.addAttribute("allList", allList);
        model.addAttribute("monthList", monthList);
        model.addAttribute("weekList", weekList);
        model.addAttribute("timelessList", timelessList);

        LOGGER.debug("Getting tasks page");
        return "tasks";
    }

    @RequestMapping(value = "/todoadd", method = RequestMethod.POST)
    public String todoAdd(@RequestParam("task") String task,
                          @RequestParam("time") String time,
                          @RequestParam("priority") String priority) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            TodoItem todoItem = new TodoItem();
            todoItem.setAccount(((Session) authentication.getPrincipal()).getAccount());
            todoItem.setDetails(task);
            todoItem.setPriority(PriorityEnum.valueOf(priority));
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
            todoItem.setDueTime(LocalDateTime.parse(time, formatter));
            todoItemService.save(todoItem);
        }
        return "redirect:/index";
    }

    @RequestMapping(value = "/toggleDone")
    public String toggleDone(@RequestParam("todoItemId") Long todoItemId,
                             @RequestParam("done") boolean done,
                             @RequestParam(value = "redirect", required = false, defaultValue = "/index") String redirectUrl) {
        todoItemService.toggleDone(todoItemId, done);
        return "redirect:" + redirectUrl;
    }

    @RequestMapping(value = "/delete")
    public String toggleDone(@RequestParam("todoItemId") Long todoItemId,
                             @RequestParam(value = "redirect", required = false, defaultValue = "/index") String redirectUrl) {
        todoItemService.delete(todoItemId);
        return "redirect:" + redirectUrl;
    }

}
