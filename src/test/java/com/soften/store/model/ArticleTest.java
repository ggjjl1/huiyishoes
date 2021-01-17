package com.soften.store.model;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/application-context.xml"})
@WebAppConfiguration
public class ArticleTest {

    @Test
    public void getTitle() {
    }

    @Test
    public void setTitle() {
    }

    @Test
    public void getContent() {
    }

    @Test
    public void setContent() {
    }
}