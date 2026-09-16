package com.pocotech.aidd.task;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TaskRepository extends JpaRepository<Task, UUID> {

    List<Task> findAllByOwnerSubOrderByCreatedAtDesc(String ownerSub);

    Optional<Task> findByIdAndOwnerSub(UUID id, String ownerSub);
}
