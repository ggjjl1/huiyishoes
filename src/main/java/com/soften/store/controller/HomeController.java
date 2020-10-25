package com.soften.store.controller;

import com.soften.store.model.User;
import com.soften.store.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("/")
public class HomeController {

    @Resource
    private UserService userService;

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/testServletAPI")
    public String testServletAPI(HttpServletRequest request, HttpServletResponse response) {
//    	System.out.println("request: " + request.toString() + ", response: " + response.toString());
        System.out.println(request.getSession().toString());
        return "home";
    }

    @RequestMapping("/time")
    public ModelAndView testModelAndView() {
        // 不管返回类型是什么，String, Map, 还是其他，Spring都会转换成ModelAndView
        ModelAndView modelAndView = new ModelAndView("time");
        modelAndView.addObject("time", new Date());

        return modelAndView;
    }

    @RequestMapping("article/{id}")
    public String showArticle(@PathVariable("id") Integer id) {
        System.out.println("show article：" + id);
        return "article";
    }

    @RequestMapping("user/{id}")
    public String showUser(@PathVariable("id") Integer id) {
        User user = userService.findUserById(id);
        System.out.println("user id: " + id);
        System.out.println(user.toString());
        return "home";
    }

    @RequestMapping("getUser.json")
    @ResponseBody
    public User getUser(@RequestParam("id") int id) {
        User user = userService.findUserById(id);
        System.out.println(user);
        return user;
    }

    @RequestMapping("getAllUser")
    public String getAllUser(Map<String, Object> map) {
        TestStaticMethod.hello();
        ;
        map.put("users", userService.getAll());
        return "user";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin(Model model) {
        model.addAttribute(new User());
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(User user, Errors errors) {

        if (errors.hasErrors()) {
            return "login";
        }

        String username = user.getUsername();
        String password = user.getPassword();
        System.out.println("用户名：" + username);
        System.out.println("密码：" + password);

        if (username != null) {
            User rsObj = userService.userLoigin(user);

        }

        return "redirect:/login";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegister(Model model) {
        model.addAttribute(new User());
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@Valid User user, Errors errors, Model model) {

        if (errors.hasErrors()) {
            model.addAttribute("user", user);
            return "register";
        }

        try {
            userService.userRegister(user);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/register";
    }

    public String valid(User user) {
        String errMsg = "";

        if (StringUtils.isBlank(user.getEmail())) {
            errMsg = "邮箱为空";
        }
        if (StringUtils.isBlank(user.getUsername())) {
            errMsg = "用户名为空";
        }
        if (StringUtils.isBlank(user.getPassword())) {
            errMsg = "密码为空";
        }

        return errMsg;
    }

}
