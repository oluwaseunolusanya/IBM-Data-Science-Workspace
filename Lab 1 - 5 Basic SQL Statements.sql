create table INSTRUCTOR (ins_id integer NOT NULL,
						 lastname varchar(60) NOT NULL, 
						 firstname varchar(60) NOT NULL, 
						 city varchar(60), 
						 country char(2),
						 primary key(ins_id));

insert into INSTRUCTOR (ins_id, lastname, firstname, city, country)
     values	(1, 'Ahuja', 'Rav', 'Toronto', 'CA'),
            (2, 'Chong', 'Raul', 'Toronto', 'CA'),
            (3, 'Vasudevan', 'Hima', 'Chicago', 'US');
								
select * from INSTRUCTOR;
								
select firstname, lastname, country 
  from INSTRUCTOR 
 where city = 'Toronto';
								
update INSTRUCTOR
   set city = 'Markham'
 where firstname = 'Rav';

delete from INSTRUCTOR
      where firstname = 'Raul';