INSERT INTO account (id, date_of_birth, email, first_name, last_name, password, role_enum, username) VALUES
  (1, '1991-12-20', 'admin@localhost.com', 'Admin', 'Account',
   '$2a$10$ijnGUDHkK1DirgybUG9cPu.gCn1ZBZxQqQYRThQ5VWPfM04BZK.H6', 'ADMIN', 'admin');
INSERT INTO account (id, date_of_birth, email, first_name, last_name, password, role_enum, username) VALUES
  (2, '1991-12-20', 'user@localhost.com', 'User', 'Account',
   '$2a$10$YnVzKDri0M6yWnCJm0h/O.dVT.T.ynX5KBsI7fsqTsThCUgBObaQ2', 'USER', 'user');


INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (1,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'CRITICAL', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (2,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  TRUE, '2016-12-23 03:43:21.330000',
                                                                                  'CRITICAL', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (3,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'IMPORTANT', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (4,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  TRUE, '2016-12-23 03:43:21.330000',
                                                                                  'MODERATE', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (5,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'CRITICAL', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (6,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'CRITICAL', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (7,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'CRITICAL', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (8,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'MODERATE', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (9,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'MODERATE', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (10,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  TRUE, '2016-12-23 03:43:21.330000',
                                                                                  'MODERATE', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (11,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  TRUE, '2016-12-23 03:43:21.330000',
                                                                                  'IMPORTANT', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (12,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'MODERATE', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (13,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'MODERATE', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (14,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  TRUE, '2016-12-23 03:43:21.330000',
                                                                                  'MODERATE', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (15,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  TRUE, '2016-12-23 03:43:21.330000',
                                                                                  'MODERATE', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (31,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  TRUE, '2016-12-23 03:43:21.330000',
                                                                                  'IMPORTANT', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (32,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'MODERATE', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (33,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'MODERATE', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (36,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'IMPORTANT', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (37,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'IMPORTANT', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (38,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'IMPORTANT', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (39,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'IMPORTANT', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (40,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (41,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (42,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (43,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (44,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (61,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (62,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (63,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (64,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (65,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (66,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (67,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (68,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (69,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (70,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (71,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (72,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (73,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (74,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (75,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 2);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (76,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (77,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (78,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (79,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (80,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (81,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (82,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);
INSERT INTO todo_item (id, details, done, due_time, priority, account_id) VALUES (83,
                                                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                                                                                  FALSE, '2016-12-23 03:43:21.330000',
                                                                                  'NOT_SPECIFIED', 1);