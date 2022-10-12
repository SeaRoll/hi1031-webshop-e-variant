create table if not exists t_items (
    item_id serial primary key,
    item_name varchar(50) not null,
    item_price integer not null,
    item_description varchar(255) not null
);

create table if not exists t_users (
    user_username varchar(50) primary key,
    user_password varchar(50) not null
);

insert into t_items(item_name, item_price, item_description)
values ('coke', 200, 'venezuelan coke');
insert into t_items(item_name, item_price, item_description)
values ('hotdog', 2250, 'venezuelan hotdog');