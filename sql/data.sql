INSERT INTO users(username, fullname, email, filename, password, created)
VALUES ('awdeorio', 'Andrew DeOrio', 'awdeorio@umich.edu', 'e1a7c5c32973862ee15173b0259e3efdb6a391af.jpg', 'sha512$a45ffdcc71884853a2cba9e6bc55e812$c739cef1aec45c6e345c8463136dc1ae2fe19963106cf748baf87c7102937aa96928aa1db7fe1d8da6bd343428ff3167f4500c8a61095fb771957b4367868fb8', DateTime('now')),
('jflinn', 'Jason Flinn', 'jflinn@umich.edu', '505083b8b56c97429a728b68f31b0b2a089e5113.jpg', 'sha512$a45ffdcc71884853a2cba9e6bc55e812$c739cef1aec45c6e345c8463136dc1ae2fe19963106cf748baf87c7102937aa96928aa1db7fe1d8da6bd343428ff3167f4500c8a61095fb771957b4367868fb8', DateTime('now')),
('michjc', 'Michael Cafarella', 'michjc@umich.edu', '5ecde7677b83304132cb2871516ea50032ff7a4f.jpg', 'sha512$a45ffdcc71884853a2cba9e6bc55e812$c739cef1aec45c6e345c8463136dc1ae2fe19963106cf748baf87c7102937aa96928aa1db7fe1d8da6bd343428ff3167f4500c8a61095fb771957b4367868fb8', DateTime('now')),
('jag', 'H.V. Jagadish', 'jag@umich.edu', '73ab33bd357c3fd42292487b825880958c595655.jpg', 'sha512$a45ffdcc71884853a2cba9e6bc55e812$c739cef1aec45c6e345c8463136dc1ae2fe19963106cf748baf87c7102937aa96928aa1db7fe1d8da6bd343428ff3167f4500c8a61095fb771957b4367868fb8', DateTime('now'));

INSERT INTO posts(postid, filename, owner, created)
VALUES ('1', '122a7d27ca1d7420a1072f695d9290fad4501a41.jpg', 'awdeorio', DateTime('now')),
('2', 'ad7790405c539894d25ab8dcf0b79eed3341e109.jpg', 'jflinn', DateTime('now')),
('3', '9887e06812ef434d291e4936417d125cd594b38a.jpg', 'awdeorio', DateTime('now')),
('4', '2ec7cf8ae158b3b1f40065abfb33e81143707842.jpg', 'jag', DateTime('now'));

INSERT INTO following(username1, username2, created)
VALUES('awdeorio', 'jflinn', DateTime('now')),
('awdeorio', 'michjc', DateTime('now')),
('jflinn', 'awdeorio', DateTime('now')),
('jflinn', 'michjc', DateTime('now')),
('michjc', 'awdeorio', DateTime('now')),
('michjc', 'jag', DateTime('now')),
('jag','michjc', DateTime('now'));

INSERT INTO comments(commentid, owner, postid, text, created)
VALUES('1','awdeorio','3','#chickensofinstagram', DateTime('now')),
('2','jflinn','3','I <3 chickens', DateTime('now')),
('3','michjc','3','Cute overload!', DateTime('now')),
('4','awdeorio','2','Sick #crossword', DateTime('now')),
('5','jflinn','1','Walking the plank #chickensofinstagram', DateTime('now')),
('6','awdeorio','1','This was after trying to teach them to do a #crossword', DateTime('now')),
('7','jag','4','Saw this on the diag yesterday!', DateTime('now'));

INSERT INTO likes(owner, postid, created)
VALUES('awdeorio', '1', DateTime('now')),
('michjc', '1', DateTime('now')),
('jflinn', '1', DateTime('now')),
('awdeorio', '2', DateTime('now')),
('michjc', '2', DateTime('now')),
('awdeorio', '3', DateTime('now'));

INSERT INTO ERG_Information(ergID, ergName, ergSponsor, ergEmail, zipcode, ergDescription) 
VALUES('0', 'Access Ability', '0', 'AccessAbility@email.com', '60603', 'Fosters a greater awareness and appreciation of the unique backgrounds, styles and perspectives of people with disabilities. Membership is open to those affected by disabilities, care for people with disabilities, or are interested in disability issues.'),
('1', 'Adelante', 'J.P. Morgan', 'Adelante@email.com', '60604', 'Promotes professional development and leadership opportunities for Hispanic and Latino employees.'),
('2', 'AsPIRE', '0', 'AsPIRE@email.com', '60605', 'Enhances the professional development of employees of Asian heritage.'),
('3', 'BOLD', '0', 'BOLD@email.com', '60606', 'Provides employees, and specifically those of African descent, with an empowering environment that focuses on professional and personal development in support of the companys business goals and initiatives.'),
('4', 'NextGen', '0', 'NextGen@email.com', '60607','Serves as a forum for recent university graduates by providing professional development and mobility resources for early career professionals.'),
('5', 'PRIDE', '0', 'PRIDE@mail.com', '60608', 'Engages and supports LGBT employees and allies, and helps management continue to promote an inclusive environment within the firm.'),
('6', 'SAGE', '0', 'SAGE@email.com', '60609', 'Partners with all lines of business, globally and at all levels of management to promote professional excellence throughout the firm.'),
('7', 'VETS', '0', 'VETS@email.com', '60610', 'Serves as a forum for military veterans, retirees, reservists, National Guard, military alumni and their supporters that focuses on the contributions that military veterans make to the firm and the community.'),
('8', 'WIN', '0', 'WIN@email.com', '60611', 'Provides access to the tools that enable the successful, development, advancement and retention of women at all levels of the firm.');

INSERT INTO ERG_Sponsor(sponsorID, sponsorName, sponsorCEI)
VALUES('0','J.P. Morgan', '100'),
('1','Costco Wholesale Corp.', '70');

