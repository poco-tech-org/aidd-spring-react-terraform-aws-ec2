package com.pocotech.aidd.task;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

import java.util.List;
import java.util.UUID;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class TaskServiceTest {

    @Mock
    private TaskRepository taskRepository;

    @InjectMocks
    private TaskService taskService;

    @Test
    void findAllReturnsOnlyTasksForTheRequestedOwner() {
        Task task = new Task("user-1", "first task", "description", TaskStatus.TODO);
        when(taskRepository.findAllByOwnerSubOrderByCreatedAtDesc("user-1"))
                .thenReturn(List.of(task));

        List<TaskResponse> result = taskService.findAll("user-1");

        assertThat(result).hasSize(1);
        assertThat(result.getFirst().title()).isEqualTo("first task");
    }

    @Test
    void createUsesTodoAsTheInitialStatus() {
        Task saved = new Task("user-1", "new task", null, TaskStatus.TODO);
        when(taskRepository.save(any(Task.class))).thenReturn(saved);

        TaskResponse result = taskService.create("user-1", new CreateTaskRequest("new task", null));

        assertThat(result.status()).isEqualTo(TaskStatus.TODO);
    }
}
