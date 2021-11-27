package service;

import model.User;

import java.util.List;

public interface UserService {

    User createNewUser(String username, String firstName, String lastName, String password);

    List<User> getAllUsers();

    User getUserByUsername(String username);

    boolean deleteAccount(String username);
}