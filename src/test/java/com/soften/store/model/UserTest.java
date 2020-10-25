package com.soften.store.model;

import com.soften.store.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserTest {

    private UserService userService;

    @Before
    public void before() {
        @SuppressWarnings("resource")
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/springmvc-dispatcher-servlet.xml");
        userService = (UserService) context.getBean("userServiceImpl");
    }

    @Test
    public void addUser() {
        User user = new User();
        user.setUsername("jack");
        user.setEmail("jack@huiyishoes.com");
        user.setPassword("123456");
    }

}