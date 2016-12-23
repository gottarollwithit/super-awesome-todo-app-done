package com.gottarollwithit.todo.service;

import com.gottarollwithit.todo.model.Account;
import com.gottarollwithit.todo.model.TodoItem;

import java.util.List;

public interface TodoItemService {

    List<TodoItem> getTodaysList(Account account);

    List<TodoItem> getWeeksList(Account account);

    List<TodoItem> getMonthsList(Account account);

    List<TodoItem> getAllList(Account account);

    TodoItem save(TodoItem todoItem);

    void toggleDone(Long id, boolean done);

    void delete(Long id);
}
