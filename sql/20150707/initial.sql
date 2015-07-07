
drop table Blog_User;
drop table Blog_Role;
drop table Blog_Function;
drop table Blog_RoleFunctionAsso;

CREATE TABLE Blog_User
(
  id INT NOT NULL auto_increment COMMENT '主键',
    role_id INT NOT NULL  COMMENT 'role主键',
  name varchar(300) NOT NULL  COMMENT '名字',
  picture VARCHAR(5000) NOT NULL DEFAULT '' COMMENT '图片',
   add_time DATETIME NOT NULL COMMENT '添加时间',
  upate_time TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户表';



CREATE TABLE Blog_Role
(
  id INT NOT NULL auto_increment COMMENT '主键',
  name varchar(300) NOT NULL  COMMENT '名字',
   add_time DATETIME NOT NULL COMMENT '添加时间',
  upate_time TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色表';


CREATE TABLE Blog_Function
(
  id INT NOT NULL auto_increment COMMENT '主键',
  name varchar(300) NOT NULL  COMMENT '名字',
   add_time DATETIME NOT NULL COMMENT '添加时间',
  upate_time TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='功能表';


CREATE TABLE Blog_RoleFunctionAsso
(
  id INT NOT NULL auto_increment COMMENT '主键',
  role_id INT NOT NULL  COMMENT 'role主键',
  function_id INT NOT NULL  COMMENT 'function主键',
   add_time DATETIME NOT NULL COMMENT '添加时间',
  upate_time TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色功能关联表';


