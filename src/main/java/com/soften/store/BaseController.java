package com.soften.store;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by ggjjl1 on 12/25/15.
 */
@Controller
@RequestMapping("/")
public class BaseController {
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String index(ModelMap model){
        model.addAttribute("message", "hello world!");
        model.addAttribute("siteTitle", "慧怡女鞋官网");
        return "index";
    }

    @RequestMapping(value="/hello")
    public String hello(){
        return "hello";
    }
}
