CREATE TABLE Band (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(36),
    nationality VARCHAR(36)
);
    
CREATE TABLE Venue (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(70),
    seatNum INT,
    country VARCHAR(36)
);
    
CREATE TABLE User (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(36),
    nationality VARCHAR(36)
);    

CREATE TABLE Gig (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date DATE,
    country VARCHAR(36),
    city VARCHAR(36),
    
	/*FK*/
    band_id INT NOT NULL,
    venue_id INT NOT NULL,
    FOREIGN KEY (band_id) REFERENCES Band(id),
    FOREIGN KEY (venue_id) REFERENCES Venue(id)
);  

CREATE TABLE Ticket (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ticket_code VARCHAR(72),
    paper BOOLEAN,
    
    /*FK*/
    gig_id INT NOT NULL,
    user_id INT NOT NULL,
    
    FOREIGN KEY (gig_id) REFERENCES Gig(id),
    FOREIGN KEY (user_id) REFERENCES uSER(id)
);  
    
    