package com.soften.store.controller;

public class TestStaticMethod {
	
	private String testString;
	
    static {
        System.out.println("静态代码只有当类被调用时才执行，并且优先于主函数执行，且只执行一次。");
        System.out.println("静态代码被执行....");
    }
    
    public String get() {
    	return testString.trim();
    }

    public static void hello() {
        String hello = new String("你好你好");
        System.out.println(hello);
        
        TestStaticMethod testStaticMethod = new TestStaticMethod();
        
    }
}
