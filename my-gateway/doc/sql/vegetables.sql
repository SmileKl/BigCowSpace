-- auto-generated definition
create table area
(
    id         int auto_increment
        primary key,
    label      varchar(255) null,
    pid        int          null,
    value      varchar(255) null,
    project_id bigint       null,
    area_id    bigint       null comment '区域id'
)
    collate = utf8mb4_unicode_ci;


-- auto-generated definition
create table book
(
    id          int auto_increment comment 'ID'
        primary key,
    name        varchar(255)   null comment '名称',
    price       decimal(10, 2) null comment '价格',
    author      varchar(255)   null comment '作者',
    create_time datetime       null comment '出版日期',
    cover       varchar(255)   null comment '封面地址',
    user_id     int            null comment '用户id',
    project_id  bigint         null
)
    collate = utf8mb4_unicode_ci;

-- auto-generated definition
create table category
(
    id         int auto_increment comment 'id'
        primary key,
    name       varchar(255) null comment '名称',
    pid        int          null comment '父节点id',
    project_id bigint       null
)
    collate = utf8mb4_unicode_ci;


-- auto-generated definition
create table message
(
    id         bigint auto_increment comment 'ID'
        primary key,
    content    text charset utf8mb4         null comment '内容',
    username   varchar(255)                 null comment '评论人',
    time       varchar(255) charset utf8mb4 null comment '评论时间',
    parent_id  bigint                       null comment '父ID',
    foreign_id bigint default 0             null comment '关联id'
)
    comment '留言表' collate = utf8mb4_unicode_ci;

-- auto-generated definition
create table news
(
    id      int auto_increment comment 'ID'
        primary key,
    title   varchar(255) null comment '标题',
    content text         null comment '内容',
    author  varchar(255) null comment '作者',
    time    datetime     null comment '发布时间'
)
    collate = utf8mb4_unicode_ci;

-- auto-generated definition
create table permission
(
    id      int auto_increment comment 'id'
        primary key,
    name    varchar(50)  null comment '名称',
    path    varchar(50)  null comment '资源路径',
    comment varchar(255) null comment '备注',
    icon    varchar(20)  null comment '图标'
)
    collate = utf8mb4_unicode_ci;

-- auto-generated definition
create table role
(
    id      int auto_increment comment 'ID'
        primary key,
    name    varchar(50)  null comment '名称',
    comment varchar(255) null comment '备注'
)
    collate = utf8mb4_unicode_ci;


-- auto-generated definition
create table role_permission
(
    role_id       int not null comment '角色id',
    permission_id int not null comment '资源id',
    primary key (role_id, permission_id)
)
    collate = utf8mb4_unicode_ci;

-- auto-generated definition
create table student_course
(
    id           int          null,
    student_name varchar(255) null,
    course       int          null
);

create table t_order
(
    id              int auto_increment comment 'id'
        primary key,
    name            varchar(255)                             null comment '名称',
    total_price     decimal(10, 2)                           null comment '总价',
    pay_price       decimal(10, 2)                           null comment '实付款',
    discount        decimal(10, 2) default 0.00              null comment '优惠金额',
    transport_price decimal(10, 2) default 0.00              null comment '运费',
    order_no        varchar(40)                              null comment '订单编号',
    user_id         int                                      null comment '用户id',
    username        varchar(255)                             null comment '用户账户',
    create_time     timestamp      default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '创建时间',
    pay_time        timestamp                                null comment '支付时间',
    state           int(1)         default 0                 not null comment '状态'
)
    collate = utf8mb4_unicode_ci;

create table user
(
    id        int auto_increment comment 'ID'
        primary key,
    username  varchar(255)                null comment '用户名',
    password  varchar(255)                null comment '密码',
    nick_name varchar(255)                null comment '昵称',
    age       int                         null comment '年龄',
    sex       varchar(255)                null comment '性别',
    address   varchar(255)                null comment '地址',
    avatar    varchar(255)                null comment '头像',
    account   decimal(10, 2) default 0.00 null comment '账户余额',
    constraint user_age_sex_uindex
        unique (age, sex)
)
    comment '用户信息表' collate = utf8mb4_unicode_ci;

create table user_role
(
    user_id int not null comment '用户id',
    role_id int not null comment '角色id',
    primary key (user_id, role_id)
)
    collate = utf8mb4_unicode_ci;

create table zjy_point_manage
(
    id              bigint auto_increment
        primary key,
    type_id         bigint        null comment '点位类型',
    project_id      bigint        null comment '项目id',
    point_name      varchar(20)   null comment '类型名称',
    address         varchar(255)  null comment '详细地址',
    longitude       varchar(255)  null comment '经度',
    dimension       varchar(255)  null comment '维度',
    area            varchar(500)  null comment '点位区域',
    contact_person  varchar(20)   null comment '联系人',
    mobile          varchar(20)   null comment '联系电话',
    point_Introduce varchar(600)  null comment '点位简介',
    image           varchar(2000) null comment '图标',
    deleted         int(1)        null comment '是否删除：0否 1是',
    create_time     datetime      null,
    create_people   varchar(50)   null,
    modify_time     datetime      null,
    modify_people   varchar(50)   null
)
    comment '社区大屏-点位管理';

create table zjy_point_type
(
    id            bigint auto_increment
        primary key,
    project_id    bigint          null comment '项目id',
    type_name     varchar(20)     null comment '类型名称',
    icon          varchar(1000)   null comment '图标',
    sort          int default 999 null comment '排序',
    deleted       int(1)          null comment '是否删除：0否 1是',
    create_time   datetime        null,
    create_people varchar(50)     null,
    modify_time   datetime        null,
    modify_people varchar(50)     null
)
    comment '社区大屏-点位类型';

