create table work(
task varchar(20),
name varchar2(20),
deadline date,
compl date,
constraint deadline check(compl<deadline));
insert into work(task,name,deadline,compl)
values('Install oracle','suresh','25-12-2019','25-12-2019');
insert into work(task,name,deadline,compl_date)
values('Install jdk','veera','27-12-2019','28-12-2019');
select * from work;
