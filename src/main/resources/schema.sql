create table if not exists event(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    date TEXT
);

create table if not exists sponsor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    industry TEXT
);

create table if not exists event_sponsor(
    eventId INT,
    sponsorId INT,
    PRIMARY KEY (eventId, sponsorId),
    FOREIGN KEY (eventId) REFERENCES event(id),
    FOREIGN KEY (sponsorId) REFERENCES sponsor(id)
);
