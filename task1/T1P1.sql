/* Q1 create a new database and then create a table in that*/
create database SQLproject;
use SQLproject;

create table states
(
	StateID int not null auto_increment,
	State varchar(255),
    Capital varchar(255),
    Population int,
    State_Area int,
    Famous_People varchar(255),
    Nickname varchar(255),
    State_Union int,
    State_Bird varchar(255),
    primary key(StateID)
);

drop table states;

select * from states;
insert into states(State,Capital,Population,State_Area,Famous_People,Nickname,State_Union,State_Bird)
values('Alaska','Juneau',479000,586412,'Joe Juneau','Last Frontier',1959,'Ptarmigan');

insert into states(State,Capital,Population,State_Area,Famous_People,Nickname,State_Union,State_Bird)
values('Wisconsin','Madison',4751000,56154,'Spencer Tracy','Badger State',1848,'Robin');

/* Q2 List the states that entered the union between 1850-1920, inclusive */
select state from states where State_Union>=1850 and State_Union<=1920;

/* Q3 List the states with areas of less than 60,000 square miles that also have more than 10,000,000 people. */
select state from states where State_Area<60000 and Population>10000000;

/* Q4 Now arrange the entire data base by population from smallest to largest – capture
your results into a temporary table and copy the contents to a new table called
Famous_sort . */
select * from states order by population;

create table temp as select * from states order by population;

select * from temp;

create table Famous_Sort
select StateID,State,Capital,Population,State_Area,Famous_people,Nickname,State_Union,State_Bird
from temp
where StateID>=1 and StateID<=14;

select * from Famous_Sort;

