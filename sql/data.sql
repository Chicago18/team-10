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
('1','Costco Wholesale Corp.', '70'),
('2', 'Bank of America Corp.', '100');

INSERT INTO posts(owner, title, content)
VALUES('0','Disability to Some; Extraordinary Ability to Others','29 years ago, I joined JPMorgan Chase with a secret – trusting no one and believing that if my secret ever leaked, it would stunt my professional growth.'),
('1', 'Adelante named top employee resource group for Latinos', 'The Adelante business resource group at JPMorgan Chase has been recognized as the best of its kind by the U.S. Hispanic Chamber of Commerce. It eclipsed more than 80 other corporate hopefuls to take the top spot. '),
('3','Being BOLD in Honor of Black History Month','Since joining JPMorgan Chase a decade ago as a senior executive assistant, Marlene Ruiz has made great strides in her career, thanks in part to her leadership in our firms Black Organization for Leadership Development (BOLD) program, a dynamic Business Resource Group with 23 global chapters.'),
('5', 'Pride is Paving the Way for Others', 'From the earliest age I can remember, diversity and acceptance had been ingrained in my family culture. My earliest memories are of working with people in my grandfather’s grocery store who were different than I was.'),
('6', 'JPMorgan Chase is committed to serving the unique needs of America’s military', 'In 2011, JPMorgan Chase and ten other companies launched the 100,000 Jobs Mission. The coalition has hired 241,833 Veterans through the first quarter of 2015 and grown to over 190 companies that represent almost every industry in the U.S. economy.'),
('8', 'Women on the Move: Creating a More Equitable World', 'Investing in the advancement of women is a key focus for JPMorgan Chase. That’s why we’re expanding our efforts on behalf of women inside and outside of the firm with Women on the Move. This is a global, firm-wide initiative that empowers female employees, clients, and consumers to build their careers, grow their businesses, and improve their financial health. ');


