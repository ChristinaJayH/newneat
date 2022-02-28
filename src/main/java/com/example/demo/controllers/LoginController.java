package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @RequestMapping(value = {"/", "login/loginpage"}, method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("login/loginpage");

        return response;
    }
//
//    @RequestMapping(value = "/login/loginsuccess", method = RequestMethod.GET)
//    public ModelAndView logoutSuccess(HttpServletRequest request, HttpSession session) throws Exception {
//        ModelAndView response = new ModelAndView();
//        response.setViewName("/login/loginsuccess");
//        return response;
//    }

}