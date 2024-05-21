package com.soften.store.controller;

import com.soften.store.model.Article;
import com.soften.store.service.ArticleService;
import com.soften.store.util.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class HomeController {

    @Resource
    private ArticleService articleService;

    @RequestMapping(value = "/")
    public String index(Model model) {
        List<Article> articleList = articleService.getAllArticle();
        if (articleList.size() < 5) {
            model.addAttribute("articles", articleList);
        } else {
            model.addAttribute("articles", articleList.subList(0, 5));
        }
        return "index";
    }

    @RequestMapping(value = "/articleList")
    public String news(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int pageNum) {
        // 文章列表
        List<Article> articleList = articleService.getAllArticle();
        int count = articleList.size();
        int pages = count % PageUtil.defaultPageSize == 0 ? count / PageUtil.defaultPageSize : count / PageUtil.defaultPageSize + 1;
        int currentPageNum = pageNum <= 1 ? 1 : (pageNum > pages ? pages : pageNum);
        int start = (currentPageNum - 1) * PageUtil.defaultPageSize;
        int end = Math.min(currentPageNum * PageUtil.defaultPageSize, count);
        model.addAttribute("articles", articleList.subList(start, end));
        // 分页页码
        Map<Integer, Integer> paginator = new HashMap<>();
        int left = 0, right = 0;
        if (Math.abs(currentPageNum - 1) < 2 || Math.abs(currentPageNum - pages) < 2) {
            if (Math.abs(currentPageNum - 1) < 2) {
                left = 1;
                right = Math.min(pages, 5);
            } else {
                right = pages;
                left = Math.max(pages - 4, 1);
            }
        } else {
            left = currentPageNum - 2;
            right = currentPageNum + 2;
        }
        for (int i = left; i <= right; i++) {
            if (i == currentPageNum) {
                paginator.put(i, 1);
            } else {
                paginator.put(i, 0);
            }
        }
        model.addAttribute("paginator", paginator);
        return "article_list";
    }

    @RequestMapping("/about")
    public String about() {
        return "about";
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
        return "storelocator";
    }
}
