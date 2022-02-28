package com.example.demo.controllers;
import com.example.demo.database.dao.UserDAO;
import com.example.demo.database.entity.User;
import com.example.demo.database.form.RegisterFormBean;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;


import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/registration-url-path")
public class RegistrationController {

    public static final Logger LOG = LoggerFactory.getLogger(RegistrationController.class);

    @Autowired
    private UserDAO userDao;

    @RequestMapping(value = "/userList", method = RequestMethod.GET)
    public ModelAndView userList(@RequestParam(required = false) String search, @RequestParam(required = false) String firstName,
                                 @RequestParam(required = false) String lastName) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("registration/userList");

        if ( ! StringUtils.isEmpty(search)) {
            List<User> users = userDao.findByFirstNameContainingIgnoreCaseOrLastNameContainingIgnoreCase(search,search);
            response.addObject("userListKey", users);
            response.addObject("searchInput", search);
        }

        if ( !StringUtils.isEmpty(firstName) && ! StringUtils.isEmpty(lastName)) {
            List<User> users = userDao.findByFirstNameContainingIgnoreCaseAndLastNameContainingIgnoreCase(firstName,lastName);
            response.addObject("userListKey", users);
        }
        return response;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView register(@RequestParam(required = false) Integer id ) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("registration/register");

        if ( id != null ) {
            // id has been passed to this form so it is an edit
            User user = userDao.findById(id);

            // populate the form bean with the data loaded from the database
            RegisterFormBean form = new RegisterFormBean();
            form.setEmail(user.getEmail());
            form.setFirstName(user.getFirstName());
            form.setLastName(user.getLastName());
            form.setUsername(user.getUsername());
            form.setPassword(user.getPassword());
            form.setConfirmPassword(user.getPassword());
            // since we loaded this from the database we know the id field
            form.setId(user.getId());

            response.addObject("formBeanKey", form);
        } else {
            // an id has not been passed so it is a create
            // there is no data from the database so give an empty form bean
            RegisterFormBean form = new RegisterFormBean();
            response.addObject("formBeanKey", form);
        }

        return response;
    }

    @RequestMapping(value = "/registerSubmit", method = { RequestMethod.POST, RequestMethod.GET })
    public ModelAndView registerSubmit(@Valid RegisterFormBean form, BindingResult errors) throws Exception {
        ModelAndView response = new ModelAndView();

        System.out.println(form);

        if (errors.hasErrors()) {
            for ( FieldError error : errors.getFieldErrors() ) {
                // add the error message to the errorMessages list in the form bean
                form.getErrorMessages().add(error.getDefaultMessage());
                LOG.debug("error field = " + error.getField() + " message = " + error.getDefaultMessage());
            }

            response.addObject("formBeanKey", form);
            response.setViewName("registration/register");

        } else {
            User user;

            if ( form.getId() == null ) {
                user  = new User();
            } else {
                user = userDao.findById(form.getId());
            }

            user.setEmail(form.getEmail());
            user.setFirstName(form.getFirstName());
            user.setLastName(form.getLastName());
            user.setPassword(form.getPassword());
            user.setUsername(form.getUsername());

            userDao.save(user);
            response.setViewName("registration/register");
        }

        return response;
    }

    @RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam Integer id ) throws Exception {
        ModelAndView response = new ModelAndView();

        response.setViewName("redirect:/registration-url-path/userList");

        User delete = userDao.findById(id);
        if ( delete != null ) {
            userDao.delete(delete);
        }

        return response;
    }
}
