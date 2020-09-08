ALTER TABLE contacts
  MODIFY contact_id bigint not null unique auto_increment,
  MODIFY email varchar(40) null unique;
