package com.victor.gtask.model.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.victor.gtask.model.Task;

public interface TaskRepository extends MongoRepository<Task, String> {

}
