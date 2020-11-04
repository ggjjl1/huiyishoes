package com.soften.store.controller;

import com.soften.store.model.Article;
import com.soften.store.service.ArticleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {

    @Resource
    private ArticleService articleService;

    @RequestMapping(value = "/")
    public String index(Model model) {
        List<Article> articleList = articleService.getAllArticle();
        model.addAttribute("articles", articleList);
        return "index";
    }

    @RequestMapping("/corp")
    public String corp() {
        return "corp";
    }
}
