package com.soften.store;

import java.util.regex.Pattern;

public class HuiyiShoesConstants {

    /**
     * 网站基础配置参数
     */
    public static final String BASE_URL = "huiyishoes";

    /**
     * 邮箱格式
     */
    public static final String REG_EMAIL_FORMAT = "^[a-z_0-9.-]{1,64}@([a-z0-9-]{1,200}.){1,5}[a-z]{1,6}$";
    public static final Pattern PATTERN_EMAIL_FORMAT = Pattern.compile(HuiyiShoesConstants.REG_EMAIL_FORMAT);
}
