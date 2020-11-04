package com.soften.store.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/applicationContext.xml"})
@WebAppConfiguration
public class ArticleMapperTest {

    @Autowired
    ArticleMapper articleMapper;

    @Test
    public void insert() {
//        Article article = new Article();
//        article.setTitle("第一篇文章");
//        article.setContent("你好，这是第一篇文章。");
//        article.setTags("测试;默认");
//        article.setCreateTime(new Date());
//        article.setUpdateTime(new Date());
//        int id = articleMapper.insert(article);
//        assertEquals(id, 1);
    }
}