package com.soften.store.controller;

import com.soften.store.model.User;
import com.soften.store.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("")
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin(Model model) {
        model.addAttribute(new User());
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(HttpServletRequest request, HttpServletResponse response, @Valid User user, Errors errors) {

        if (errors.hasErrors()) {
            return "login";
        }

        String username = user.getUsername();
        String password = user.getPassword();
        System.out.println("用户名：" + username);
        System.out.println("密码：" + password);

        User rsObj = null;

        if (username != null) {
            rsObj = userService.userLoigin(user);
        }

        if (rsObj == null) {
            System.out.println("用户名或密码错误！");
        } else {
            System.out.println("登录成功！");
            HttpSession session = request.getSession(true);
            session.setAttribute("user", rsObj);
        }

        return "redirect:/";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
        request.getSession().removeAttribute("user");
        return "redirect:/";
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

        String username = user.getUsername();
        String password = user.getPassword();
        String email = user.getEmail();
        System.out.println("用户名: " + username);
        System.out.println("密码: " + password);
        System.out.println("邮箱: " + email);

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
