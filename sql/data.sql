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
VALUES('0', 'Access Ability', '0', 'AccessAbility@email.com', '48104', 'Fosters a greater awareness and appreciation of the unique backgrounds, styles and perspectives of people with disabilities. Membership is open to those affected by disabilities, care for people with disabilities, or are interested in disability issues.'),
('1', 'Adelante', 'J.P. Morgan', 'Adelante@email.com', '18914', 'Promotes professional development and leadership opportunities for Hispanic and Latino employees.'),
('2', 'AsPIRE', '0', 'AsPIRE@email.com', '19807', 'Enhances the professional development of employees of Asian heritage.'),
('3', 'BOLD', '0', 'BOLD@email.com', '55421', 'Provides employees, and specifically those of African descent, with an empowering environment that focuses on professional and personal development in support of the companys business goals and initiatives.'),
('4', 'NextGen', '0', 'NextGen@email.com', '55116','Serves as a forum for recent university graduates by providing professional development and mobility resources for early career professionals.'),
('5', 'PRIDE', '0', 'PRIDE@mail.com', '27514', 'Engages and supports LGBT employees and allies, and helps management continue to promote an inclusive environment within the firm.'),
('6', 'SAGE', '0', 'SAGE@email.com', '83254', 'Partners with all lines of business, globally and at all levels of management to promote professional excellence throughout the firm.'),
('7', 'VETS', '0', 'VETS@email.com', '49036', 'Serves as a forum for military veterans, retirees, reservists, National Guard, military alumni and their supporters that focuses on the contributions that military veterans make to the firm and the community.'),
('8', 'WIN', '0', 'WIN@email.com', '29020', 'Provides access to the tools that enable the successful, development, advancement and retention of women at all levels of the firm.');

INSERT INTO ERG_Sponsor(sponsorID, sponsorName, sponsorCEI)
VALUES('0','J.P. Morgan', '100'),
('1','Costco Wholesale Corp.', '70');

