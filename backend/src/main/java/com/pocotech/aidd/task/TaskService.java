package com.pocotech.aidd.task;

import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TaskService {

    private final TaskRepository taskRepository;

    public TaskService(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    @Transactional(readOnly = true)
    public List<TaskResponse> findAll(String ownerSub) {
        return taskRepository.findAllByOwnerSubOrderByCreatedAtDesc(ownerSub)
                .stream()
                .map(TaskResponse::from)
                .toList();
    }

    @Transactional
    public TaskResponse create(String ownerSub, CreateTaskRequest request) {
        Task task = new Task(ownerSub, request.title(), request.description(), TaskStatus.TODO);
        return TaskResponse.from(taskRepository.save(task));
    }

    @Transactional
    public TaskResponse update(String ownerSub, UUID id, UpdateTaskRequest request) {
        Task task = taskRepository.findByIdAndOwnerSub(id, ownerSub)
                .orElseThrow(() -> new TaskNotFoundException(id));
        task.update(request.title(), request.description(), request.status());
        return TaskResponse.from(task);
    }

    @Transactional
    public void delete(String ownerSub, UUID id) {
        Task task = taskRepository.findByIdAndOwnerSub(id, ownerSub)
                .orElseThrow(() -> new TaskNotFoundException(id));
        taskRepository.delete(task);
    }
}
