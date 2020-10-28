package com.soften.store.controller;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soften.store.service.UserService;

@Controller
@RequestMapping("/")
public class HomeController {

    @Resource
    private UserService userService;

    @RequestMapping(value = {"/", "/home"})
    public String home() {
        return "home";
    }
    
    /**
     * 测试从客户端读取所有cookie
     * @param request
     * @param response
     */
    @RequestMapping("/testCookie")
    public void testCookie(HttpServletRequest request, HttpServletResponse response) {
    	
    	// 获得一个cookie数组
    	Cookie[] cookies = request.getCookies();
    	if(cookies == null) {
    		System.out.println("没有get到cookie信息");
    	} else {
    		for(Cookie cookie: cookies) {
    			System.out.println(cookie);
    			System.out.println("name: " + cookie.getName() + ", value: " + cookie.getValue());
    		}
    	}
    }
    
    /**
     * 测试往客户端添加cookie，有效时间60秒
     * @param request
     * @param response
     * @param name
     * @param value
     */
    @RequestMapping("/addCookie")
    public void addCookie(HttpServletRequest request, HttpServletResponse response, String name, String value) {
    	Cookie cookie = new Cookie(name.trim(), value.trim());
    	// 设置cookie有效时间60秒
    	cookie.setMaxAge(60);
    	cookie.setPath("/");
    	response.addCookie(cookie);
    }
}
