SQL> show user;
USER is ""
SQL> connect system
Enter password:
Connected.
SQL> create table books
  2  (
  3  book_id number(4),
  4  book_title varchar2(20),
  5  author varchar2(20),
  6  publisher varchar2(20),
  7  prize number(7)
  8  );

Table created.

SQL> desc books;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BOOK_ID                                            NUMBER(4)
 BOOK_TITLE                                         VARCHAR2(20)
 AUTHOR                                             VARCHAR2(20)
 PUBLISHER                                          VARCHAR2(20)
 PRIZE                                              NUMBER(7)

SQL> rename books to books_record;

Table renamed.

SQL> desc books_record;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BOOK_ID                                            NUMBER(4)
 BOOK_TITLE                                         VARCHAR2(20)
 AUTHOR                                             VARCHAR2(20)
 PUBLISHER                                          VARCHAR2(20)
 PRIZE                                              NUMBER(7)

SQL> alter table books_record
  2  add phone_no number(10)
  3
SQL> alter table books_record
  2  add phone_no number(10);

Table altered.

SQL> desc books_record;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BOOK_ID                                            NUMBER(4)
 BOOK_TITLE                                         VARCHAR2(20)
 AUTHOR                                             VARCHAR2(20)
 PUBLISHER                                          VARCHAR2(20)
 PRIZE                                              NUMBER(7)
 PHONE_NO                                           NUMBER(10)

SQL> alter table books_record
  2  modify prize number(3);

Table altered.

SQL> desc books_record;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BOOK_ID                                            NUMBER(4)
 BOOK_TITLE                                         VARCHAR2(20)
 AUTHOR                                             VARCHAR2(20)
 PUBLISHER                                          VARCHAR2(20)
 PRIZE                                              NUMBER(3)
 PHONE_NO                                           NUMBER(10)

SQL> alter table books_record
  2  drop column book_title;

Table altered.

SQL> desc books_record;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BOOK_ID                                            NUMBER(4)
 AUTHOR                                             VARCHAR2(20)
 PUBLISHER                                          VARCHAR2(20)
 PRIZE                                              NUMBER(3)
 PHONE_NO                                           NUMBER(10)


SQL> create table student
  2  (
  3  name varchar2(20),
  4  rollno number(4),
  5  marks number(2)
  6  );

Table created.

SQL> truncate table student;

Table truncated.

SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 NAME                                               VARCHAR2(20)
 ROLLNO                                             NUMBER(4)
 MARKS                                              NUMBER(2)

SQL> alter table student
  2  drop column name;

Table altered.

SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(4)
 MARKS                                              NUMBER(2)

SQL> drop table  student;

Table dropped.

SQL> create  table instructor
  2  (
  3  inst_id number(4),
  4  name varchar2(20),
  5  dob date,
  6  post varchar2(20),
  7  phn number(10)
  8  );

Table created.

SQL> insert into instructor values (
  2  101,
  3  'Jahnavi',
  4  07-dec-02,
  5
SQL> insert into instructor values (
  2  101,
  3  'Jahnavi',
  4  '07-dec-02',
  5  'lecturer',
  6  1234567);

1 row created.

SQL> select *from instructor;

   INST_ID NAME                 DOB       POST                        PHN
---------- -------------------- --------- -------------------- ----------
       101 Jahnavi              07-DEC-02 lecturer                1234567

SQL> insert into instructor values (
  2  101,
  3  'Jahnavi',
  4  '07-dec-02',
  5  'lecturer',
  6  1234567);

1 row created.

SQL> select *from instructor;

   INST_ID NAME                 DOB       POST                        PHN
---------- -------------------- --------- -------------------- ----------
       101 Jahnavi              07-DEC-02 lecturer                1234567
       101 Jahnavi              07-DEC-02 lecturer                1234567

SQL> insert into instructor values (&a,&b,&c,&d,&e)
  2
SQL> insert into instructor values (&a,&b,&c,&d,&e);
Enter value for a: 105
Enter value for b: 'vyshu'
Enter value for c: '12-dec-99'
Enter value for d: 'lecturer'
Enter value for e: 12345689
old   1: insert into instructor values (&a,&b,&c,&d,&e)
new   1: insert into instructor values (105,'vyshu','12-dec-99','lecturer',12345689)

1 row created.

SQL> select *from instructor;

   INST_ID NAME                 DOB       POST                        PHN
---------- -------------------- --------- -------------------- ----------
       101 Vasavi             27-SEP-02 lecturer                1234567
       101 Vasavi              27-SEP-02 lecturer                1234567
       105 vyshu                23-DEC-01 lecturer               12345689

SQL> /

   INST_ID NAME                 DOB       POST                        PHN
---------- -------------------- --------- -------------------- ----------
       101 Vasavi              27-SEP-02 lecturer                1234567
       101 Vasavi              27-SEP-02 lecturer                1234567
       105 vyshu                23-SEP-01 lecturer               12345689

SQL> /

   INST_ID NAME                 DOB       POST                        PHN
---------- -------------------- --------- -------------------- ----------
       101 Jahnavi              27-SEP-02 lecturer                1234567
       101 Jahnavi              27-SEP-02 lecturer                1234567
       105 vyshu                23-DEC-01 lecturer               12345689

SQL> insert into instructor values (&a,&b,&c,&d,&e);
Enter value for a: 106,
Enter value for b: 'satwika'
Enter value for c: '04-nov-09'
Enter value for d: 'lecturer'
Enter value for e: 4567
old   1: insert into instructor values (&a,&b,&c,&d,&e)
new   1: insert into instructor values (106,,'satwika','04-nov-09','lecturer',4567)


SQL> update instructor set name = 'jahnavi' where inst_id=101;

2 rows updated.

SQL> /

2 rows updated.

SQL> select * from instructor;

   INST_ID NAME                 DOB       POST                        PHN
---------- -------------------- --------- -------------------- ----------
       101 jahnavi              07-DEC-02 lecturer                1234567
       101 jahnavi              07-DEC-02 lecturer                1234567
       105 vyshu                12-DEC-99 lecturer               12345689

SQL> update instructor set name = 'janu' where inst_id=101;

2 rows updated.

SQL> select * from instructor;

   INST_ID NAME                 DOB       POST                        PHN
---------- -------------------- --------- -------------------- ----------
       101 janu                 07-DEC-02 lecturer                1234567
       101 janu                 07-DEC-02 lecturer                1234567
       105 vyshu                12-DEC-99 lecturer               12345689


SQL> update instructor set dob = '07-dec-99' where inst_id=101;

2 rows updated.

SQL> select * from instructor;

   INST_ID NAME                 DOB       POST                        PHN
---------- -------------------- --------- -------------------- ----------
       101 janu                 07-DEC-99 lecturer                1234567
       101 janu                 07-DEC-99 lecturer                1234567
       105 vyshu                12-DEC-99 lecturer               12345689

SQL> commit;

Commit complete.

SQL> select name,inst_id from instructor where phn=1234567;

NAME                    INST_ID
-------------------- ----------
janu                        101
janu                        101

SQL> select name,inst_id from instructor;

NAME                    INST_ID
-------------------- ----------
janu                        101
janu                        101
vyshu                       105

SQL> delete from instructor where name='vyshu';

1 row deleted.

SQL> select * from instructor;

   INST_ID NAME                 DOB       POST                        PHN
---------- -------------------- --------- -------------------- ----------
       101 janu                 07-DEC-99 lecturer                1234567
       101 janu                 07-DEC-99 lecturer                1234567

SQL> truncate table instructor;

Table truncated.

SQL> select * from instructor;

no rows selected

SQL> desc instructor;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 INST_ID                                            NUMBER(4)
 NAME                                               VARCHAR2(20)
 DOB                                                DATE
 POST                                               VARCHAR2(20)
 PHN                                                NUMBER(10)


SQL> alter table instructor drop column name;

Table altered.

SQL> desc instructor;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 INST_ID                                            NUMBER(4)
 DOB                                                DATE
 POST                                               VARCHAR2(20)
 PHN                                                NUMBER(10)

SQL> delete from instructor;

0 rows deleted.

SQL> select * from instructor;

no rows selected


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> create table emp(
  2  e_id number(5),
  3  e_name varchar2(20),
  4  dept varchar2(20),
  5  e_age number(2),
  6  gender varchar2(20),
  7  e_salary number(10));

Table created.

SQL> insert into emp values(&a,&b,&c,&d,&e,&f);
Enter value for a: 201
Enter value for b: 'bindhu'
Enter value for c: 'maths'
Enter value for d: 90
Enter value for e: 'f'
Enter value for f: 40000
old   1: insert into emp values(&a,&b,&c,&d,&e,&f)
new   1: insert into emp values(201,'bindhu','maths',90,'f',40000)

1 row created.

SQL> /
Enter value for a: 202
Enter value for b: 'jahnavi'
Enter value for c: 'physics'
Enter value for d: 100
Enter value for e: 'f'
Enter value for f: 20000
old   1: insert into emp values(&a,&b,&c,&d,&e,&f)
new   1: insert into emp values(202,'jahnavi','physics',100,'f',20000)


SQL> /
Enter value for a: 202
Enter value for b: 'jahnavi'
Enter value for c: 'physics'
Enter value for d: 25
Enter value for e: 'f'
Enter value for f: 30000
old   1: insert into emp values(&a,&b,&c,&d,&e,&f)
new   1: insert into emp values(202,'jahnavi','physics',25,'f',30000)

1 row created.


SQL> /
Enter value for a: 203
Enter value for b: 'vyshu'
Enter value for c: 'Biology'
Enter value for d: 30
Enter value for e: 'f'
Enter value for f: 20000
old   1: insert into emp values(&a,&b,&c,&d,&e,&f)
new   1: insert into emp values(203,'vyshu','Biology',30,'f',20000)

1 row created.


SQL> /
Enter value for a: 204
Enter value for b: 'Jai'
Enter value for c: 'Chemistry'
Enter value for d: 26
Enter value for e: 'm'
Enter value for f: 35000
old   1: insert into emp values(&a,&b,&c,&d,&e,&f)
new   1: insert into emp values(204,'Jai','Chemistry',26,'m',35000)

1 row created.

SQL> desc emp;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 E_ID                                               NUMBER(5)
 E_NAME                                             VARCHAR2(20)
 DEPT                                               VARCHAR2(20)
 E_AGE                                              NUMBER(2)
 GENDER                                             VARCHAR2(20)
 E_SALARY                                           NUMBER(10)

SQL> select * from emp;

      E_ID E_NAME               DEPT                      E_AGE
---------- -------------------- -------------------- ----------
GENDER                 E_SALARY
-------------------- ----------
       201 bindhu               maths                        90
f                         40000

       202 jahnavi              physics                      25
f                         30000

       203 vyshu                Biology                      30
f                         20000


      E_ID E_NAME               DEPT                      E_AGE
---------- -------------------- -------------------- ----------
GENDER                 E_SALARY
-------------------- ----------
       204 Jai                  Chemistry                    26
m                         35000



SQL> select e_name,dept from emp where gender='m' or e_salary<5000;

E_NAME               DEPT
-------------------- --------------------
Jai                  Chemistry

SQL> select e_name,dept from emp where gender='m' and e_salary>5000;

E_NAME               DEPT
-------------------- --------------------
Jai                  Chemistry

SQL> select e_name,dept from emp where gender='f' and e_salary>5000;

E_NAME               DEPT
-------------------- --------------------
bindhu               maths
jahnavi              physics
vyshu                Biology

SQL> select e_name,dept from emp where gender='f' and e_salary>=30000;

E_NAME               DEPT
-------------------- --------------------
bindhu               maths
jahnavi              physics

SQL> select * from emp where gender!='m';

      E_ID E_NAME               DEPT                      E_AGE
---------- -------------------- -------------------- ----------
GENDER                 E_SALARY
-------------------- ----------
       201 bindhu               maths                        90
f                         40000

       202 jahnavi              physics                      25
f                         30000

       203 vyshu                Biology                      30
f                         20000


SQL> select * from emp where gender!='f';

      E_ID E_NAME               DEPT                      E_AGE
---------- -------------------- -------------------- ----------
GENDER                 E_SALARY
-------------------- ----------
       204 Jai                  Chemistry                    26
m                         35000


SQL> select * from emp where e_name like('%u');

      E_ID E_NAME               DEPT                      E_AGE
---------- -------------------- -------------------- ----------
GENDER                 E_SALARY
-------------------- ----------
       201 bindhu               maths                        90
f                         40000

       203 vyshu                Biology                      30
f                         20000

SQL> select * from emp where e_name like('%h');

no rows selected

SQL> select * from emp where e_name like('%i');

      E_ID E_NAME               DEPT                      E_AGE
---------- -------------------- -------------------- ----------
GENDER                 E_SALARY
-------------------- ----------
       202 jahnavi              physics                      25
f                         30000

       204 Jai                  Chemistry                    26
m                         35000


SQL> select e_name,e_salary from emp where e_id in('201','202','205');

E_NAME                 E_SALARY
-------------------- ----------
bindhu                    40000
jahnavi                   30000

SQL> create table driving_license
  2  (
  3  license_no number(10) notnull,
  4  name varchar2(20),
  5  dob date notnull,
  6  vehicle_class varchar2(20) not null,
  7
SQL> create table driving_license
  2  (
  3  license_no number(10) not null,
  4  name varchar2(20),
  5  dob date not null,
  6  doi date,
  7  vehicle_class varchar2(20) not null,
  8  valid date);

Table created.

SQL> desc driving_license;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 LICENSE_NO                                NOT NULL NUMBER(10)
 NAME                                               VARCHAR2(20)
 DOB                                       NOT NULL DATE
 DOI                                                DATE
 VEHICLE_CLASS                             NOT NULL VARCHAR2(20)
 VALID                                              DATE


SQL> insert into driving_license values(901,'Janu','07-dec-02','09-dec-19','ssss','16-feb-23');

1 row created.

SQL> insert into driving_license values(901,'','07-dec-02','09-dec-19','ssss','16-feb-23');

1 row created.

SQL> commit;

Commit complete.

SQL> create table books(
  2  book_id number(4) primary key);

Table created.

SQL> insert into books values(5112);

1 row created.

SQL> insert into books values(5178);

1 row created.


SQL> create table emp1(
  2  emp_id number(2),
  3  name varchar2(10),
  4  dob date,
  5  primary key(name,dob));

Table created.

SQL> insert into emp1 values(15,'Janu','07-dec-02');

1 row created.

SQL> create table patient (
  2  blood_group varchar2(12) check( blood_group in('a+','a-','b+','b-','o+','o-','ab')));

Table created.

SQL> insert into patient values('a+');

1 row created.

SQL> create table bankDetails(
  2  ifsc varchar2(20) default 'cbin026890',
  3  name varchar2(10)
  4  );

Table created.

SQL> insert into bankDetails values(default,'Janu');

1 row created.

SQL> select * from bankDetails;

IFSC                 NAME
-------------------- ----------
cbin026890           Janu

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> create user manager identified by man;

User created.

SQL> create table team(
  2  id_no number(4) primary key,
  3  team_name varachar2(10),
  4
SQL>
SQL> create table team(
  2  id_no number(4) primary key,
  3  team_name varachar2(10) not null,
  4  position varchar2(10) unique);
team_name varachar2(10) not null,
                   *
ERROR at line 3:
ORA-00907: missing right parenthesis


SQL> create table team(
  2  id_no number(4) primary key,
  3  team_name varchar2(10) not null,
  4  position varchar2(10) unique);

Table created.

SQL> create table player(
  2  id_no number(4) references team(id_no),
  3  player_name varchar2(20),
  4  height number(3));

Table created.

SQL> insert into team values(&a,&b,&c);
Enter value for a: 101
Enter value for b: san
Enter value for c:
old   1: insert into team values(&a,&b,&c)
new   1: insert into team values(101,san,)
insert into team values(101,san,)
                                *
ERROR at line 1:
ORA-00936: missing expression


SQL>
SQL> insert into team values(&a,&b,&c);
Enter value for a: 101
Enter value for b: 'san'
Enter value for c: 'diego'
old   1: insert into team values(&a,&b,&c)
new   1: insert into team values(101,'san','diego')

1 row created.

SQL> /
Enter value for a: 102
Enter value for b: 'houston'
Enter value for c: 'k'
old   1: insert into team values(&a,&b,&c)
new   1: insert into team values(102,'houston','k')

1 row created.

SQL> /
Enter value for a: 103
Enter value for b: 'm indians'
Enter value for c: 'ss'
old   1: insert into team values(&a,&b,&c)
new   1: insert into team values(103,'m indians','ss')

1 row created.

SQL> insert into player values(&a,&b,&c);
Enter value for a: 101
Enter value for b: 'virat'
Enter value for c: 167
old   1: insert into player values(&a,&b,&c)
new   1: insert into player values(101,'virat',167)

1 row created.




SQL> select * from team;

     ID_NO TEAM_NAME  POSITION
---------- ---------- ----------
       101 san        diego
       102 houston    k
       103 m indians  ss

SQL> select * from player;

     ID_NO PLAYER_NAME              HEIGHT
---------- -------------------- ----------
       101 virat                       167

SQL> create table cab
  2  (
  3  id number(4),
  4  liscence_plate varchar2(20),
  5  car_model number(9),
  6  manufacture_year number(15),
  7  primary key (id),
  8  unique(liscence_plate));

Table created.

SQL> create table driver
  2  (
  3  id number(4),
  4  name varchar2(20),
  5  dob date,
  6  driving_liscence_no varchar2(20),
  7  foreign key (id) references cab(id));

Table created.

SQL> desc table cab;
Usage: DESCRIBE [schema.]object[@db_link]
SQL> desc cab;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(4)
 LISCENCE_PLATE                                     VARCHAR2(20)
 CAR_MODEL                                          NUMBER(9)
 MANUFACTURE_YEAR                                   NUMBER(15)

SQL> desc driver;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(4)
 NAME                                               VARCHAR2(20)
 DOB                                                DATE
 DRIVING_LISCENCE_NO                                VARCHAR2(20)

SQL> desc team
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_NO                                     NOT NULL NUMBER(4)
 TEAM_NAME                                 NOT NULL VARCHAR2(10)
 POSITION                                           VARCHAR2(10)

SQL> desc player
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_NO                                              NUMBER(4)
 PLAYER_NAME                                        VARCHAR2(20)
 HEIGHT                                             NUMBER(3)

SQL> create table r1(
  2  first_name varchar2(10),
  3  last_name varchar2(10),
  4  salary number(10));

Table created.

SQL> desc r1
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FIRST_NAME                                         VARCHAR2(10)
 LAST_NAME                                          VARCHAR2(10)
 SALARY                                             NUMBER(10)

SQL> create table r2(
  2  last_name varchar2(20),
  3  gender varchar2(20),
  4  age number(2));

Table created.

SQL> desc r2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 LAST_NAME                                          VARCHAR2(20)
 GENDER                                             VARCHAR2(20)
 AGE                                                NUMBER(2)

SQL> insert into r1 values(&a,&b,&c);
Enter value for a: 'Janu'
Enter value for b: 'Chowdary'
Enter value for c: 60000
old   1: insert into r1 values(&a,&b,&c)
new   1: insert into r1 values('Janu','Chowdary',60000)

1 row created.

SQL> /
Enter value for a: 'Vyshu'
Enter value for b: 'Nukala'
Enter value for c: 70000
old   1: insert into r1 values(&a,&b,&c)
new   1: insert into r1 values('Vyshu','Nukala',70000)

1 row created.

SQL> select * from r1;

FIRST_NAME LAST_NAME      SALARY
---------- ---------- ----------
Janu       Chowdary        60000
Vyshu      Nukala          70000

SQL> insert into r2 values(&a,&b,&c);
Enter value for a: 'Chowdary'
Enter value for b: 'f'
Enter value for c: 23
old   1: insert into r2 values(&a,&b,&c)
new   1: insert into r2 values('Chowdary','f',23)

1 row created.

SQL> /
Enter value for a: 'Nukala'
Enter value for b: 'f'
Enter value for c: 22
old   1: insert into r2 values(&a,&b,&c)
new   1: insert into r2 values('Nukala','f',22)

1 row created.

SQL> select * from r2;

LAST_NAME            GENDER                      AGE
-------------------- -------------------- ----------
Chowdary             f                            23
Nukala               f                            22

SQL> /

LAST_NAME            GENDER                      AGE
-------------------- -------------------- ----------
Chowdary             f                            23
Nukala               f                            22

SQL> insert into r2 values(&a,&b,&c);
Enter value for a: 'Kanuru'
Enter value for b: 'm'
Enter value for c: 25
old   1: insert into r2 values(&a,&b,&c)
new   1: insert into r2 values('Kanuru','m',25)

1 row created.

SQL> select * from r1;

FIRST_NAME LAST_NAME      SALARY
---------- ---------- ----------
Janu       Chowdary        60000
Vyshu      Nukala          70000

SQL> select * from r2;

LAST_NAME            GENDER                      AGE
-------------------- -------------------- ----------
Chowdary             f                            23
Nukala               f                            22
Kanuru               m                            25



SQL> select first_name,salary ,age from r1,r2 where r1.last_name=r2.last_name;

FIRST_NAME     SALARY        AGE
---------- ---------- ----------
Janu            60000         23
Vyshu           70000         22

SQL> select * from r1,r2 where r1.last_name=r2.last_name;

FIRST_NAME LAST_NAME      SALARY LAST_NAME            GENDER
---------- ---------- ---------- -------------------- --------------------
       AGE
----------
Janu       Chowdary        60000 Chowdary             f
        23

Vyshu      Nukala          70000 Nukala               f
        22


SQL> select first_name,salary ,age from r1,r2;

FIRST_NAME     SALARY        AGE
---------- ---------- ----------
Janu            60000         23
Janu            60000         22
Janu            60000         25
Vyshu           70000         23
Vyshu           70000         22
Vyshu           70000         25

6 rows selected.

SQL> select first_name,salary,age from r1,r2 where r1.last_name=r2.last_name(+);

FIRST_NAME     SALARY        AGE
---------- ---------- ----------
Janu            60000         23
Vyshu           70000         22

SQL> select first_name,salary,age from r1,r2 where r1.last_name(+)=r2.last_name;

FIRST_NAME     SALARY        AGE
---------- ---------- ----------
Janu            60000         23
Vyshu           70000         22
                              25

SQL> select first_name,gender,salary,age from r1,r2 where r1.last_name=r2.last_name(+);

FIRST_NAME GENDER                   SALARY        AGE
---------- -------------------- ---------- ----------
Janu       f                         60000         23
Vyshu      f                         70000         22

SQL> select surname.last_name as last_name,sex.gender as gender from r2 surname , r2 sex where surname.gender=sex.gender;

LAST_NAME            GENDER
-------------------- --------------------
Nukala               f
Chowdary             f
Nukala               f
Chowdary             f
Kanuru               m

SQL> insert into r2 values('kansal','m',10);

1 row created.

SQL> select * from r2;

LAST_NAME            GENDER                      AGE
-------------------- -------------------- ----------
Chowdary             f                            23
Nukala               f                            22
Kanuru               m                            25
kansal               m                            10

SQL> select surname.last_name as last_name,sex.gender as gender from r2 surname , r2 sex where surname.gender=sex.gender;

LAST_NAME            GENDER
-------------------- --------------------
Nukala               f
Chowdary             f
Nukala               f
Chowdary             f
kansal               m
Kanuru               m
kansal               m
Kanuru               m

8 rows selected.

SQL> insert into r2 values('garg','f',10);

1 row created.

SQL> select surname.last_name as last_name,sex.gender as gender from r2 surname , r2 sex where surname.gender=sex.gender;

LAST_NAME            GENDER
-------------------- --------------------
garg                 f
Nukala               f
Chowdary             f
garg                 f
Nukala               f
Chowdary             f
kansal               m
Kanuru               m
kansal               m
Kanuru               m
garg                 f

LAST_NAME            GENDER
-------------------- --------------------
Nukala               f
Chowdary             f

13 rows selected.

SQL> select * from emp;

      E_ID E_NAME               DEPT                      E_AGE
---------- -------------------- -------------------- ----------
GENDER                 E_SALARY
-------------------- ----------
       201 bindhu               maths                        90
f                         40000

       202 jahnavi              physics                      25
f                         30000

       203 vyshu                Biology                      30
f                         20000


      E_ID E_NAME               DEPT                      E_AGE
---------- -------------------- -------------------- ----------
GENDER                 E_SALARY
-------------------- ----------
       204 Jai                  Chemistry                    26
m                         35000


SQL> create table empp(
  2  name varchar2(20),
  3  age number(5),
  4  salary number(10));

Table created.

SQL> insert into empp values(&a,&b,&c);
Enter value for a: 'john'
Enter value for b: 19
Enter value for c: 18000
old   1: insert into empp values(&a,&b,&c)
new   1: insert into empp values('john',19,18000)

1 row created.

SQL> /
Enter value for a: 'mark'
Enter value for b: 20
Enter value for c: 14000
old   1: insert into empp values(&a,&b,&c)
new   1: insert into empp values('mark',20,14000)

1 row created.

SQL> 'david'
SP2-0042: unknown command "'david'" - rest of line ignored.
SQL> /
Enter value for a: 'david'
Enter value for b: 17
Enter value for c: 16500
old   1: insert into empp values(&a,&b,&c)
new   1: insert into empp values('david',17,16500)

1 row created.

SQL> 'james'
SP2-0042: unknown command "'james'" - rest of line ignored.
SQL> /
Enter value for a: 'james'
Enter value for b: 17
Enter value for c: 20000
old   1: insert into empp values(&a,&b,&c)
new   1: insert into empp values('james',17,20000)

1 row created.

SQL> /
Enter value for a: 'vasavi'
Enter value for b: 23
Enter value for c: 50000
old   1: insert into empp values(&a,&b,&c)
new   1: insert into empp values('vasavi',23,50000)

1 row created.

SQL> /
Enter value for a: 'Jahnavi'
Enter value for b: 26
Enter value for c: 60000
old   1: insert into empp values(&a,&b,&c)
new   1: insert into empp values('Jahnavi',26,60000)

1 row created.

SQL> select * from empp;

NAME                        AGE     SALARY
-------------------- ---------- ----------
john                         19      18000
mark                         20      14000
david                        17      16500
james                        17      20000
vasavi                       23      50000
Jahnavi                      26      60000

6 rows selected.

SQL> create table empp1(
  2  e_id number(2),
  3  name varchar2(20),
  4  age number(5),
  5  salary number(10));

Table created.





SQL> insert into empp1 values(&a,&b,&c,&d);
Enter value for a: 1
Enter value for b: 'John'
Enter value for c: 19
Enter value for d: 17000
old   1: insert into empp1 values(&a,&b,&c,&d)
new   1: insert into empp1 values(1,'John',19,17000)

1 row created.

SQL> /
Enter value for a: 2
Enter value for b: 'vasavi'
Enter value for c: 20
Enter value for d: 20000
old   1: insert into empp1 values(&a,&b,&c,&d)
new   1: insert into empp1 values(2,'vasavi',20,20000)

1 row created.

SQL> /
Enter value for a: 3
Enter value for b: 'Jahnavi'
Enter value for c: 21
Enter value for d: 50000
old   1: insert into empp1 values(&a,&b,&c,&d)
new   1: insert into empp1 values(3,'Jahnavi',21,50000)

1 row created.

SQL> 4
SP2-0226: Invalid line number
SQL> 'david'
SP2-0042: unknown command "'david'" - rest of line ignored.
SQL> /
Enter value for a: 4
Enter value for b: 'david'
Enter value for c: 22
Enter value for d: 15000
old   1: insert into empp1 values(&a,&b,&c,&d)
new   1: insert into empp1 values(4,'david',22,15000)

1 row created.


SQL>
SQL> /
Enter value for a: 5
Enter value for b: 'vyshu'
Enter value for c: 20
Enter value for d: 60000
old   1: insert into empp1 values(&a,&b,&c,&d)
new   1: insert into empp1 values(5,'vyshu',20,60000)

1 row created.

SQL> 6
SP2-0226: Invalid line number
SQL> /
Enter value for a: 6
Enter value for b: 'james'
Enter value for c: 26
Enter value for d: 25000
old   1: insert into empp1 values(&a,&b,&c,&d)
new   1: insert into empp1 values(6,'james',26,25000)

1 row created.

SQL> select * from empp1;

      E_ID NAME                        AGE     SALARY
---------- -------------------- ---------- ----------
         1 John                         19      17000
         2 vasavi                       20      20000
         3 Jahnavi                      21      50000
         4 david                        22      15000
         5 vyshu                        20      60000
         6 james                        26      25000

6 rows selected.



SQL> create view vitual as select *from empp1 where e_id<4;

View created.


SQL> create view virtual as select *from empp1 where e_id<4;

View created.

SQL> select * from virtual;

      E_ID NAME                        AGE     SALARY
---------- -------------------- ---------- ----------
         1 John                         19      17000
         2 vasavi                       20      20000
         3 Jahnavi                      21      50000

SQL> create view aaa as select name from empp1 where salary<30000;

View created.

SQL> select * from aaa;

NAME
--------------------
John
vasavi
david
james

SQL> create or replace view virtual as select e_id,name from empp1 where salary<20000;

View created.

SQL> select * from virtual;

      E_ID NAME
---------- --------------------
         1 John
         4 david
SQL> create or replace view virtual as select * from empp1 where e_id<4;

View created.

SQL> select * from virtual;

      E_ID NAME                        AGE     SALARY
---------- -------------------- ---------- ----------
         1 John                         19      17000
         2 vasavi                       20      20000
         3 Jahnavi                      21      50000

SQL> insert into virtual values(2,'mack',19,30000);

1 row created.

SQL> select * from virtual;

      E_ID NAME                        AGE     SALARY
---------- -------------------- ---------- ----------
         1 John                         19      17000
         2 vasavi                       20      20000
         3 Jahnavi                      21      50000
         2 mack                         19      30000

SQL> insert into virtual values(5,'denmark',19,30000);

1 row created.

SQL> select * from virtual;

      E_ID NAME                        AGE     SALARY
---------- -------------------- ---------- ----------
         1 John                         19      17000
         2 vasavi                       20      20000
         3 Jahnavi                      21      50000
         2 mack                         19      30000

SQL> select * from empp1;

      E_ID NAME                        AGE     SALARY
---------- -------------------- ---------- ----------
         1 John                         19      17000
         2 vasavi                       20      20000
         3 Jahnavi                      21      50000
         4 david                        22      15000
         5 vyshu                        20      60000
         6 james                        26      25000
         2 mack                         19      30000
         5 denmark                      19      30000

8 rows selected.
SQL> update virtual set salary='40000';

4 rows updated.

SQL> select * from empp1;

      E_ID NAME                        AGE     SALARY
---------- -------------------- ---------- ----------
         1 John                         19      40000
         2 vasavi                       20      40000
         3 Jahnavi                      21      40000
         4 david                        22      15000
         5 vyshu                        20      60000
         6 james                        26      25000
         2 mack                         19      40000
         5 denmark                      19      30000

8 rows selected.

SQL> select * from virtual;

      E_ID NAME                        AGE     SALARY
---------- -------------------- ---------- ----------
         1 John                         19      40000
         2 vasavi                       20      40000
         3 Jahnavi                      21      40000
         2 mack                         19      40000

SQL> delete from virtual where e_id=1;

1 row deleted.

SQL> select * from empp1;

      E_ID NAME                        AGE     SALARY
---------- -------------------- ---------- ----------
         2 vasavi                       20      40000
         3 Jahnavi                      21      40000
         4 david                        22      15000
         5 vyshu                        20      60000
         6 james                        26      25000
         2 mack                         19      40000
         5 denmark                      19      30000

7 rows selected.