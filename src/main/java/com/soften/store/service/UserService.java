package com.soften.store.service;

import com.soften.store.model.User;

import java.util.List;

public interface UserService {

    int removeUser(int id);

    User findUserById(int id);

    User findUserByUsername(String username);

    List<User> getAll();

    User userLoigin(User user);

    int userRegister(User user);
}
