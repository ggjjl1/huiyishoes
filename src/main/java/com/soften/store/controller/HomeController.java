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

    @RequestMapping("homewithtime")
    public ModelAndView testModelAndView() {
        ModelAndView modelAndView = new ModelAndView("home");
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
    public String login( User user, Errors errors) {

        if(errors.hasErrors()) {
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

    @RequestMapping(value="/register", method = RequestMethod.GET)
    public String showRegister(Model model) {
        model.addAttribute(new User());
        return "register";
    }

    @RequestMapping(value="/register", method = RequestMethod.POST)
    public String register( User user, Errors errors) {

        String errMsg = null;

        if(StringUtils.isBlank(user.getEmail())){
            errMsg = "邮箱为空";
        }
        if(StringUtils.isBlank(user.getUsername())){
            errMsg = "用户名为空";
        }
        if(StringUtils.isBlank(user.getPassword())){
            errMsg = "密码为空";
        }

        if(errors.hasErrors()) {
            return "register";
        }

//        try {
//            userService.userRegister(user);
//        }catch (Exception e) {
//            e.printStackTrace();
//        }

        return "redirect:/register";
    }

}
