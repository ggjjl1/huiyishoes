package com.soften.store.service;

import com.soften.store.model.Article;

import java.util.List;

public interface ArticleService {
    int addArticle(Article article);

    int removeArticle(int id);

    List<Article> getAllArticle();

    List<Article> getArticles(int pageNum, int pageSize);

    Article findArticleById(int id);

    int updateByTitle(Article article);

    Article findByTitle(String title);
}
