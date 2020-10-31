package com.soften.store.service.impl;

import com.soften.store.mapper.UserMapper;
import com.soften.store.model.User;
import com.soften.store.service.UserService;
import com.soften.store.util.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> getAll() {
        return userMapper.selectAll();
    }

    @Override
    public int removeUser(int id) {
        return userMapper.deleteByPrimaryKey(id);
    }

    @Override
    public User findUserById(int id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public User findUserByUsername(String username) {
        return userMapper.selectByUsername(username);
    }

    @Override
    public User userLoigin(User user) {

        String username = user.getUsername();
        String password = user.getPassword();

        User rsObj = null;

        if (username != null) {
            rsObj = userMapper.selectByUsername(username);
        }
        if (rsObj != null) {

            if (!Md5Util.md5(password).equals(rsObj.getPassword())) {
                return null;
            }
        }
        return rsObj;
    }

    @Override
    public int userRegister(User user) {
        Date now = new Date();
        user.setPassword(Md5Util.md5(user.getPassword()));
        user.setCreateTime(now);
        user.setUpdateTime(now);
        userMapper.insert(user);
        System.out.println("userRegister: " + user.toString());
        return user.getId();
    }
}
