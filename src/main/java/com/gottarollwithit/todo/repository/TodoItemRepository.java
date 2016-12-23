package com.gottarollwithit.todo.repository;

import com.gottarollwithit.todo.model.Account;
import com.gottarollwithit.todo.model.TodoItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.List;

public interface TodoItemRepository extends JpaRepository<TodoItem, Long> {

    List<TodoItem> findByAccountAndDueTimeBetweenOrderByDueTimeDesc(Account account, LocalDateTime startTime, LocalDateTime endTime);

    List<TodoItem> findByAccount(Account account);

    @Modifying
    @Transactional
    @Query("UPDATE TodoItem todoItem set todoItem.done = :done where todoItem.id = :id")
    void toggleDone(@Param("id") Long id, @Param("done") boolean done);
}
