# 数据库设计文档

**数据库名：** forum

**文档版本：** 1.0-SNAPSHOT

**文档描述：** 数据库文档生成
| 表名                  | 说明       |
| :-------------------- | :--------- |
| [gen_table](#gen_table) | 代码生成业务表 |
| [oauth_access_token](#oauth_access_token) |  |
| [oauth_client_details](#oauth_client_details) | 客户端配置表 |
| [oauth_refresh_token](#oauth_refresh_token) |  |
| [sys_area](#sys_area) | 区域 |
| [sys_config](#sys_config) | 参数配置表 |
| [sys_dept](#sys_dept) | 部门表 |
| [sys_dict_data](#sys_dict_data) | 字典数据表 |
| [sys_dict_type](#sys_dict_type) | 字典类型表 |
| [sys_file](#sys_file) | 文件 |
| [sys_http_interface_call_log](#sys_http_interface_call_log) | http接口调用日志 |
| [sys_job](#sys_job) | 定时任务调度表 |
| [sys_job_log](#sys_job_log) | 定时任务调度日志表 |
| [sys_ktr_job_config](#sys_ktr_job_config) |  |
| [sys_logininfor](#sys_logininfor) | 系统访问记录 |
| [sys_manage](#sys_manage) | 系统管理表 |
| [sys_menu](#sys_menu) | 菜单权限表 |
| [sys_notice](#sys_notice) | 通知公告表 |
| [sys_notification](#sys_notification) | 通知 |
| [sys_notification_receiver](#sys_notification_receiver) | 通知接收者 |
| [sys_oauth_client_details](#sys_oauth_client_details) | 客户端配置表 |
| [sys_oper_log](#sys_oper_log) | 操作日志记录 |
| [sys_post](#sys_post) | 岗位信息表 |
| [sys_role](#sys_role) | 角色信息表 |
| [sys_role_dept](#sys_role_dept) | 角色和部门关联表 |
| [sys_role_menu](#sys_role_menu) | 角色和菜单关联表 |
| [sys_user](#sys_user) | 用户信息表 |
| [sys_user_expand](#sys_user_expand) | 第三方登录用户扩展 |
| [sys_user_expand_field](#sys_user_expand_field) | sys_user用户表字段动态扩展 |
| [sys_user_info](#sys_user_info) | 用户扩展字段表 |
| [sys_user_post](#sys_user_post) | 用户与岗位关联表 |
| [sys_user_role](#sys_user_role) | 用户和角色关联表 |
| [t_forum_business_operation_info](#t_forum_business_operation_info) | 业务实操类采集信息表 |
| [t_forum_legal_statute_info](#t_forum_legal_statute_info) | 法规类采集信息表 |
| [t_forum_post_task_info](#t_forum_post_task_info) | 帖子任务信息表 |
**表名：** <a id="gen_table">gen_table</a>

**说明：** 代码生成业务表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | table_id |   bigint   | 19 |   0    |    N     |  Y   |       | 编号  |
|  2   | table_name |   varchar   | 200 |   0    |    Y     |  N   |       | 表名称  |
|  3   | table_comment |   varchar   | 500 |   0    |    Y     |  N   |       | 表描述  |
|  4   | class_name |   varchar   | 100 |   0    |    Y     |  N   |       | 实体类名称  |
|  5   | tpl_category |   varchar   | 200 |   0    |    Y     |  N   |   crud    | 使用的模板（crud单表操作tree树表操作）  |
|  6   | package_name |   varchar   | 100 |   0    |    Y     |  N   |       | 生成包路径  |
|  7   | module_name |   varchar   | 50 |   0    |    Y     |  N   |       | 生成模块名  |
|  8   | business_name |   varchar   | 50 |   0    |    Y     |  N   |       | 生成业务名  |
|  9   | function_name |   varchar   | 50 |   0    |    Y     |  N   |       | 生成功能名  |
|  10   | function_author |   varchar   | 50 |   0    |    Y     |  N   |       | 生成功能作者  |
|  11   | options |   varchar   | 1000 |   0    |    Y     |  N   |       | 其它生成选项  |
|  12   | remark |   varchar   | 500 |   0    |    Y     |  N   |       | 备注  |
|  13   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  14   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  15   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  16   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  17   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="oauth_access_token">oauth_access_token</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | create_time |   timestamp   | 19 |   0    |    N     |  N   |   CURRENT_TIMESTAMP    |   |
|  2   | token_id |   varchar   | 255 |   0    |    Y     |  N   |       |   |
|  3   | token |   blob   | 65535 |   0    |    Y     |  N   |       |   |
|  4   | authentication_id |   varchar   | 255 |   0    |    Y     |  N   |       |   |
|  5   | user_name |   varchar   | 255 |   0    |    Y     |  N   |       |   |
|  6   | client_id |   varchar   | 255 |   0    |    Y     |  N   |       |   |
|  7   | authentication |   blob   | 65535 |   0    |    Y     |  N   |       |   |
|  8   | refresh_token |   varchar   | 255 |   0    |    Y     |  N   |       |   |
**表名：** <a id="oauth_client_details">oauth_client_details</a>

**说明：** 客户端配置表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | client_id |   varchar   | 255 |   0    |    N     |  Y   |       | 客户端唯一标识  |
|  2   | resource_ids |   varchar   | 255 |   0    |    Y     |  N   |       | 资源ID标识  |
|  3   | client_secret |   varchar   | 255 |   0    |    N     |  N   |       | 客户端安全码  |
|  4   | scope |   varchar   | 255 |   0    |    N     |  N   |       | 客户端授权范围  |
|  5   | authorized_grant_types |   varchar   | 255 |   0    |    N     |  N   |       | 客户端授权类型  |
|  6   | web_server_redirect_uri |   varchar   | 255 |   0    |    Y     |  N   |       | 服务器回调地址  |
|  7   | authorities |   varchar   | 255 |   0    |    Y     |  N   |       | 访问资源所需权限  |
|  8   | access_token_validity |   int   | 10 |   0    |    Y     |  N   |       | 设定客户端的access_token的有效时间值（秒）  |
|  9   | refresh_token_validity |   int   | 10 |   0    |    Y     |  N   |       | 设定客户端的refresh_token的有效时间值（秒）  |
|  10   | additional_information |   varchar   | 4096 |   0    |    Y     |  N   |       | 预留字段  |
|  11   | autoapprove |   varchar   | 5 |   0    |    Y     |  N   |       | 是否登录时跳过授权（默认false）  |
|  12   | remarks |   varchar   | 255 |   0    |    Y     |  N   |       | 备注  |
**表名：** <a id="oauth_refresh_token">oauth_refresh_token</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | create_time |   timestamp   | 19 |   0    |    N     |  N   |   CURRENT_TIMESTAMP    |   |
|  2   | token_id |   varchar   | 255 |   0    |    Y     |  N   |       |   |
|  3   | token |   blob   | 65535 |   0    |    Y     |  N   |       |   |
|  4   | authentication |   blob   | 65535 |   0    |    Y     |  N   |       |   |
**表名：** <a id="sys_area">sys_area</a>

**说明：** 区域

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | area_id |   bigint   | 19 |   0    |    N     |  Y   |       | 区域ID  |
|  2   | area_code |   varchar   | 62 |   0    |    N     |  N   |       | 区域代码  |
|  3   | area_name |   varchar   | 32 |   0    |    N     |  N   |       | 区域名称  |
|  4   | parent_id |   bigint   | 19 |   0    |    N     |  N   |       | 上级区域ID  |
|  5   | remark |   varchar   | 500 |   0    |    Y     |  N   |       | 备注  |
|  6   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  7   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  8   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  9   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  10   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_config">sys_config</a>

**说明：** 参数配置表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | config_id |   int   | 10 |   0    |    N     |  Y   |       | 参数主键  |
|  2   | config_name |   varchar   | 100 |   0    |    Y     |  N   |       | 参数名称  |
|  3   | config_key |   varchar   | 100 |   0    |    Y     |  N   |       | 参数键名  |
|  4   | config_value |   varchar   | 500 |   0    |    Y     |  N   |       | 参数键值  |
|  5   | config_type |   char   | 1 |   0    |    Y     |  N   |   N    | 系统内置（Y是N否）  |
|  6   | remark |   varchar   | 500 |   0    |    Y     |  N   |       | 备注  |
|  7   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  8   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  9   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  10   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  11   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_dept">sys_dept</a>

**说明：** 部门表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | dept_id |   bigint   | 19 |   0    |    N     |  Y   |       | 部门id  |
|  2   | area_id |   bigint   | 19 |   0    |    N     |  N   |       | 区域ID  |
|  3   | dept_code |   varchar   | 64 |   0    |    N     |  N   |       | 部门编号  |
|  4   | dept_name |   varchar   | 30 |   0    |    N     |  N   |       | 部门名称  |
|  5   | dept_short_name |   varchar   | 128 |   0    |    Y     |  N   |       | 机构简称  |
|  6   | dept_type |   varchar   | 64 |   0    |    Y     |  N   |       | 部门类型（TRIAL_DEPT表示审理部门，INVESTIGATION_DEPT表示审调部门）  |
|  7   | order_num |   int   | 10 |   0    |    N     |  N   |   0    | 显示顺序  |
|  8   | parent_id |   bigint   | 19 |   0    |    N     |  N   |       | 父部门id  |
|  9   | ancestors |   varchar   | 50 |   0    |    N     |  N   |       | 祖级列表  |
|  10   | leader |   varchar   | 20 |   0    |    Y     |  N   |       | 负责人  |
|  11   | phone |   varchar   | 11 |   0    |    Y     |  N   |       | 联系电话  |
|  12   | email |   varchar   | 50 |   0    |    Y     |  N   |       | 邮箱  |
|  13   | status |   char   | 1 |   0    |    Y     |  N   |   0    | 部门状态（0正常1停用）  |
|  14   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  15   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  16   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  17   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  18   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
|  19   | up_id |   varchar   | 64 |   0    |    Y     |  N   |       | 支撑平台的部门ID  |
|  20   | up_root_org_flag |   char   | 4 |   0    |    Y     |  N   |       | 机构根标识（1为根机构，2为下级机构）  |
|  21   | up_region_code |   varchar   | 128 |   0    |    Y     |  N   |       | 行政区划编码  |
|  22   | up_region_name |   varchar   | 128 |   0    |    Y     |  N   |       | 行政区划名称  |
|  23   | up_purpose |   varchar   | 128 |   0    |    Y     |  N   |       | 机构部门标志(1为机构，2为部门)  |
**表名：** <a id="sys_dict_data">sys_dict_data</a>

**说明：** 字典数据表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | dict_code |   bigint   | 19 |   0    |    N     |  Y   |       | 字典编码  |
|  2   | dict_sort |   int   | 10 |   0    |    Y     |  N   |   0    | 字典排序  |
|  3   | dict_label |   varchar   | 100 |   0    |    Y     |  N   |       | 字典标签  |
|  4   | dict_value |   varchar   | 100 |   0    |    Y     |  N   |       | 字典键值  |
|  5   | dict_type |   varchar   | 100 |   0    |    Y     |  N   |       | 字典类型  |
|  6   | css_class |   varchar   | 100 |   0    |    Y     |  N   |       | 样式属性（其他样式扩展）  |
|  7   | list_class |   varchar   | 100 |   0    |    Y     |  N   |       | 表格回显样式  |
|  8   | is_default |   char   | 1 |   0    |    Y     |  N   |   N    | 是否默认（Y是N否）  |
|  9   | status |   char   | 1 |   0    |    Y     |  N   |   0    | 状态（0正常1停用）  |
|  10   | remark |   varchar   | 500 |   0    |    Y     |  N   |       | 备注  |
|  11   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  12   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  13   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  14   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  15   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_dict_type">sys_dict_type</a>

**说明：** 字典类型表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | dict_id |   bigint   | 19 |   0    |    N     |  Y   |       | 字典主键  |
|  2   | dict_name |   varchar   | 100 |   0    |    Y     |  N   |       | 字典名称  |
|  3   | dict_type |   varchar   | 100 |   0    |    Y     |  N   |       | 字典类型  |
|  4   | status |   char   | 1 |   0    |    Y     |  N   |   0    | 状态（0正常1停用）  |
|  5   | remark |   varchar   | 500 |   0    |    Y     |  N   |       | 备注  |
|  6   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  7   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  8   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  9   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  10   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_file">sys_file</a>

**说明：** 文件

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | file_id |   bigint   | 19 |   0    |    N     |  Y   |       | 文件ID  |
|  2   | file_name |   varchar   | 64 |   0    |    N     |  N   |       | 文件名  |
|  3   | file_url |   varchar   | 256 |   0    |    N     |  N   |       | 文件地址  |
|  4   | file_size |   bigint   | 19 |   0    |    N     |  N   |       | 文件大小（单位字节）  |
|  5   | file_checksum |   varchar   | 32 |   0    |    N     |  N   |       | 文件校验和  |
|  6   | upload_user |   bigint   | 19 |   0    |    N     |  N   |       | 上传用户  |
|  7   | upload_time |   datetime   | 19 |   0    |    Y     |  N   |       | 上传时间  |
**表名：** <a id="sys_http_interface_call_log">sys_http_interface_call_log</a>

**说明：** http接口调用日志

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | id |   bigint   | 19 |   0    |    N     |  Y   |       |   |
|  2   | request_url |   varchar   | 256 |   0    |    Y     |  N   |       | 请求地址  |
|  3   | request_method |   varchar   | 8 |   0    |    Y     |  N   |       | 请求方法  |
|  4   | request_headers |   text   | 65535 |   0    |    Y     |  N   |       | 请求头  |
|  5   | request_body |   longtext   | 2147483647 |   0    |    Y     |  N   |       | 请求体  |
|  6   | response_status_code |   smallint   | 5 |   0    |    Y     |  N   |       | 响应状态码  |
|  7   | response_headers |   text   | 65535 |   0    |    Y     |  N   |       | 响应头  |
|  8   | response_body |   text   | 65535 |   0    |    Y     |  N   |       | 响应体  |
|  9   | interface_provider |   varchar   | 64 |   0    |    Y     |  N   |       | 接口提供者  |
|  10   | calling_user |   bigint   | 19 |   0    |    Y     |  N   |       | 调用者  |
|  11   | calling_user_name |   varchar   | 64 |   0    |    Y     |  N   |       | 调用者账号  |
|  12   | calling_user_nick_name |   varchar   | 32 |   0    |    Y     |  N   |       | 调用者昵称  |
|  13   | calling_time |   datetime   | 19 |   0    |    Y     |  N   |       | 调用时间  |
**表名：** <a id="sys_job">sys_job</a>

**说明：** 定时任务调度表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | job_id |   bigint   | 19 |   0    |    N     |  Y   |       | 任务ID  |
|  2   | job_name |   varchar   | 64 |   0    |    N     |  Y   |       | 任务名称  |
|  3   | job_group |   varchar   | 64 |   0    |    N     |  Y   |   DEFAULT    | 任务组名  |
|  4   | ip_address |   varchar   | 30 |   0    |    Y     |  N   |       | 定时任务运行的机器ip和端口  |
|  5   | invoke_target |   varchar   | 500 |   0    |    N     |  N   |       | 调用目标字符串  |
|  6   | cron_expression |   varchar   | 255 |   0    |    Y     |  N   |       | cron执行表达式  |
|  7   | misfire_policy |   varchar   | 20 |   0    |    Y     |  N   |   3    | 计划执行错误策略（1立即执行2执行一次3放弃执行）  |
|  8   | concurrent |   char   | 1 |   0    |    Y     |  N   |   1    | 是否并发执行（0允许1禁止）  |
|  9   | status |   char   | 1 |   0    |    Y     |  N   |   0    | 状态（0正常1暂停）  |
|  10   | remark |   varchar   | 500 |   0    |    Y     |  N   |       | 备注信息  |
|  11   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  12   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  13   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  14   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  15   | del_flag |   char   | 1 |   0    |    Y     |  N   |       | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_job_log">sys_job_log</a>

**说明：** 定时任务调度日志表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | job_log_id |   bigint   | 19 |   0    |    N     |  Y   |       | 任务日志ID  |
|  2   | job_name |   varchar   | 64 |   0    |    N     |  N   |       | 任务名称  |
|  3   | job_group |   varchar   | 64 |   0    |    N     |  N   |       | 任务组名  |
|  4   | invoke_target |   varchar   | 500 |   0    |    N     |  N   |       | 调用目标字符串  |
|  5   | job_message |   varchar   | 500 |   0    |    Y     |  N   |       | 日志信息  |
|  6   | status |   char   | 1 |   0    |    Y     |  N   |   0    | 执行状态（0正常1失败）  |
|  7   | exception_info |   varchar   | 2000 |   0    |    Y     |  N   |       | 异常信息  |
|  8   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  9   | ip |   varchar   | 20 |   0    |    Y     |  N   |       | 机器ip  |
|  10   | port |   varchar   | 10 |   0    |    Y     |  N   |       | 应用端口  |
**表名：** <a id="sys_ktr_job_config">sys_ktr_job_config</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | service_key |   varchar   | 64 |   0    |    Y     |  N   |       | 服务关键词  |
|  3   | service_name |   varchar   | 255 |   0    |    Y     |  N   |       | 服务名  |
|  4   | service_job_id |   int   | 10 |   0    |    Y     |  N   |       | 服务id，数据中台jobId  |
**表名：** <a id="sys_logininfor">sys_logininfor</a>

**说明：** 系统访问记录

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | info_id |   bigint   | 19 |   0    |    N     |  Y   |       | 访问ID  |
|  2   | user_name |   varchar   | 50 |   0    |    Y     |  N   |       | 用户账号  |
|  3   | ipaddr |   varchar   | 50 |   0    |    Y     |  N   |       | 登录IP地址  |
|  4   | login_location |   varchar   | 255 |   0    |    Y     |  N   |       | 登录地点  |
|  5   | browser |   varchar   | 50 |   0    |    Y     |  N   |       | 浏览器类型  |
|  6   | os |   varchar   | 50 |   0    |    Y     |  N   |       | 操作系统  |
|  7   | status |   char   | 1 |   0    |    Y     |  N   |   0    | 登录状态（0成功1失败）  |
|  8   | msg |   varchar   | 2000 |   0    |    Y     |  N   |       | 提示消息  |
|  9   | login_time |   datetime   | 19 |   0    |    Y     |  N   |       | 访问时间  |
**表名：** <a id="sys_manage">sys_manage</a>

**说明：** 系统管理表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | sys_id |   int   | 10 |   0    |    N     |  Y   |       | 主键ID  |
|  2   | sys_flag |   varchar   | 50 |   0    |    N     |  N   |       | 系统标识  |
|  3   | sys_name |   varchar   | 50 |   0    |    N     |  N   |       | 系统名称  |
|  4   | sys_sort |   int   | 10 |   0    |    N     |  N   |       | 显示顺序  |
|  5   | status |   char   | 1 |   0    |    N     |  N   |       | 角色状态（0正常1停用）  |
|  6   | create_by |   varchar   | 100 |   0    |    Y     |  N   |       | 创建人  |
|  7   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  8   | update_by |   varchar   | 100 |   0    |    Y     |  N   |       | 修改人  |
|  9   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
**表名：** <a id="sys_menu">sys_menu</a>

**说明：** 菜单权限表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | menu_id |   bigint   | 19 |   0    |    N     |  Y   |       | 菜单ID  |
|  2   | menu_name |   varchar   | 50 |   0    |    N     |  N   |       | 菜单名称  |
|  3   | parent_id |   bigint   | 19 |   0    |    Y     |  N   |   0    | 父菜单ID  |
|  4   | order_num |   int   | 10 |   0    |    Y     |  N   |   0    | 显示顺序  |
|  5   | path |   varchar   | 200 |   0    |    Y     |  N   |       | 路由地址  |
|  6   | component |   varchar   | 255 |   0    |    Y     |  N   |       | 组件路径  |
|  7   | is_frame |   int   | 10 |   0    |    Y     |  N   |   1    | 是否为外链（0是1否）  |
|  8   | menu_type |   char   | 1 |   0    |    Y     |  N   |       | 菜单类型（M目录C菜单F按钮）  |
|  9   | visible |   char   | 1 |   0    |    Y     |  N   |   0    | 菜单状态（0显示1隐藏）  |
|  10   | status |   char   | 1 |   0    |    Y     |  N   |   0    | 菜单状态（0正常1停用）  |
|  11   | perms |   varchar   | 100 |   0    |    Y     |  N   |       | 权限标识  |
|  12   | icon |   varchar   | 100 |   0    |    Y     |  N   |   #    | 菜单图标  |
|  13   | sys_flag |   varchar   | 50 |   0    |    Y     |  N   |       | 系统标识  |
|  14   | remark |   varchar   | 500 |   0    |    Y     |  N   |       | 备注  |
|  15   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  16   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  17   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  18   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  19   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_notice">sys_notice</a>

**说明：** 通知公告表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | notice_id |   int   | 10 |   0    |    N     |  Y   |       | 公告ID  |
|  2   | notice_title |   varchar   | 50 |   0    |    N     |  N   |       | 公告标题  |
|  3   | notice_type |   char   | 1 |   0    |    N     |  N   |       | 公告类型（1通知2公告）  |
|  4   | notice_content |   varchar   | 2000 |   0    |    Y     |  N   |       | 公告内容  |
|  5   | status |   char   | 1 |   0    |    Y     |  N   |   0    | 公告状态（0正常1关闭）  |
|  6   | remark |   varchar   | 255 |   0    |    Y     |  N   |       | 备注  |
|  7   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  8   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  9   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  10   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  11   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_notification">sys_notification</a>

**说明：** 通知

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | notification_id |   bigint   | 19 |   0    |    N     |  Y   |       | 通知ID  |
|  2   | notification_title |   varchar   | 32 |   0    |    N     |  N   |       | 通知标题  |
|  3   | notification_content |   varchar   | 512 |   0    |    N     |  N   |       | 通知内容  |
|  4   | publishment_user |   bigint   | 19 |   0    |    N     |  N   |       | 发布者  |
|  5   | publishment_time |   datetime   | 19 |   0    |    N     |  N   |       | 发布时间  |
**表名：** <a id="sys_notification_receiver">sys_notification_receiver</a>

**说明：** 通知接收者

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | notification_id |   bigint   | 19 |   0    |    N     |  Y   |       | 通知ID  |
|  2   | user_id |   bigint   | 19 |   0    |    N     |  Y   |       | 用户ID  |
|  3   | read |   bit   | 1 |   0    |    N     |  N   |       | 已读  |
**表名：** <a id="sys_oauth_client_details">sys_oauth_client_details</a>

**说明：** 客户端配置表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | client_id |   varchar   | 100 |   0    |    N     |  Y   |       | 客户端唯一标识  |
|  2   | resource_ids |   varchar   | 255 |   0    |    Y     |  N   |       | 资源ID标识  |
|  3   | client_secret |   varchar   | 255 |   0    |    N     |  N   |       | 客户端安全码  |
|  4   | scope |   varchar   | 255 |   0    |    N     |  N   |       | 客户端授权范围  |
|  5   | authorized_grant_types |   varchar   | 255 |   0    |    N     |  N   |       | 客户端授权类型  |
|  6   | web_server_redirect_uri |   varchar   | 255 |   0    |    Y     |  N   |       | 服务器回调地址  |
|  7   | authorities |   varchar   | 255 |   0    |    Y     |  N   |       | 访问资源所需权限  |
|  8   | access_token_validity |   int   | 10 |   0    |    Y     |  N   |       | 设定客户端的access_token的有效时间值（秒）  |
|  9   | refresh_token_validity |   int   | 10 |   0    |    Y     |  N   |       | 设定客户端的refresh_token的有效时间值（秒）  |
|  10   | additional_information |   varchar   | 4096 |   0    |    Y     |  N   |       | 预留字段  |
|  11   | autoapprove |   tinyint   | 3 |   0    |    Y     |  N   |       | 是否登录时跳过授权（默认false）  |
**表名：** <a id="sys_oper_log">sys_oper_log</a>

**说明：** 操作日志记录

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | oper_id |   bigint   | 19 |   0    |    N     |  Y   |       | 日志主键  |
|  2   | title |   varchar   | 50 |   0    |    Y     |  N   |       | 模块标题  |
|  3   | business_type |   int   | 10 |   0    |    Y     |  N   |   0    | 业务类型（0其它1新增2修改3删除）  |
|  4   | method |   varchar   | 1024 |   0    |    Y     |  N   |       | 方法名称  |
|  5   | request_method |   varchar   | 10 |   0    |    Y     |  N   |       | 请求方式  |
|  6   | operator_type |   int   | 10 |   0    |    Y     |  N   |   0    | 操作类别（0其它1后台用户2手机端用户）  |
|  7   | oper_name |   varchar   | 50 |   0    |    Y     |  N   |       | 操作人员  |
|  8   | dept_name |   varchar   | 50 |   0    |    Y     |  N   |       | 部门名称  |
|  9   | oper_url |   varchar   | 255 |   0    |    Y     |  N   |       | 请求URL  |
|  10   | oper_ip |   varchar   | 50 |   0    |    Y     |  N   |       | 主机地址  |
|  11   | oper_location |   varchar   | 255 |   0    |    Y     |  N   |       | 操作地点  |
|  12   | oper_param |   varchar   | 2000 |   0    |    Y     |  N   |       | 请求参数  |
|  13   | json_result |   varchar   | 16000 |   0    |    Y     |  N   |       | 返回参数  |
|  14   | status |   int   | 10 |   0    |    Y     |  N   |   0    | 操作状态（0正常1异常）  |
|  15   | error_msg |   varchar   | 2000 |   0    |    Y     |  N   |       | 错误消息  |
|  16   | oper_time |   datetime   | 19 |   0    |    Y     |  N   |       | 操作时间  |
|  17   | error_info |   longblob   | 2147483647 |   0    |    Y     |  N   |       | 错误详情  |
**表名：** <a id="sys_post">sys_post</a>

**说明：** 岗位信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | post_id |   bigint   | 19 |   0    |    N     |  Y   |       | 岗位ID  |
|  2   | post_code |   varchar   | 64 |   0    |    N     |  N   |       | 岗位编码  |
|  3   | post_name |   varchar   | 50 |   0    |    N     |  N   |       | 岗位名称  |
|  4   | post_sort |   int   | 10 |   0    |    N     |  N   |       | 显示顺序  |
|  5   | status |   char   | 1 |   0    |    N     |  N   |       | 状态（0正常1停用）  |
|  6   | remark |   varchar   | 500 |   0    |    Y     |  N   |       | 备注  |
|  7   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  8   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  9   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  10   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  11   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_role">sys_role</a>

**说明：** 角色信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | role_id |   bigint   | 19 |   0    |    N     |  Y   |       | 角色ID  |
|  2   | role_name |   varchar   | 30 |   0    |    N     |  N   |       | 角色名称  |
|  3   | role_key |   varchar   | 100 |   0    |    N     |  N   |       | 角色权限字符串  |
|  4   | role_sort |   int   | 10 |   0    |    N     |  N   |       | 显示顺序  |
|  5   | data_scope |   char   | 1 |   0    |    Y     |  N   |   1    | 数据范围（1：全部数据权限2：自定数据权限3：本部门数据权限4：本部门及以下数据权限）  |
|  6   | status |   char   | 1 |   0    |    N     |  N   |       | 角色状态（0正常1停用3三员）  |
|  7   | sys_flag |   varchar   | 50 |   0    |    Y     |  N   |       | 系统标识,0为管理员标识，可以有所有sysFlag系统权限  |
|  8   | remark |   varchar   | 500 |   0    |    Y     |  N   |       | 备注  |
|  9   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  10   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  11   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  12   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  13   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_role_dept">sys_role_dept</a>

**说明：** 角色和部门关联表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | role_id |   bigint   | 19 |   0    |    N     |  Y   |       | 角色ID  |
|  2   | dept_id |   bigint   | 19 |   0    |    N     |  Y   |       | 部门ID  |
**表名：** <a id="sys_role_menu">sys_role_menu</a>

**说明：** 角色和菜单关联表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | role_id |   bigint   | 19 |   0    |    N     |  Y   |       | 角色ID  |
|  2   | menu_id |   bigint   | 19 |   0    |    N     |  Y   |       | 菜单ID  |
**表名：** <a id="sys_user">sys_user</a>

**说明：** 用户信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | user_id |   bigint   | 19 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | dept_id |   bigint   | 19 |   0    |    N     |  N   |       | 部门ID  |
|  3   | user_name |   varchar   | 30 |   0    |    N     |  N   |       | 用户账号  |
|  4   | nick_name |   varchar   | 30 |   0    |    N     |  N   |       | 用户昵称  |
|  5   | user_type |   varchar   | 2 |   0    |    Y     |  N   |   00    | 用户类型（00系统用户）  |
|  6   | email |   varchar   | 50 |   0    |    Y     |  N   |       | 用户邮箱  |
|  7   | phonenumber |   varchar   | 11 |   0    |    Y     |  N   |       | 手机号码  |
|  8   | sex |   char   | 1 |   0    |    Y     |  N   |       | 用户性别（0男1女2未知）  |
|  9   | avatar |   varchar   | 100 |   0    |    Y     |  N   |       | 头像地址  |
|  10   | password |   varchar   | 100 |   0    |    N     |  N   |       | 密码  |
|  11   | status |   char   | 1 |   0    |    Y     |  N   |   0    | 帐号状态（0正常1停用）  |
|  12   | order_num |   bigint   | 19 |   0    |    Y     |  N   |       | 序号  |
|  13   | up_inner_code |   varchar   | 64 |   0    |    Y     |  N   |       | 支撑平台用户唯一标识  |
|  14   | sys_flag |   varchar   | 50 |   0    |    Y     |  N   |       | 0为管理员  |
|  15   | login_ip |   varchar   | 50 |   0    |    Y     |  N   |       | 最后登陆IP  |
|  16   | login_date |   datetime   | 19 |   0    |    Y     |  N   |       | 最后登陆时间  |
|  17   | remark |   varchar   | 500 |   0    |    Y     |  N   |       | 备注  |
|  18   | create_by |   varchar   | 64 |   0    |    Y     |  N   |       | 创建者  |
|  19   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  20   | update_by |   varchar   | 64 |   0    |    Y     |  N   |       | 更新者  |
|  21   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  22   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_user_expand">sys_user_expand</a>

**说明：** 第三方登录用户扩展

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | id |   bigint   | 19 |   0    |    N     |  Y   |       | 主键  |
|  2   | user_id |   bigint   | 19 |   0    |    Y     |  N   |       | 本地用户id  |
|  3   | open_id |   varchar   | 50 |   0    |    Y     |  N   |       | 第三方登录，用户唯一标识  |
|  4   | user_source |   varchar   | 50 |   0    |    Y     |  N   |       | 第三方登录，用户来源  |
**表名：** <a id="sys_user_expand_field">sys_user_expand_field</a>

**说明：** sys_user用户表字段动态扩展

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | id |   bigint   | 19 |   0    |    N     |  Y   |       |   |
|  2   | user_id |   bigint   | 19 |   0    |    Y     |  N   |       | 用户id  |
|  3   | user_name |   varchar   | 30 |   0    |    Y     |  N   |       | 用户账号  |
|  4   | field_key |   varchar   | 50 |   0    |    Y     |  N   |       | 扩展字段名  |
|  5   | field_value |   varchar   | 255 |   0    |    Y     |  N   |       | 扩展字段值  |
**表名：** <a id="sys_user_info">sys_user_info</a>

**说明：** 用户扩展字段表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 字段主键  |
|  2   | param_name |   varchar   | 50 |   0    |    N     |  N   |       | 字段名称  |
|  3   | param_chinese_name |   varchar   | 100 |   0    |    N     |  N   |       | 字段中文  |
|  4   | form_name |   varchar   | 50 |   0    |    Y     |  N   |       | 插入表名  |
|  5   | status |   char   | 1 |   0    |    Y     |  N   |       | 状态（0启用，1停用）  |
|  6   | remark |   varchar   | 100 |   0    |    Y     |  N   |       | 备注  |
|  7   | create_by |   varchar   | 100 |   0    |    Y     |  N   |       | 创建人  |
|  8   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  9   | update_by |   varchar   | 100 |   0    |    Y     |  N   |       | 修改人  |
|  10   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 更新时间  |
|  11   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="sys_user_post">sys_user_post</a>

**说明：** 用户与岗位关联表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | user_id |   bigint   | 19 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | post_id |   bigint   | 19 |   0    |    N     |  Y   |       | 岗位ID  |
**表名：** <a id="sys_user_role">sys_user_role</a>

**说明：** 用户和角色关联表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | user_id |   bigint   | 19 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | role_id |   bigint   | 19 |   0    |    N     |  Y   |       | 角色ID  |
**表名：** <a id="t_forum_business_operation_info">t_forum_business_operation_info</a>

**说明：** 业务实操类采集信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | id |   bigint   | 19 |   0    |    N     |  Y   |       | 帖子ID  |
|  2   | theme |   varchar   | 64 |   0    |    Y     |  N   |       | 主题  |
|  3   | practical_oper_type |   varchar   | 32 |   0    |    Y     |  N   |       | 实操类型  |
|  4   | belongs_link |   varchar   | 255 |   0    |    Y     |  N   |       | 所属环节  |
|  5   | practical_oper_content |   varchar   | 255 |   0    |    Y     |  N   |       | 实操内容  |
|  6   | remark |   varchar   | 255 |   0    |    Y     |  N   |       | 备注  |
|  7   | create_by |   varchar   | 32 |   0    |    Y     |  N   |       | 创建人  |
|  8   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  9   | update_by |   varchar   | 32 |   0    |    Y     |  N   |       | 修改人  |
|  10   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 修改时间  |
|  11   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="t_forum_legal_statute_info">t_forum_legal_statute_info</a>

**说明：** 法规类采集信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | id |   bigint   | 19 |   0    |    N     |  Y   |       | 帖子ID  |
|  2   | theme |   varchar   | 64 |   0    |    Y     |  N   |       | 主题  |
|  3   | regulation |   varchar   | 64 |   0    |    Y     |  N   |       | 所属法规  |
|  4   | statute |   varchar   | 255 |   0    |    Y     |  N   |       | 法条  |
|  5   | statute_explanation |   text   | 65535 |   0    |    Y     |  N   |       | 法条释义  |
|  6   | remark |   varchar   | 255 |   0    |    Y     |  N   |       | 备注  |
|  7   | create_by |   varchar   | 32 |   0    |    Y     |  N   |       | 创建人  |
|  8   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  9   | update_by |   varchar   | 32 |   0    |    Y     |  N   |       | 修改人  |
|  10   | update_time |   datetime   | 19 |   0    |    Y     |  N   |       | 修改时间  |
|  11   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
**表名：** <a id="t_forum_post_task_info">t_forum_post_task_info</a>

**说明：** 帖子任务信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :--: | :--- | :------: | :----: | :----: | :------: | :--: | :----: | :--: |
|  1   | id |   bigint   | 19 |   0    |    N     |  Y   |       | 主键ID  |
|  2   | dept_id |   bigint   | 19 |   0    |    Y     |  N   |       | 部门ID  |
|  3   | task_count |   int   | 10 |   0    |    Y     |  N   |       | 任务数  |
|  4   | create_by |   varchar   | 32 |   0    |    Y     |  N   |       | 创建人  |
|  5   | create_time |   datetime   | 19 |   0    |    Y     |  N   |       | 创建时间  |
|  6   | del_flag |   char   | 1 |   0    |    Y     |  N   |   0    | 删除标识（0-正常1-删除）  |
