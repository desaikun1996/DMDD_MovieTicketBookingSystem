

/**************************************************************************************************************/
/*-------------------------------------------  DATA INSERTION  -----------------------------------------------*/
/**************************************************************************************************************/

/*Data Insertion in Table - Customer*/
INSERT INTO Customer (CustomerUName,CustomerPassword,CustomerName,CustomerPhoneNumber,CustomerEmail,CustomerDOB,SubscriptionID) VALUES 
('joe123','dsda2323','Joe',4772221246,'abewindler@schoen.com','1996-05-09',1)
INSERT INTO Customer (CustomerUName,CustomerPassword,CustomerName,CustomerPhoneNumber,CustomerEmail,CustomerDOB,SubscriptionID) VALUES 
('sam123','dasd3$#2e2','Sam Morrow',5853008070,'champlin.effie@grant.org','1994-07-11',1)
INSERT INTO Customer (CustomerUName,CustomerPassword,CustomerName,CustomerPhoneNumber,CustomerEmail,CustomerDOB,SubscriptionID) VALUES 
('garry123','fdsfv32','Garrison Douglas',4349398965,'garrison.douglas@gmail.com','1994-07-11',1)
INSERT INTO Customer (CustomerUName,CustomerPassword,CustomerName,CustomerPhoneNumber,CustomerEmail,CustomerDOB,SubscriptionID) VALUES 
('brend','adfd%sc2#32','Brendan Giovani',6602187247,'giovani72@yahoo.com','1994-07-11',2)
INSERT INTO Customer (CustomerUName,CustomerPassword,CustomerName,CustomerPhoneNumber,CustomerEmail,CustomerDOB,SubscriptionID) VALUES 
('senger21','sdas354','Senger Hermin',4067375114,'senger.herminio@yahoo.com','1994-05-25',2)
INSERT INTO Customer (CustomerUName,CustomerPassword,CustomerName,CustomerPhoneNumber,CustomerEmail,CustomerDOB,SubscriptionID) VALUES 
('nicols2','s%df22','Nicolas Anahi',2175849501,'nicolas.anahi@frami.net','2000-03-04',2) 
INSERT INTO Customer (CustomerUName,CustomerPassword,CustomerName,CustomerPhoneNumber,CustomerEmail,CustomerDOB,SubscriptionID) VALUES 
('elmir21','casca22','Elmira Lee',5853008070,'elmira88@yahoo.com','1999-11-19',2) 
INSERT INTO Customer (CustomerUName,CustomerPassword,CustomerName,CustomerPhoneNumber,CustomerEmail,CustomerDOB,SubscriptionID) VALUES 
('holden323','dd#csd343','Holden Douglas',2155438228,'Holden@yahoo.com','1997-01-15',1)
INSERT INTO Customer (CustomerUName,CustomerPassword,CustomerName,CustomerPhoneNumber,CustomerEmail,CustomerDOB,SubscriptionID) VALUES 
('shyanne2321','fsd122','Shyanne Shepard',2623286861,'vrempel@gleichner.info','1985-03-10',2) 
INSERT INTO Customer (CustomerUName,CustomerPassword,CustomerName,CustomerPhoneNumber,CustomerEmail,CustomerDOB,SubscriptionID) VALUES 
('zelma99','asd%e2','Zelma Boyer',8574378888,'zelma86@gmail.com','1994-08-21',1) 


/*Data Insertion in Table - Subscription*/
insert into Subscription values(1,'Student',20)
insert into Subscription values(2,'Premium',25)

/*Data Insertion in Table - Student*/
insert into student values (1003,'NEU','01/25/2021','05/03/2023')
insert into student values (1005,'NYU','08/01/2021','05/03/2025')
insert into student values (1006,'ASU','07/08/2020','05/03/2022')
insert into student values (1007,'NEU','09/15/2019','12/03/2021')
insert into student values (1008,'CSU','07/09/2021','05/03/2023')
insert into student values (1012,'Arizona','07/20/2019','12/03/2021')
insert into student values (1014,'Syracuse','09/18/2021','05/03/2023')

/*Data Insertion in Table - Premium*/
insert into premium values (1002,125,'09/01/2019','01/23/2028')
insert into premium values (1004,8481,'01/28/2021','12/21/2024')
insert into premium values (1008,518,'02/01/2020','05/15/2021')
insert into premium values (1009,854,'03/08/2016','11/15/2025')
insert into premium values (1010,1274,'11/17/2021','05/09/2028')
insert into premium values (1011,1898,'02/28/2017','08/01/2023')
insert into premium values (1013,1898,'10/02/2018','03/20/2022')

/*Data Insertion in Table - Movie*/
INSERT Into Movie (MovieName,[Description],Duration,[Language],Genre) VALUES
('Cleopatra','The fabled queen of Egypts affair with Roman general Marc Antony is ultimately disastrous for both of them',100,'English','Drama/History')
INSERT Into Movie (MovieName,[Description],Duration,[Language],Genre) VALUES
('Sherlock Holmes','When a couple of swindlers hold young Alice Faulkner against her will in order to discover the whereabouts of letters which could spell scandal for the royal family, Sherlock Holmes is on the case.',116,'English','Mystery')
INSERT Into Movie (MovieName,[Description],Duration,[Language]) VALUES
('Frankenstein','An obsessed scientist assembles a living being from parts of exhumed corpses.',70,'English/Latin')
INSERT Into Movie (MovieName,[Description],Duration,[Genre]) VALUES
('A Free Soul','An alcoholic lawyer who successfully defended a notorious gambler on a murder charge objects when his free-spirited daughter becomes romantically involved with him.',110,'Crime')
INSERT Into Movie (MovieName,[Description],Duration,[Language],[Genre]) VALUES
('Iron Man','Prizefighter Mason loses his opening fight so wife Rose leaves him for Hollywood. Without her around Mason trains and starts winning. Rose comes back and wants Mason to dump his manager Regan and replace him with her secret lover Lewis.',74,'English','Drama')
INSERT Into Movie (MovieName,[Description],Duration,[Genre]) VALUES
('Behind the Mask','An undercover Federal officer serving time in prison fakes his escape in order to infiltrate a heroin smuggling ring.',90,'Crime')
INSERT Into Movie (MovieName,[Description],Duration,[Language],Genre) VALUES
('Shang-Chi and the Legend of the Ten Rings ','Martial-arts master Shang-Chi confronts the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization.',132,'English','Action')
INSERT Into Movie (MovieName,[Description],[Language],Genre) VALUES
('Free Guy','When a bank teller discovers he is actually a background player in an open-world video game, he decides to become the hero of his own story -- one that he can rewrite himself. In a world where there is no limits, he is determined to save the day his way before it is too late, and maybe find a little romance with the coder who conceived him','English','Comedy')
INSERT Into Movie (MovieName,[Description],[Language],Genre) VALUES
('The Occupant','Javier Munoz, once a successful executive, makes the fateful decision to leave his home, which him and his family can no longer afford.','Spanish','Thriller')
INSERT Into Movie (MovieName,[Description],Duration,[Language],Genre) VALUES
('Sooryavanshi','Starting off from where Akshay Kumar`s character was introduced in Simmba, Sooryavanshi traces the acts and serious antics of DCP Veer Sooryavanshi, the chief of the Anti-Terrorism Squad in India.',150,'Hindi','Action')
INSERT Into Movie (MovieName,[Description],Duration,[Language],Genre) VALUES
('Akhanda','A fierce devotee of Lord Shiva stands tall against evildoers.',160,'Telugu','Drama')
INSERT Into Movie (MovieName,[Description],Duration,Genre) VALUES
('House of Gucci','When Patrizia Reggiani, an outsider from humble beginnings, marries into the Gucci family, her unbridled ambition triggers a reckless spiral of betrayal, decadence, revenge, and ultimately...murder.',156,'Crime')
INSERT Into Movie (MovieName,[Description],[Language],Duration,Genre) VALUES
('Kurup','Drawing inspiration from a real-life incident, Kurup is an adventure drama which is based on Kerala`s most eluding criminal who has been on the run since the mid-1980s.','Tamil',157,'Crime')
INSERT Into Movie (MovieName,[Description],[Language],Genre) VALUES
('Eiffel','The government is asking Eiffel to design something spectacular for the 1889 Paris World Fair, but Eiffel simply wants to design the subway. Suddenly, everything changes when Eiffel crosses paths with a mysterious woman from his past.','French','Drama')
INSERT Into Movie (MovieName,[Description],[Language],Genre) VALUES
('Drushyam 2','he Resumption, or simply Drushyam 2 is an Indian Telugu-language crime drama film written and directed by Jeethu Joseph. It is a remake of the Malayalam film Drishyam 2 and a sequel to Drushyam','Malyalam','Drama')
INSERT Into Movie (MovieName,[Description],Duration,[Language],Genre) VALUES
('Venom: Let There Be Carnage','Eddie Brock is still struggling to coexist with the shape-shifting extraterrestrial Venom. When deranged serial killer Cletus Kasady also becomes host to an alien symbiote, Brock and Venom must put aside their differences to stop his reign of terror.',105,'English','Action')
INSERT Into Movie (MovieName,[Description],Duration,[Language],Genre) VALUES
('Red Notice','In the world of international crime, an Interpol agent attempts to hunt down and capture the worlds most wanted art thief.',116,'English','Comedy')


/*Data Insertion in Table - Location*/
Insert Into [Location] (City,[State], Zipcode) VALUES ('Boston','MA','02101')
Insert Into [Location] (City,[State], Zipcode) VALUES ('New York','NY','10001')
Insert Into [Location] (City,[State], Zipcode) VALUES ('Newark','NJ','07101')
Insert Into [Location] (City,[State], Zipcode) VALUES ('San Diego','CA','22400')
Insert Into [Location] (City,[State], Zipcode) VALUES ('Richmond','VA','23173')
Insert Into [Location] (City,[State], Zipcode) VALUES  ('Dallas','TX','75001')
Insert Into [Location] (City,[State], Zipcode) VALUES  ('Fairfax','VA','22030')
Insert Into [Location] (City,[State], Zipcode) VALUES  ('Atlanta','GA','30301')
Insert Into [Location] (City,[State], Zipcode) VALUES  ('Long Beach','CA','90712')
Insert Into [Location] (City,[State], Zipcode) VALUES  ('Seattle','WA','98101')
Insert Into [Location] (City,[State], Zipcode) VALUES ('Buffalo','NY','14201')
Insert Into [Location] (City,[State], Zipcode) VALUES ('Albany','NY','12084')
Insert Into [Location] (City,[State], Zipcode) VALUES ('Philadelphia ','PA','09019')
Insert Into [Location] (City,[State], Zipcode) VALUES ('Phoenix ','AZ','85001')
Insert Into [Location] (City,[State], Zipcode) VALUES ('Columbus ','OH','43004')
Insert Into [Location] (City,[State], Zipcode) VALUES ('Chicago ','IL','60007')
Insert Into [Location] (City,[State], Zipcode) VALUES ('Baltimore ','MD','21201')


/*Data Insertion in Table - Theatre*/
select * from theatre
insert Into Theatre (TheatreName,LocationID) VALUES ('AMC',1)
insert Into Theatre (TheatreName,LocationID) VALUES ('Regal Entertainment Group',2)
insert Into Theatre (TheatreName,LocationID) VALUES ('Artcraft Theatre',3)
insert Into Theatre (TheatreName,LocationID) VALUES ('Cinemark Theatres',4)
insert Into Theatre (TheatreName,LocationID) VALUES ('Astor Theater',4)
insert Into Theatre (TheatreName,LocationID) VALUES ('Marcus Corporation',4)
insert Into Theatre (TheatreName,LocationID) VALUES ('Stages Theatre',3)
insert Into Theatre (TheatreName,LocationID) VALUES ('AMC Anaheim Gardenwalk 6',1)
insert Into Theatre (TheatreName,LocationID) VALUES ('7th Street Theatre',5)
insert Into Theatre (TheatreName,LocationID) VALUES ('777 Theatre',6)
insert Into Theatre (TheatreName,LocationID) VALUES ('AMC 34th Street 14',7)
insert Into Theatre (TheatreName,LocationID) VALUES ('AMC Broadstreet 7',19)
insert Into Theatre (TheatreName,LocationID) VALUES ('Harkins Theatres',20)
insert Into Theatre (TheatreName,LocationID) VALUES ('AMC Classic Findlay 12',15)
insert Into Theatre (TheatreName,LocationID) VALUES ('Regal Entertainment Group',16)
insert Into Theatre (TheatreName,LocationID) VALUES ('MC Dine-In Rio Cinemas 18',17)

/*Data Insertion in Table - Screen*/
insert into Screen values (200,1)
insert into Screen values (100,1)
insert into Screen values (50,2)
insert into Screen values (25,2)
insert into Screen values (200,8)
insert into Screen values (100,8)
insert into Screen values (50,8)
insert into Screen values (25,14)
insert into Screen values (200,14)
insert into Screen values (100,14)
insert into Screen values (50,14)
insert into Screen values (25,16)
insert into Screen values (100,20)
insert into Screen values (50,20)
insert into Screen values (25,10)
insert into Screen values (200,10)
insert into Screen values (100,19)
insert into Screen values (50,19)
insert into Screen values (25,19)

/*Data Insertion in Table - Seat*/
insert into Seat values (1,'Balcony',20,NULL)
insert into Seat values (1,'Front',5,NULL)
insert into Seat values (1,'Upper',7,NULL)
insert into Seat values (1,'Centre',10,NULL)
insert into Seat values (1,'Centre',10,NULL)
insert into Seat values (2,'Upper',10,NULL)
insert into Seat values (2,'Upper',10,NULL)
insert into Seat values (2,'Front',7,NULL)
insert into Seat values (2,'Upper',10,NULL)
insert into Seat values (2,'Upper',10,NULL)
insert into Seat values (3,'Balcony',25,NULL)
insert into Seat values (3,'Balcony',25,NULL)
insert into Seat values (3,'Balcony',25,NULL)
insert into Seat values (3,'Balcony',25,NULL)
insert into Seat values (3,'Balcony',25,NULL)
insert into Seat values (4,'Centre',5,NULL)
insert into Seat values (4,'Centre',5,NULL)
insert into Seat values (4,'Centre',3,NULL)
insert into Seat values (4,'Centre',3,NULL)
insert into Seat values (4,'Centre',3,NULL)


/*Data Insertion in Table - Feedback*/
INSERT INTO Feedback (Feedback_Description,MovieRating,CustomerID,MovieID) VALUES
('The life, times and love affairs of the famed Egyptian queen confronting the might of the Roman Empire, first in the noble guise of Julius Caesar, then a passionate Marc Anthony. But in a swirl of politics and murder, tragedy will finally undo her',5,1002,200)
INSERT INTO Feedback (Feedback_Description,MovieRating,MovieID) VALUES
('Running at just over four hours, it is as spectacular, lush and extravagant as the studio would have liked its audience to believe. But it also has moments of mind-numbing boredom as the plot  slowed by extraneous dialogue  drags from Egypt to Rome',4,200)
INSERT INTO Feedback (Feedback_Description,MovieRating,CustomerID,MovieID) VALUES
('An entertaining update of the legendary detective that succeeds largely by the chemistry between Robert Downey Jr. and Jude Law',5,1000,201)
INSERT INTO Feedback (Feedback_Description,MovieRating,MovieID) VALUES
('Its violent, tragic and exciting all at the same time and it has something to say about playing God and how we treat things we dont understand',3,202)
INSERT INTO Feedback (Feedback_Description,MovieRating,CustomerID,MovieID) VALUES
('When all is said and done, this is, without a doubt, the Robert Downey Jr. show from start to finish.',3,1011,204)
INSERT INTO Feedback (Feedback_Description,MovieRating,CustomerID,MovieID) VALUES
('A fun two-hours thanks to a top cast lead by a charismatic Robert Downey Jr. Most of the effects still hold up and the action scenes are still exciting.',2,1011,204)
INSERT INTO Feedback (Feedback_Description,MovieRating,MovieID) VALUES
('This is Downey at the top of his game, delivering a performance full of humor and self-awareness.',5,204)
INSERT INTO Feedback (Feedback_Description,MovieRating,CustomerID,MovieID) VALUES
('An interesting and intelligent take on a well cemented sub genre, complete with trope inspired parodies and even the odd twist.',1,1010,205)
INSERT INTO Feedback (Feedback_Description,MovieRating,CustomerID,MovieID) VALUES
('pretty nice but some flaws still good',4,1009,205)
INSERT INTO Feedback (Feedback_Description,MovieRating,CustomerID,MovieID) VALUES
('The movie was hands down one of my favorite marvel movies if not the favorite. 1st I love all the camera angles it was filmed beautifully with the lighting and close ups. The action scene were great, yes some of them weren’t fast and hard hitting like were used to in the MCU, but they were put together great and choreographed perfectly',2,1009,206)
INSERT INTO Feedback (Feedback_Description,MovieRating,MovieID) VALUES
('Shang-Chi and the Legend of the Ten Rings is absolutely on my list of favorite Marvel movies.',5,206)
INSERT INTO Feedback (Feedback_Description,MovieRating,MovieID) VALUES
('t’s a great addition to the Marvel Universe, as well as the action genre.  Shang Chi is stand-alone enough that you can see it without having seen every other Marvel movie',5,206)


/*Data Insertion in Table - ScreenMovie*/
insert into ScreenMovie values (1,216,'11/29/2021 08:00:00','11/29/2021 11:30:00')
insert into ScreenMovie values (1,212,'11/29/2021 08:00:00','11/29/2021 11:30:00')
insert into ScreenMovie values (2,206,'11/29/2021 08:00:00','11/29/2021 11:30:00')
insert into ScreenMovie values (2,206,'11/29/2021 08:00:00','11/29/2021 15:30:00')
insert into ScreenMovie values (2,201,'11/29/2021 08:00:00','11/29/2021 11:30:00')
insert into ScreenMovie values (2,208,'11/29/2021 08:00:00','11/29/2021 11:30:00')
insert into ScreenMovie values (3,213,'11/29/2021 08:00:00','11/29/2021 11:30:00')