package com.victor.gtask.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.Data;

@Document
@Data
public class Task {
    @Id
    private String id;
    private String title;
    private String description;
    private boolean completed;

}