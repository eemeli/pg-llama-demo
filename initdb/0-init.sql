create table herders (
  id serial primary key,
  name text not null
);

create table llamas (
  id serial primary key,
  name text not null,
  herder integer references herders
);
