create database if not exists `huiyishoes`;
use `huiyishoes`;

-- 用户表
create table if not exists `user` (
    `id` int(11) not null auto_increment,
    `email` varchar(100) not null,
    `username` varchar(100) not null,
    `password` varchar(50) not null,
    `create_time` int(11) not null,
    `update_time` datetime not null,
    primary key (`id`),
    unique key `username` (`username`)
) engine=innodb default charset=utf8;

-- 文章表
create table if not exists `article` (
    id int(11) not null auto_increment,
    title varchar(300) not null,
    content text not null,
    tags varchar(200) not null,
    `create_time` datetime not null,
    `update_time` datetime not null,
    primary key (`id`) 
) engine=innodb default charset=utf8;