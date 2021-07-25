create user sudha_milk identified by milk
/
grant dba to sudha_milk
/
conn sudha_milk/milk
/
create table zone_master
(zcode varchar(4),
 zname varchar(30),
 loc   varchar(30),
 dist  varchar(15))
/
create table distributor_master
(
 dist_cod varchar(6),
 dist_nam varchar(30),
 z_code   varchar(4),
 contno   varchar(15),
 address  varchar(30),
 off_ref  varchar(20),
 refdat   varchar(10),
 distcomisn varchar(8))
/
create table retailer_master
(
 ret_cod  varchar(6),
 ret_nam  varchar(30),
 z_code   varchar(4),
 route_no varchar(2),
 contno   varchar(15),
 loc      varchar(30),
 district varchar(15),
 off_ref  varchar(20),
 ref_date varchar(10),
 ret_stat varchar(15),
 rate_stat varchar(10),
 wd_booth varchar(5))
/
create table main_product
(mp_code  varchar(3),
 mp_name  varchar(20),
 prd_lref number(2))
/
create table rate_file
(prd_code   varchar(5),
 prd_name   varchar(30),
 field_name varchar(8),
 pack_size  varchar(4),
 mrp        number(10),
 ret_comisn varchar(8),
 eff_date   varchar(10))
/
create table card_transaction
(ret_code   varchar(6),
 z_code     varchar(4),
 route_no   varchar(2),
 suply_from varchar(10),
 suply_to   varchar(10),
 shift      varchar(10),
 amt_rcv    number(5),
 amt_ref    varchar(10),
 prd_code   varchar(20),
 prd_name   varchar(20),
 prd_value  number(10),
 prd_rate   number(10),
 prd_qty    number(10),
 sh_ex_amt  number(10))
/
create table demand_table
(ret_code  varchar(6),
 ret_stat  varchar(15),
 z_code    varchar(4),
 route_no  varchar(2),
 suply_date varchar(10),
 shift      varchar(10),
 amt_rcv    number(8),
 prd_code  varchar(10),
 prd_name  varchar(20),
 prd_qty   number(10),
 prd_rate  number(10),
 prd_val   number(10),
 sh_ex_val number(10))
/

create table status_master
(org_name   varchar(30),
 supp_date  varchar(10),
 supp_shift varchar(5),
 last_zone  number(3),
 last_dist  number(5),
 last_prd   number(5),
 last_ret   number(5),
 demand_entry varchar(1),
 demand_chk varchar(1),
 process_chk varchar(1))
/
insert into status_master(last_zone,last_dist,last_ret,last_prd,demand_entry,demand_chk,process_chk)
values('0','0','0','0','f','f','f')
/
create table temp
(a number (2),
 b number (2),
 c number (2),
 d number (2))
/
insert into temp(a,b,c,d) 
values ('0','0','0','0')
/
create table adminstrator
(uname varchar (20),
 pwd varchar (15))
/
create table simple_user
(uname varchar (20),
 pwd varchar (15),
 s_ques varchar(15),
s_ques1 varchar(30))
/
insert into adminstrator
 values('sudha','milk12345@')
/
commit
/