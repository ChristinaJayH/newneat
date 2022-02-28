package com.example.demo.database.form;

import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.example.demo.validation.TwoFieldsAreEqual;

import javax.validation.constraints.*;
import java.util.ArrayList;
import java.util.List;


@Getter
@Setter
@TwoFieldsAreEqual(fieldOneName = "confirmPassword", fieldTwoName = "password", message = "Passwords must match.")
public class RegisterFormBean {


    private Integer id;

    @NotEmpty(message = "Username is required")
    private String username;

    @NotEmpty(message= "First name is required")
    private String firstName;

    @NotEmpty(message = "Last Name is required.")
    private String lastName;

    @NotEmpty(message = "Email is required.")
    @Pattern(regexp = "^.+@.+$" , message = "Invalid email format")

    private String email;

    @NotEmpty(message= "Phone is required.")
    private String phone;

    private String password;
    private String confirmPassword;

    // this list is populated by the controller with all error messages
    // in the binding result.
    private List<String> errorMessages = new ArrayList<>();



    @Override
    public String toString() {
        return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
    }

}
