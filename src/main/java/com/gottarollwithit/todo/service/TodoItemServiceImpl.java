package com.gottarollwithit.todo.service;

import com.gottarollwithit.todo.model.Account;
import com.gottarollwithit.todo.model.TodoItem;
import com.gottarollwithit.todo.repository.TodoItemRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class TodoItemServiceImpl implements TodoItemService {

    private static final Logger LOGGER = LoggerFactory.getLogger(TodoItemServiceImpl.class);

    private final TodoItemRepository todoItemRepository;

    @Autowired
    public TodoItemServiceImpl(TodoItemRepository todoItemRepository) {
        this.todoItemRepository = todoItemRepository;
    }

    @Override
    public List<TodoItem> getTodaysList(Account account) {
        LocalDateTime startTime = LocalDate.now().atStartOfDay();
        return todoItemRepository.findByAccountAndDueTimeBetweenOrderByDueTimeDesc(account, startTime, startTime.plusDays(1));
    }

    @Override
    public List<TodoItem> getWeeksList(Account account) {
        LocalDateTime startTime = LocalDate.now().atStartOfDay();
        return todoItemRepository.findByAccountAndDueTimeBetweenOrderByDueTimeDesc(account, startTime, startTime.plusWeeks(1));
    }

    @Override
    public List<TodoItem> getMonthsList(Account account) {
        LocalDateTime startTime = LocalDate.now().atStartOfDay();
        return todoItemRepository.findByAccountAndDueTimeBetweenOrderByDueTimeDesc(account, startTime, startTime.plusMonths(1));
    }

    @Override
    public List<TodoItem> getAllList(Account account) {
        return todoItemRepository.findByAccount(account);
    }

    @Override
    public TodoItem save(TodoItem todoItem) {
        return todoItemRepository.save(todoItem);
    }

    @Override
    public void toggleDone(Long id, boolean done) {
        todoItemRepository.toggleDone(id, done);
    }

    @Override
    public void delete(Long id) {
        todoItemRepository.delete(id);
    }
}
