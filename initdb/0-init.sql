create table herders (
  id serial primary key,
  name text not null
);

create table llamas (
  id serial primary key,
  name text not null,
  herder integer references herders
);

create user graphql;
grant usage on schema public to graphql;
grant select on all tables in schema public to graphql;
grant select on all sequences in schema public to graphql;
