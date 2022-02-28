package com.example.demo.dependencyinjection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class Manager {


    @Autowired
    private Worker1 worker1;

    @Autowired
    private Worker2 worker2;

    @Autowired
    private Worker3 worker3;

    // this is the same way of doing it as the @Autowired Worker3 above
    // this is more prevalent in test driven design applications
//    @Autowired
//    public void setFooFormatter(Worker3 w3) {
//        this.worker3 = w3;
//    }

    public Manager( ) {
        System.out.println("I am in the manager constructor");
        // this executes before autowired
        // these lines of code will fail due to spring has not yet autowired the variables
        // it is not good practice to use a constructor with spring component for this reason
        //worker1.doWork();
        //worker2.doWork();
        //worker3.doWork();
    }

    @PostConstruct
    public void init() {
        worker1.doWork();
        worker2.doWork();
        worker3.doWork();
    }

}