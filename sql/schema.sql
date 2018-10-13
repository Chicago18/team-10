CREATE TABLE users(
  username VARCHAR(20) NOT NULL PRIMARY KEY,
  fullname VARCHAR(40) NOT NULL,
  email VARCHAR(40) NOT NULL,
  filename VARCHAR(64) NOT NULL,
  password VARCHAR(256) NOT NULL,
  created TIMESTAMP DEFAULT (DateTime('now'))
);

CREATE TABLE ERG_Information(
  ergID INTEGER NOT NULL PRIMARY KEY,
  ergName VARCHAR(100) NOT NULL,
  ergSponsor INT NOT NULL,
  zipcode INTEGER NOT NULL,
  ergCEI REAL NOT NULL,
  ergDescription VARCHAR(150)
);

CREATE TABLE ERG_Sponsor(
  sponsorID INTEGER NOT NULL PRIMARY KEY,
  sponsorName VARCHAR(40) NOT NULL,

  FOREIGN KEY(sponsorID) REFERENCES ERG_Information(ergSponsor) ON DELETE CASCADE
);

CREATE TABLE posts(
  postid INTEGER NOT NULL PRIMARY KEY,
  filename VARCHAR(64) NOT NULL,
  owner VARCHAR(20) NOT NULL,
  created TIMESTAMP DEFAULT (DateTime('now')),

  FOREIGN KEY(owner) REFERENCES users(username) ON DELETE CASCADE
);

CREATE TABLE following(
  username1 VARCHAR(20) NOT NULL,
  username2 VARCHAR(20) NOT NULL,
  created TIMESTAMP DEFAULT (DateTime('now')),

  PRIMARY KEY(username1, username2)
  FOREIGN KEY(username1) REFERENCES users(username) ON DELETE CASCADE
  FOREIGN KEY(username2) REFERENCES users(username) ON DELETE CASCADE
);

CREATE TABLE comments(
  commentid INTEGER NOT NULL PRIMARY KEY,
  owner VARCHAR(20) NOT NULL,
  postid INTEGER NOT NULL,
  text VARCHAR(1024) NOT NULL,
  created TIMESTAMP DEFAULT (DateTime('now')),

  FOREIGN KEY (owner) REFERENCES users(username) ON DELETE CASCADE
  FOREIGN KEY (postid) REFERENCES posts(postid) ON DELETE CASCADE
);

CREATE TABLE likes(
  owner VARCHAR(20) NOT NULL,
  postid INTEGER NOT NULL,
  created TIMESTAMP DEFAULT (DateTime('now')),

  PRIMARY KEY(owner, postid)
  FOREIGN KEY(owner) REFERENCES	users(username) ON DELETE CASCADE
  FOREIGN KEY(postid) REFERENCES posts(postid) ON DELETE CASCADE
);