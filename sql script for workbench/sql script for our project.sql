use test;
select * from users;
select * from placement;
select * from user_registration;
INSERT INTO `test`.`users` (`id`, `email`, `first_name`, `last_name`, `password`, `user_name`, `admin`) VALUES ('2', 'admin@gmail.com', 'admin', 'admin', 'admin', 'admin', TRUE);