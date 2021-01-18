package com.soften.store.service.impl;

import com.soften.store.mapper.ArticleMapper;
import com.soften.store.model.Article;
import com.soften.store.service.ArticleService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    ArticleMapper articleMapper;

    @Override
    public int addArticle(Article article) {
        Date now = new Date();
        if (StringUtils.isEmpty(article.getTags())) {
            article.setTags("默认");
        }
        article.setCreateTime(now);
        article.setUpdateTime(now);
        return articleMapper.insert(article);
    }

    @Override
    public int removeArticle(int id) {
        return articleMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<Article> getAllArticle() {
        return articleMapper.selectAll();
    }

    @Override
    public Article findArticleById(int id) {
        return articleMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByTitle(Article article) {
        return articleMapper.updateByTitle(article);
    }

    @Override
    public Article findByTitle(String title) {
        return articleMapper.findByTitle(title);
    }
}
