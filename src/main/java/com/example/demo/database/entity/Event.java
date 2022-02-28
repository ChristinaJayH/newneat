package com.example.demo.database.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

    @Getter
    @Setter
    @Entity
    @Table(name = "event")
    public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "event_name")
    private String event_name;

    @Column(name = "event_date")
    private String event_date;

    @Column(name = "user_id")
    private Integer user_id;

    @Column(name = "category")
    private String category;
}
