package com.soften.store.controller;

import com.soften.store.model.Article;
import com.soften.store.model.User;
import com.soften.store.service.ArticleService;
import com.soften.store.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.method.support.HandlerMethodReturnValueHandler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class ArticleController {

    @Resource
    ArticleService articleService;

    @Resource
    UserService userService;

    @RequestMapping("/post")
    public String showPost(Model model) {
        model.addAttribute(new Article());
        return "post";
    }

    @RequestMapping(value = "/post", method = RequestMethod.POST)
    public String post(HttpServletRequest request, @RequestParam Map<String, String> param) {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            System.out.println("用户未登录，请登录后再发表文章！");
            return "redirect:/login";
        }

        String title = param.get("title");
        String body = param.get("content");
        System.out.println("标题：" + title + ", 内容：" + body);

        Article article = articleService.findByTitle(title);

        if (article == null) {
            article = new Article(title, body);
            article.setUserId(user.getId());

            if (valid(article).equals("")) {
                System.out.println("验证通过，插入文章到数据库");
                articleService.addArticle(article);
            }
        } else {
            article.setContent(body);
            article.setUpdateTime(new Date());
            articleService.updateByTitle(article);
            System.out.println("更新文章内容");
        }


        return "redirect:/post";
    }

    @RequestMapping("/article/{id}")
    public String showArticle(Model model, @PathVariable int id) {
        Article article = articleService.findArticleById(id);
        User user = userService.findUserById(article.getUserId());

        model.addAttribute("article", article);
        model.addAttribute("user", user);

        return "article";
    }

    @RequestMapping("/getAllArticle")
    @ResponseBody
    public List<Article> showAllArticle(@RequestParam Map<String, Object> map) {
        List<Article> result = new ArrayList<>();
        result = articleService.getAllArticle();
        return result;
    }

    @RequestMapping("/update")
    public String update(Model model, @RequestParam Integer id) {
        Article article = articleService.findArticleById(id);
        model.addAttribute("article", article);
        return "update";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam Integer id) {
        articleService.removeArticle(id);

        return "redirect:/post";
    }

    public String valid(Article article) {
        String errMsg = "";
        if (StringUtils.isBlank(article.getTitle())) {
            errMsg = "标题为空";
        }
        if (StringUtils.isBlank(article.getContent())) {
            errMsg = "文章内容为空";
        }

        return errMsg;
    }
}
