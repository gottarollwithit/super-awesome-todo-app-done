package com.gottarollwithit.todo.model;

import com.gottarollwithit.todo.utility.Match;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;
import java.time.LocalDate;

@Match(first = "password", second = "passwordRepeated", message = "Passwords should match")
public class RegistrationForm {

    @Email(message = "Not a valid e-mail adress")
    private String email = "";

    @Size(min = 3, max = 20, message = "Username should be between 3-20 characters")
    private String username = "";

    @Size(min = 6, max = 20, message = "Password should be between 6-20 characters")
    private String password = "";

    @NotEmpty
    private String passwordRepeated = "";

    private String firstName;

    private String lastName;

    private LocalDate dateOfBirth;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordRepeated() {
        return passwordRepeated;
    }

    public void setPasswordRepeated(String passwordRepeated) {
        this.passwordRepeated = passwordRepeated;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
}
