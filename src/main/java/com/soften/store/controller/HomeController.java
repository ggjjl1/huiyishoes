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
        model.addAttribute("articles", articleList.subList(0, 5));
        return "index";
    }

    @RequestMapping(value = "/articleList")
    public String news() {
        return "article_list";
    }

    @RequestMapping("/about")
    public String about() {
        return "";
    }

    @RequestMapping("/cooperation")
    public String cooperation() {
        return "";
    }

    @RequestMapping("/navigation")
    public String navigation() {
        return "";
    }

    @RequestMapping("/contact")
    public String contact() {
        return "";
    }

    @RequestMapping("/feedback")
    public String feedback() {
        return "";
    }

    @RequestMapping("/storelocator")
    public String storelocator() {
        return "";
    }
}
