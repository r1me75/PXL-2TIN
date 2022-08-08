REM   Script:   creatie tabellen voor bibliotheek Hasselt

SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 80
SET TRIMSPOOL ON
SET TAB OFF
SET PAGESIZE 100
SET ECHO OFF 
CLEAR SCREEN

REM *******************************************************************
REM drop tables
REM *******************************************************************
DROP TABLE loans;
DROP TABLE copies;
DROP TABLE book_genres;
DROP TABLE book_contributors;
DROP TABLE books;
DROP TABLE series;
DROP TABLE publishers;
DROP TABLE contributor_awards;
DROP TABLE contributor_nominations;
DROP TABLE awards;
DROP TABLE genres;
DROP TABLE contributor_extras;
DROP TABLE locations;
DROP TABLE contributors;
DROP TABLE members;
DROP TABLE location_categories;


Prompt *************************************************
Prompt --> creatie en insert in table members
Prompt *************************************************

CREATE TABLE members(
memberid         VARCHAR2(11)
                 CONSTRAINT mem_PK PRIMARY KEY,
lastname         VARCHAR2(20)
                 CONSTRAINT mem_lnm_nn NOT NULL,
firstname        VARCHAR2(20)
);

INSERT INTO members  VALUES(	'00031415260'	,	'Ann'	,	'Claes'	);
INSERT INTO members  VALUES(	'55111012458'	,	'Marie'	,	'Vandenborre'	);
INSERT INTO members  VALUES(	'56051717997'	,	'Lina'	,	'Tilkens'	);
INSERT INTO members  VALUES(	'04011924840'	,	'Kyril'	,	'Kuppens'	);
INSERT INTO members  VALUES(	'55121956832'	,	'Anna'	,	'Borders'	);
INSERT INTO members  VALUES(	'57101918592'	,	'Patrick'	,	'Clerinx'	);
INSERT INTO members  VALUES(	'05042720734'	,	'Marcel'	,	'Vandenborre'	);
INSERT INTO members  VALUES(	'57061057910'	,	'Rita'	,	'Terriers'	);
INSERT INTO members  VALUES(	'61021260066'	,	'Christian'	,	'Boes'	);
INSERT INTO members  VALUES(	'58011512523'	,	'Lotte'	,	'Verstreken'	);
INSERT INTO members  VALUES(	'58082553598'	,	'Roger'	,	'Klimop'	);
INSERT INTO members  VALUES(	'58052423709'	,	'Patricia'	,	'Appelmans'	);
INSERT INTO members  VALUES(	'72041345234'	,	'An'	,	'Borders'	);
INSERT INTO members  VALUES(	'55092718473'	,	'Michel'	,	'Boes'	);
INSERT INTO members  VALUES(	'58091683756'	,	'Annemie'	,	'Jacobs'	);
INSERT INTO members  VALUES(	'62121388288'	,	'Hélène'	,	'Jacquelot'	);
INSERT INTO members  VALUES(	'60102886022'	,	'Marc'	,	'Jacquelot'	);
INSERT INTO members  VALUES(	'55061490554'	,	'Valerie'	,	'Jacquelot'	);
INSERT INTO members  VALUES(	'59022195086'	,	'Hilde'	,	'Jacobs'	);
INSERT INTO members  VALUES(	'65051811556'	,	'Evelien'	,	'Van Roy'	);
INSERT INTO members  VALUES(	'63041710478'	,	'Katrien'	,	'Van Roy'	);
INSERT INTO members  VALUES(	'57112092820'	,	'Ivo'	,	'Van Roy'	);
INSERT INTO members  VALUES(	'59111158988'	,	'Eric'	,	'Teerain'	);
INSERT INTO members  VALUES(	'77121118024'	,	'Adam'	,	'Teerain'	);
INSERT INTO members  VALUES(	'05081027106'	,	'Jonas'	,	'Beervoets'	);
INSERT INTO members  VALUES(	'60031523828'	,	'Ann'	,	'Witte'	);
INSERT INTO members  VALUES(	'70022634194'	,	'Marie'	,	'Yilmaz'	);
INSERT INTO members  VALUES(	'00091129372'	,	'Niels'	,	'Yilmaz'	);
INSERT INTO members  VALUES(	'60081612642'	,	'Miet'	,	'Vandenborre'	);
INSERT INTO members  VALUES(	'60012518235'	,	'Jean'	,	'Terriers'	);
INSERT INTO members  VALUES(	'61042335561'	,	'Gert'	,	'Witte'	);
INSERT INTO members  VALUES(	'61061118830'	,	'André'	,	'De Cuyper'	);
INSERT INTO members  VALUES(	'58031818116'	,	'Marie'	,	'Borders'	);
INSERT INTO members  VALUES(	'61072297352'	,	'Filip'	,	'Van Roy'	);
INSERT INTO members  VALUES(	'71082714790'	,	'Puck'	,	'Van Roy'	);
INSERT INTO members  VALUES(	'69012613712'	,	'Emmeline'	,	'Van Roy'	);
INSERT INTO members  VALUES(	'62092812761'	,	'Lies'	,	'Alberty'	);
INSERT INTO members  VALUES(	'81121214427'	,	'Bram'	,	'Geldof'	);
INSERT INTO members  VALUES(	'64102381626'	,	'Tom'	,	'Alberty'	);
INSERT INTO members  VALUES(	'62102755754'	,	'Nicole'	,	'Tilkens'	);
INSERT INTO members  VALUES(	'69052513713'	,	'Piet'	,	'Terriers'	);
INSERT INTO members  VALUES(	'63052443262'	,	'Rien'	,	'Aerts'	);
INSERT INTO members  VALUES(	'70111684860'	,	'Jeannine'	,	'Aerts'	);
INSERT INTO members  VALUES(	'59071227860'	,	'Kris'	,	'Appelmans'	);
INSERT INTO members  VALUES(	'63072361144'	,	'Marcel'	,	'Clerinx'	);
INSERT INTO members  VALUES(	'60092654676'	,	'Willy'	,	'Daenen'	);
INSERT INTO members  VALUES(	'64092215617'	,	'Ben'	,	'Yilmaz'	);
INSERT INTO members  VALUES(	'87071112047'	,	'Leen'	,	'Yilmaz'	);
INSERT INTO members  VALUES(	'65022319068'	,	'Monique'	,	'Geyskens'	);
INSERT INTO members  VALUES(	'65031550963'	,	'Matthias'	,	'Klawitter'	);
INSERT INTO members  VALUES(	'73032819544'	,	'Paul'	,	'Keuninckx'	);
INSERT INTO members  VALUES(	'04042815022'	,	'Omer'	,	'Keuninckx'	);
INSERT INTO members  VALUES(	'65071713475'	,	'Dennis'	,	'Franssen'	);
INSERT INTO members  VALUES(	'64121730960'	,	'Alice'	,	'Claes'	);
INSERT INTO members  VALUES(	'66061832038'	,	'Juliette'	,	'Kuppens'	);
INSERT INTO members  VALUES(	'66092321329'	,	'Alain'	,	'Klawitter'	);
INSERT INTO members  VALUES(	'66111538436'	,	'Jules'	,	'Verstreken'	);
INSERT INTO members  VALUES(	'99081179470'	,	'Nicolas'	,	'Verstreken'	);
INSERT INTO members  VALUES(	'78031138506'	,	'Jean'	,	'Verstreken'	);
INSERT INTO members  VALUES(	'76041488094'	,	'Patricia'	,	'Franssen'	);
INSERT INTO members  VALUES(	'67011658664'	,	'Mark'	,	'Kenes'	);
INSERT INTO members  VALUES(	'79101114308'	,	'Indra'	,	'De Cuyper'	);
INSERT INTO members  VALUES(	'67032512634'	,	'Madeleine'	,	'Dox'	);
INSERT INTO members  VALUES(	'67041813594'	,	'Jan'	,	'Borders'	);
INSERT INTO members  VALUES(	'87022017640'	,	'Elena'	,	'Janssens'	);
INSERT INTO members  VALUES(	'67051563300'	,	'Peter'	,	'De Cuyper'	);
INSERT INTO members  VALUES(	'94021447130'	,	'Philippe'	,	'Franssen'	);
INSERT INTO members  VALUES(	'91042217878'	,	'Sofia'	,	'Daenen'	);
INSERT INTO members  VALUES(	'90122695640'	,	'Matthias'	,	'Daenen'	);
INSERT INTO members  VALUES(	'67072419187'	,	'Philippe'	,	'Haest'	);
INSERT INTO members  VALUES(	'85112414665'	,	'Hans'	,	'Haest'	);
INSERT INTO members  VALUES(	'64062436170'	,	'Piet'	,	'Goedeman'	);
INSERT INTO members  VALUES(	'68061583782'	,	'Christophe'	,	'Witte'	);
INSERT INTO members  VALUES(	'86101542818'	,	'Luc'	,	'Witte'	);
INSERT INTO members  VALUES(	'68102421448'	,	'Robert'	,	'Kenes'	);
INSERT INTO members  VALUES(	'74071387016'	,	'Sarah'	,	'Kenes'	);
INSERT INTO members  VALUES(	'63022213356'	,	'Niels'	,	'Kenes'	);
INSERT INTO members  VALUES(	'68112533116'	,	'Elena'	,	'Beervoets'	);
INSERT INTO members  VALUES(	'66122482704'	,	'Guy'	,	'Appelmans'	);
INSERT INTO members  VALUES(	'02072574080'	,	'Thomas'	,	'Beervoets'	);
INSERT INTO members  VALUES(	'68121815855'	,	'Noah'	,	'Vanneste'	);
INSERT INTO members  VALUES(	'96061923114'	,	'Guy'	,	'Vanneste'	);
INSERT INTO members  VALUES(	'75011319663'	,	'Nathalie'	,	'Tilkens'	);
INSERT INTO members  VALUES(	'02111820377'	,	'Rita'	,	'Vanneste'	);
INSERT INTO members  VALUES(	'69031664378'	,	'Jacques'	,	'Geldof'	);
INSERT INTO members  VALUES(	'69041519306'	,	'Martine'	,	'Hendrix'	);
INSERT INTO members  VALUES(	'71091374066'	,	'Tom'	,	'Hons'	);
INSERT INTO members  VALUES(	'02021514784'	,	'Conrad'	,	'Hendrix'	);
INSERT INTO members  VALUES(	'69082866365'	,	'Eline'	,	'Franssen'	);
INSERT INTO members  VALUES(	'70072842968'	,	'Abdul'	,	'Heersel'	);
INSERT INTO members  VALUES(	'70121521567'	,	'Daniel'	,	'Franssen'	);
INSERT INTO members  VALUES(	'92021967894'	,	'Jorben'	,	'Hendrix'	);
INSERT INTO members  VALUES(	'05011426648'	,	'Emma'	,	'Hendrix'	);
INSERT INTO members  VALUES(	'71012865456'	,	'Dirk'	,	'Geyskens'	);
INSERT INTO members  VALUES(	'68021640702'	,	'Ali'	,	'Janssens'	);
INSERT INTO members  VALUES(	'56011852520'	,	'Pierre'	,	'Janssens'	);
INSERT INTO members  VALUES(	'71032613832'	,	'Jules'	,	'Teerain'	);
INSERT INTO members  VALUES(	'62082618354'	,	'Marc'	,	'Teerain'	);
INSERT INTO members  VALUES(	'71051619425'	,	'Anne'	,	'Huyghe'	);
INSERT INTO members  VALUES(	'72022885938'	,	'Olivier'	,	'Klawitter'	);
INSERT INTO members  VALUES(	'90062844974'	,	'Jan'	,	'Klawitter'	);
INSERT INTO members  VALUES(	'72112616093'	,	'Louis'	,	'Verstreken'	);
INSERT INTO members  VALUES(	'72072735272'	,	'Sofia'	,	'Spaelt'	);
INSERT INTO members  VALUES(	'73012713951'	,	'Ali'	,	'Boes'	);
INSERT INTO members  VALUES(	'87042149286'	,	'Anne'	,	'Huisjes'	);
INSERT INTO members  VALUES(	'73081366534'	,	'Alain'	,	'Haest'	);
INSERT INTO members  VALUES(	'73091915868'	,	'Arthur'	,	'Borders'	);
INSERT INTO members  VALUES(	'73101481767'	,	'Leen'	,	'Huisjes'	);
INSERT INTO members  VALUES(	'74022716212'	,	'Liam'	,	'Vandenborre'	);
INSERT INTO members  VALUES(	'81062270846'	,	'Christine'	,	'Tilkens'	);
INSERT INTO members  VALUES(	'74041936350'	,	'Lina'	,	'Vanneste'	);
INSERT INTO members  VALUES(	'74051447500'	,	'Indra'	,	'Terriers'	);
INSERT INTO members  VALUES(	'79092019901'	,	'Roger'	,	'Kuppens'	);
INSERT INTO members  VALUES(	'74112821805'	,	'Christine'	,	'Huisjes'	);
INSERT INTO members  VALUES(	'72061621686'	,	'David'	,	'Hons'	);
INSERT INTO members  VALUES(	'00082027726'	,	'Olivia'	,	'Huyghe'	);
INSERT INTO members  VALUES(	'75081914070'	,	'Abdul'	,	'Clerinx'	);
INSERT INTO members  VALUES(	'75091467612'	,	'Robert'	,	'Hendrix'	);
INSERT INTO members  VALUES(	'78052089172'	,	'Ann'	,	'Hons'	);
INSERT INTO members  VALUES(	'75101016946'	,	'Noah'	,	'Terriers'	);
INSERT INTO members  VALUES(	'81021713510'	,	'Lotte'	,	'Klimop'	);
INSERT INTO members  VALUES(	'75122089468'	,	'Veerle'	,	'Willems'	);
INSERT INTO members  VALUES(	'82082340662'	,	'Michel'	,	'Alberty'	);
INSERT INTO members  VALUES(	'57021120159'	,	'Philippe'	,	'Alberty'	);
INSERT INTO members  VALUES(	'76021321924'	,	'Jacqueline'	,	'Willems'	);
INSERT INTO members  VALUES(	'76032049766'	,	'Bram'	,	'Teerain'	);
INSERT INTO members  VALUES(	'76051037428'	,	'Marie'	,	'Goedeman'	);
INSERT INTO members  VALUES(	'76071916331'	,	'Lucas'	,	'Alberty'	);
INSERT INTO members  VALUES(	'56042323590'	,	'Sarah'	,	'Alberty'	);
INSERT INTO members  VALUES(	'00051920853'	,	'Johan'	,	'Alberty'	);
INSERT INTO members  VALUES(	'77062197169'	,	'Marijke'	,	'Waterman'	);
INSERT INTO members  VALUES(	'77081419782'	,	'Pierre'	,	'Claes'	);
INSERT INTO members  VALUES(	'83111771924'	,	'Jacqueline'	,	'Claes'	);
INSERT INTO members  VALUES(	'07032722574'	,	'Lowie'	,	'Claes'	);
INSERT INTO members  VALUES(	'77091014189'	,	'An'	,	'Daniels'	);
INSERT INTO members  VALUES(	'88062663362'	,	'Atakan'	,	'Geyskens'	);
INSERT INTO members  VALUES(	'63111218949'	,	'Jan'	,	'Geldof'	);
INSERT INTO members  VALUES(	'77102068690'	,	'Daniel'	,	'Huyghe'	);
INSERT INTO members  VALUES(	'66101715736'	,	'Arthur'	,	'Spaelt'	);
INSERT INTO members  VALUES(	'07071614903'	,	'Magomed'	,	'Huyghe'	);
INSERT INTO members  VALUES(	'78012152032'	,	'Kevin'	,	'Boes'	);
INSERT INTO members  VALUES(	'78071422043'	,	'Joseph'	,	'Franssen'	);
INSERT INTO members  VALUES(	'86122561096'	,	'Omer'	,	'Geldof'	);
INSERT INTO members  VALUES(	'02041623414'	,	'Victor'	,	'Geldof'	);
INSERT INTO members  VALUES(	'79061219102'	,	'Louis'	,	'Boes'	);
INSERT INTO members  VALUES(	'78041016450'	,	'Jules'	,	'Appelmans'	);
INSERT INTO members  VALUES(	'55101312880'	,	'Louise'	,	'Appelmans'	);
INSERT INTO members  VALUES(	'79112211244'	,	'Leen'	,	'Janssens'	);
INSERT INTO members  VALUES(	'79122169768'	,	'David'	,	'Keuninckx'	);
INSERT INTO members  VALUES(	'99092128804'	,	'Louise'	,	'Keuninckx'	);
INSERT INTO members  VALUES(	'80032190250'	,	'Marie'	,	'Huisjes'	);
INSERT INTO members  VALUES(	'92122817283'	,	'Mila'	,	'Huisjes'	);
INSERT INTO members  VALUES(	'80042022162'	,	'Thomas'	,	'Janssens'	);
INSERT INTO members  VALUES(	'70062515974'	,	'Adam'	,	'Goedeman'	);
INSERT INTO members  VALUES(	'07022520496'	,	'Eric'	,	'Goedeman'	);
INSERT INTO members  VALUES(	'80051116569'	,	'Victor'	,	'Witte'	);
INSERT INTO members  VALUES(	'98011121091'	,	'Jacques'	,	'Witte'	);
INSERT INTO members  VALUES(	'57121412999'	,	'Lowie'	,	'Witte'	);
INSERT INTO members  VALUES(	'80082254298'	,	'Hans'	,	'Clerinx'	);
INSERT INTO members  VALUES(	'81112320180'	,	'Liam'	,	'Clerinx'	);
INSERT INTO members  VALUES(	'81102120020'	,	'Willy'	,	'Beervoets'	);
INSERT INTO members  VALUES(	'64081221210'	,	'Dirk'	,	'Aerts'	);
INSERT INTO members  VALUES(	'62011623947'	,	'Tom'	,	'Aerts'	);
INSERT INTO members  VALUES(	'82012291328'	,	'Philippe'	,	'Willems'	);
INSERT INTO members  VALUES(	'98102229882'	,	'Mila'	,	'Tilkens'	);
INSERT INTO members  VALUES(	'02052620308'	,	'Louise'	,	'Tilkens'	);
INSERT INTO members  VALUES(	'82052122281'	,	'Jozef'	,	'Klimop'	);
INSERT INTO members  VALUES(	'82091756564'	,	'Conrad'	,	'Daniels'	);
INSERT INTO members  VALUES(	'83062314546'	,	'Kevin'	,	'Geyskens'	);
INSERT INTO members  VALUES(	'56032412404'	,	'Leen'	,	'Goedeman'	);
INSERT INTO members  VALUES(	'00011078392'	,	'François'	,	'Goedeman'	);
INSERT INTO members  VALUES(	'83071815776'	,	'Miet'	,	'Daenen'	);
INSERT INTO members  VALUES(	'83122220139'	,	'Nicole'	,	'Yilmaz'	);
INSERT INTO members  VALUES(	'84012316807'	,	'Mohamed'	,	'Klawitter'	);
INSERT INTO members  VALUES(	'61112113237'	,	'Jonas'	,	'Klawitter'	);
INSERT INTO members  VALUES(	'84081792406'	,	'Kris'	,	'Waterman'	);
INSERT INTO members  VALUES(	'96111417521'	,	'Juliette'	,	'Waterman'	);
INSERT INTO members  VALUES(	'91031751442'	,	'Nathalie'	,	'Waterman'	);
INSERT INTO members  VALUES(	'84092441740'	,	'Patrick'	,	'Appelmans'	);
INSERT INTO members  VALUES(	'84101858830'	,	'Magomed'	,	'De Cuyper'	);
INSERT INTO members  VALUES(	'85021873002'	,	'Joseph'	,	'Kuppens'	);
INSERT INTO members  VALUES(	'99012015379'	,	'Jorben'	,	'Kuppens'	);
INSERT INTO members  VALUES(	'86082416926'	,	'Emma'	,	'Kenes'	);
INSERT INTO members  VALUES(	'85061720258'	,	'Anna'	,	'Spaelt'	);
INSERT INTO members  VALUES(	'88081822638'	,	'François'	,	'Kuppens'	);
INSERT INTO members  VALUES(	'85071522336'	,	'Jules'	,	'De Cuyper'	);
INSERT INTO members  VALUES(	'84032222400'	,	'Isabelle'	,	'Daenen'	);
INSERT INTO members  VALUES(	'86011722519'	,	'Bart'	,	'Tilkens'	);
INSERT INTO members  VALUES(	'87051274692'	,	'Josse'	,	'Jacobs'	);
INSERT INTO members  VALUES(	'91012479224'	,	'Tineke'	,	'Jacobs'	);
INSERT INTO members  VALUES(	'89032376958'	,	'Gratia'	,	'De nayer'	);
INSERT INTO members  VALUES(	'56081581490'	,	'Eva'	,	'Jacobs'	);
INSERT INTO members  VALUES(	'87111023233'	,	'Christophe'	,	'Goedeman'	);
INSERT INTO members  VALUES(	'07052824492'	,	'Gabriel'	,	'Geyskens'	);
INSERT INTO members  VALUES(	'88121643896'	,	'André'	,	'Aerts'	);
INSERT INTO members  VALUES(	'90092522757'	,	'Nicolas'	,	'Beervoets'	);
INSERT INTO members  VALUES(	'82031216688'	,	'Gabriel'	,	'Aerts'	);
INSERT INTO members  VALUES(	'59062013118'	,	'Kyril'	,	'Aerts'	);
INSERT INTO members  VALUES(	'89021123352'	,	'Jeannine'	,	'Verstreken'	);
INSERT INTO members  VALUES(	'04072620615'	,	'Christiane'	,	'Verstreken'	);
INSERT INTO members  VALUES(	'89041212166'	,	'Veerle'	,	'Spaelt'	);
INSERT INTO members  VALUES(	'04052776236'	,	'Isabelle'	,	'Spaelt'	);
INSERT INTO members  VALUES(	'89052250364'	,	'Paul'	,	'Willems'	);
INSERT INTO members  VALUES(	'07042675158'	,	'Jozef'	,	'Yilmaz'	);
INSERT INTO members  VALUES(	'89072117759'	,	'Marie'	,	'Klimop'	);
INSERT INTO members  VALUES(	'88102594562'	,	'Rien'	,	'Klimop'	);
INSERT INTO members  VALUES(	'90112765628'	,	'Ann'	,	'Haest'	);
INSERT INTO members  VALUES(	'90101617164'	,	'Louise'	,	'Hons'	);
INSERT INTO members  VALUES(	'04031325570'	,	'Mohamed'	,	'Haest'	);
INSERT INTO members  VALUES(	'91052312285'	,	'Marijke'	,	'Vanneste'	);
INSERT INTO members  VALUES(	'80011239584'	,	'Marc'	,	'Vandenborre'	);
INSERT INTO members  VALUES(	'05031977314'	,	'Bart'	,	'Vanneste'	);
INSERT INTO members  VALUES(	'91071223471'	,	'Olivier'	,	'Klawitter'	);
INSERT INTO members  VALUES(	'88091517045'	,	'Olivia'	,	'Franssen'	);
INSERT INTO members  VALUES(	'92062796718'	,	'Mark'	,	'Tilkens'	);
INSERT INTO members  VALUES(	'94111997796'	,	'Eline'	,	'Kuppens'	);
INSERT INTO members  VALUES(	'05051315141'	,	'Atakan'	,	'Tilkens'	);
INSERT INTO members  VALUES(	'92102622876'	,	'Christian'	,	'Kenes'	);
INSERT INTO members  VALUES(	'92111346052'	,	'Monique'	,	'Kenes'	);
INSERT INTO members  VALUES(	'86091893484'	,	'Gert'	,	'Janssens'	);
INSERT INTO members  VALUES(	'94061317402'	,	'Alice'	,	'Willems'	);
INSERT INTO members  VALUES(	'94122722995'	,	'Tom'	,	'Spaelt'	);
INSERT INTO members  VALUES(	'96021098874'	,	'Tom'	,	'Beervoets'	);
INSERT INTO members  VALUES(	'98082115498'	,	'Jordy'	,	'Beervoets'	);
INSERT INTO members  VALUES(	'59121018711'	,	'Luc'	,	'Daniels'	);
INSERT INTO members  VALUES(	'96041172426'	,	'Ben'	,	'Keuninckx'	);
INSERT INTO members  VALUES(	'96072048208'	,	'Martine'	,	'Hons'	);
INSERT INTO members  VALUES(	'94071070160'	,	'Jordy'	,	'Huyghe'	);
INSERT INTO members  VALUES(	'98091280548'	,	'Christian'	,	'Vandenborre'	);
INSERT INTO members  VALUES(	'85042518042'	,	'Lies'	,	'Tilkens'	);
INSERT INTO members  VALUES(	'98122333904'	,	'Jan'	,	'Vanneste'	);
INSERT INTO members  VALUES(	'99031020972'	,	'Peter'	,	'Appelmans'	);
INSERT INTO members  VALUES(	'83022421258'	,	'Lucas'	,	'Daniels'	);
INSERT INTO members  VALUES(	'65042462222'	,	'Johan'	,	'Daniels'	);
INSERT INTO members  VALUES(	'99101231638'	,	'Dennis'	,	'Spaelt'	);


Prompt *************************************************
Prompt --> creatie en insert in table contributors
Prompt *************************************************

CREATE TABLE contributors(
contributorID    NUMBER(4)
                 CONSTRAINT con_PK PRIMARY KEY,
lastname         VARCHAR2(20)
                 CONSTRAINT con_lnm_nn NOT NULL,
firstname        VARCHAR2(20)
);

INSERT INTO contributors  VALUES(	1596	,	'Verne'	,	'Jules'	);
INSERT INTO contributors  VALUES(	1603	,	'Oram'	,	'Andy'	);
INSERT INTO contributors  VALUES(	1610	,	'Tanenbaum'	,	'Andrew'	);
INSERT INTO contributors  VALUES(	1617	,	'Brown'	,	'Dan'	);
INSERT INTO contributors  VALUES(	1624	,	'Silver'	,	'Nate'	);
INSERT INTO contributors  VALUES(	1631	,	'Cormen'	,	'Thomas'	);
INSERT INTO contributors  VALUES(	1638	,	'Hawking'	,	'Stephen'	);
INSERT INTO contributors  VALUES(	1645	,	'Camus'	,	'Albert'	);
INSERT INTO contributors  VALUES(	1646	,	'Capra'	,	'Fritjof'	);
INSERT INTO contributors  VALUES(	1650	,	'King'	,	'Stephen'	);
INSERT INTO contributors  VALUES(	1651	,	'Holmberg'	,	'John-Henri'	);
INSERT INTO contributors  VALUES(	1652	,	'Alsterdal'	,	'Tove'	);
INSERT INTO contributors  VALUES(	1653	,	'Borjlind'	,	'Rolf'	);
INSERT INTO contributors  VALUES(	1654	,	'Borjlind'	,	'Cilla'	);
INSERT INTO contributors  VALUES(	1655	,	'Van Bree'	,	'Corry'	);
INSERT INTO contributors  VALUES(	1656	,	'Kraakman'	,	'Rory'	);
INSERT INTO contributors  VALUES(	1657	,	'Larsson'	,	'Stieg'	);
INSERT INTO contributors  VALUES(	2002	,	'Lindberg'	,	'Nils'	);
INSERT INTO contributors  VALUES(	2010	,	'Rowling'	,	'Joanne K'	);
INSERT INTO contributors  VALUES(	2011	,	'Buddingh'	,	'Wiebe'	);
INSERT INTO contributors  VALUES(	1700	,	'Maas'	,	'Sarah J'	);
INSERT INTO contributors  VALUES(	1701	,	'Beelen'	,	'Gerdien'	);
INSERT INTO contributors  VALUES(	1702	,	'Janssen'	,	'Valerie'	);
INSERT INTO contributors  VALUES(	1800	,	'Goodkind'	,	'Terry'	);
INSERT INTO contributors  VALUES(	1801	,	'Schuchart'	,	'Max'	);
INSERT INTO contributors  VALUES(	1802	,	'Ruitenbert'	,	'Josephine'	);
INSERT INTO contributors  VALUES(	1803	,	'Parkinson'	,	'Keith'	);
INSERT INTO contributors  VALUES(	1660	,	'Timmerman'	,	'Hugo'	);
INSERT INTO contributors  VALUES(	1661	,	'Kuipers'	,	'Hugo'	);
INSERT INTO contributors  VALUES(	2000	,	'Dalrymple'	,	'William'	);
INSERT INTO contributors  VALUES(	2001	,	'Deshpande'	,	'P L'	);
INSERT INTO contributors  VALUES(	2022	,	'Devlin'	,	'Keith'	);
INSERT INTO contributors  VALUES(	2003	,	'Doyle'	,	'Arthur Conan'	);
INSERT INTO contributors  VALUES(	2004	,	'Drucker'	,	'Peter'	);
INSERT INTO contributors  VALUES(	2005	,	'Forsyth'	,	'Frederik'	);
INSERT INTO contributors  VALUES(	2006	,	'Lapierre'	,	'Dominique'	);
INSERT INTO contributors  VALUES(	2007	,	'Maugham'	,	'William S'	);
INSERT INTO contributors  VALUES(	2008	,	'Nayar'	,	'Kuldip'	);
INSERT INTO contributors  VALUES(	2009	,	'Orwell'	,	'George'	);
INSERT INTO contributors  VALUES(	2030	,	'Wells'	,	'H G'	);
INSERT INTO contributors  VALUES(	2031	,	'Rutherford'	,	'Alex'	);
INSERT INTO contributors  VALUES(	2012	,	'Smith'	,	'Adam'	);
INSERT INTO contributors  VALUES(	2013	,	'Steinbeck'	,	'John'	);


Prompt *************************************************
Prompt --> creatie en insert in table locations
Prompt *************************************************

CREATE TABLE locations(
locationid       NUMBER(4)
                 CONSTRAINT loc_PK PRIMARY KEY,
place            VARCHAR2(25),
city             VARCHAR2(25),
state            VARCHAR2(25),
country          VARCHAR2(25)
                 CONSTRAINT loc_ctry_nn NOT NULL
);

INSERT INTO locations  VALUES(	1000	,	null	,	'New York city'	,	'New York'	,	'USA'	);
INSERT INTO locations  VALUES(	1001	,	'Manhattan'	,	'New York city'	,	'New York'	,	'USA'	);
INSERT INTO locations  VALUES(	2000	,	null	,	'Exeter'	,	'New Hampshire'	,	'USA'	);
INSERT INTO locations  VALUES(	2500	,	null	,	'Oxford'	,	null	,	'UK'	);
INSERT INTO locations  VALUES(	1010	,	null	,	'Dréan'	,	null	,	'Algerije'	);
INSERT INTO locations  VALUES(	2020	,	'Maine Medical Center'	,	'Portland'	,	'Maine'	,	'USA'	);
INSERT INTO locations  VALUES(	2600	,	null	,	'Malmo'	,	null	,	'Zweden'	);
INSERT INTO locations  VALUES(	2601	,	null	,	'Stockholm'	,	null	,	'Zweden'	);
INSERT INTO locations  VALUES(	1500	,	null	,	'Omaha'	,	'Nebraska'	,	'USA'	);
INSERT INTO locations  VALUES(	2520	,	null	,	null	,	'Schotland'	,	'UK'	);
INSERT INTO locations  VALUES(	3000	,	null	,	'Mumbai'	,	null	,	'Indie'	);
INSERT INTO locations  VALUES(	2700	,	null	,	'Wenen'	,	null	,	'Oostenrijk'	);
INSERT INTO locations  VALUES(	2800	,	null	,	'Parijs'	,	null	,	'Frankrijk'	);
INSERT INTO locations  VALUES(	3010	,	null	,	'Punjab'	,	null	,	'Pakistan'	);
INSERT INTO locations  VALUES(	2530	,	'Regents Park'	,	'Londen'	,	null	,	'UK'	);
INSERT INTO locations  VALUES(	1600	,	null	,	'Salinas'	,	'Californie'	,	'USA'	);
INSERT INTO locations  VALUES(	2900	,	null	,	'Amsterdam'	,	null	,	'Nederland'	);
INSERT INTO locations  VALUES(	2901	,	null	,	'Uithoorn'	,	null	,	'Nederland'	);




Prompt *************************************************
Prompt --> creatie en insert in table contributor_extras
Prompt *************************************************

CREATE TABLE contributor_extras(
contributorID    NUMBER(4)
                 CONSTRAINT conex_PK PRIMARY KEY
                 CONSTRAINT conex_id_fk REFERENCES contributors,
description      VARCHAR2(200),
birthday         DATE,
birth_location   NUMBER(4)
                 CONSTRAINT conex_loc_fk REFERENCES locations,
education        VARCHAR2(50),
education_year   NUMBER(4)
);

INSERT INTO contributor_extras  VALUES(	1596	,	null	, to_date('	8	-	2	-	1828	' , 'dd-mm-yyyy'),	null	,	'studeerde rechten in Parijs'	,	1851	);
INSERT INTO contributor_extras  VALUES(	1603	,	'gespecialiseerd in linux en free software'	, to_date('	30	-	4	-	1955	' , 'dd-mm-yyyy'),	null	,	'master mathematics'	,	1978	);
INSERT INTO contributor_extras  VALUES(	1610	,	'a Dutch-American computer scientist'	, to_date('	16	-	3	-	1944	' , 'dd-mm-yyyy'),	1000	,	'bachelor of Science degree in Physics'	,	1965	);
INSERT INTO contributor_extras  VALUES(	1617	,	'Amerikaanse schrijver van thrillerfictie, voormalig popzanger en pianist'	, to_date('	22	-	6	-	1964	' , 'dd-mm-yyyy'),	2000	,	'Engelse literatuur en kunstgeschiedenis'	,	1986	);
INSERT INTO contributor_extras  VALUES(	1624	,	'wereldberoemde expert in computer science'	, to_date('	15	-	9	-	1950	' , 'dd-mm-yyyy'),	1000	,	'master mathematics'	,	1975	);
INSERT INTO contributor_extras  VALUES(	1631	,	'specialist in hedendaagse computertechnologie'	, to_date('	29	-	11	-	1952	' , 'dd-mm-yyyy'),	null	,	'master of Science degree in Physics '	,	1975	);
INSERT INTO contributor_extras  VALUES(	1638	,	'Brits natuurkundige, kosmoloog en wiskundige'	, to_date('	8	-	1	-	1942	' , 'dd-mm-yyyy'),	2500	,	'‎St Albans School, Hertfordshire'	,	null	);
INSERT INTO contributor_extras  VALUES(	1645	,	'Frans filosoof, journalist en schrijver van romans, essays en toneelstukken.'	, to_date('	7	-	11	-	1913	' , 'dd-mm-yyyy'),	1010	,	'filosoof'	,	1935	);
INSERT INTO contributor_extras  VALUES(	1646	,	null	, to_date('	25	-	4	-	1966	' , 'dd-mm-yyyy'),	null	,	'master psychologie'	,	1990	);
INSERT INTO contributor_extras  VALUES(	1650	,	'Amerikaans schrijver van onder meer horror- en sciencefictionverhalen en thrillers. Zijn boeken komen voor op lijsten van bestverkochte boeken, zowel van fictie als non-fictie.'	, to_date('	21	-	9	-	1941	' , 'dd-mm-yyyy'),	2020	,	'Engelse literatuur'	,	1970	);
INSERT INTO contributor_extras  VALUES(	1651	,	'a Swedish author, critic, publisher and translator, and a well-known science fiction fan'	, to_date('	22	-	6	-	1949	' , 'dd-mm-yyyy'),	2601	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	1652	,	'schrijfster en journaliste en schrijft teksten voor toneel, film en opera.'	, to_date('	28	-	12	-	1960	' , 'dd-mm-yyyy'),	2600	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	1653	,	'Zweeds scenarioschrijver, regisseur, acteur, dichter en schrijver van misdaadromans.'	, to_date('	7	-	10	-	1943	' , 'dd-mm-yyyy'),	2600	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	1654	,	'een Zweeds scenarioschrijver en schrijfster van misdaadromans'	, to_date('	8	-	3	-	1961	' , 'dd-mm-yyyy'),	2600	,	null	,	null	);
																
INSERT INTO contributor_extras  VALUES(	1657	,	'Zweedse journalist en auteur. Hij stierf op vijftigjarige leeftijd aan een hartinfarct.'	, to_date('	15	-	8	-	1954	' , 'dd-mm-yyyy'),	2601	,	null	,	null	);
																
INSERT INTO contributor_extras  VALUES(	2010	,	'Author, film producer, television producer, screenwriter, philanthropist'	, to_date('	31	-	7	-	1965	' , 'dd-mm-yyyy'),	2500	,	'University of Exeter'	,	1986	);
																
INSERT INTO contributor_extras  VALUES(	1700	,	'Amerikaanse fantasyauteur, vooral bekend van haar debuutserie Throne of Glass'	, to_date('	5	-	3	-	1986	' , 'dd-mm-yyyy'),	1001	,	'Hamilton College'	,	2008	);
																
INSERT INTO contributor_extras  VALUES(	1800	,	'Terry Goodkind is een hedendaags Amerikaans schrijver. Hij is bekend van zijn elfdelige serie De wetten van de magie'	, to_date('	1	-	5	-	1948	' , 'dd-mm-yyyy'),	1500	,	null	,	null	);
																
INSERT INTO contributor_extras  VALUES(	2000	,	'een Schots historicus en auteur van diverse reisbeschrijvingen in het Midden-Oosten en Azië'	, to_date('	20	-	3	-	1965	' , 'dd-mm-yyyy'),	2520	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2001	,	'Marathi-schrijver en humorist uit Maharashtra, India'	, to_date('	8	-	11	-	1919	' , 'dd-mm-yyyy'),	3000	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2022	,	'Brits wiskundige en schrijver van populair-wetenschappelijke boeken'	, to_date('	16	-	3	-	1947	' , 'dd-mm-yyyy'),	2500	,	' Universiteit van Bristol, Surrey Institute'	,	null	);
INSERT INTO contributor_extras  VALUES(	2003	,	'Brits arts die vooral bekend werd als schrijver van verhalen over de detective Sherlock Holmes en zijn assistent Dr. Watson.'	, to_date('	22	-	5	-	1859	' , 'dd-mm-yyyy'),	2500	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2004	,	'Amerikaans schrijver, hoogleraar en consultant onder andere op het gebied van organisatieleer en management.'	, to_date('	19	-	11	-	1909	' , 'dd-mm-yyyy'),	2700	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2005	,	'een Engelse schrijver'	, to_date('	25	-	8	-	1938	' , 'dd-mm-yyyy'),	2520	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2006	,	'Franse auteur.'	, to_date('	30	-	7	-	1931	' , 'dd-mm-yyyy'),	null	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2007	,	'een in Frankrijk geboren Brit, schrijver van een groot aantal romans, verhalenbundels, toneelstukken, reisverhalen en essays. Hij wordt algemeen beschouwd als een meester-verhalenverteller.'	, to_date('	25	-	1	-	1874	' , 'dd-mm-yyyy'),	2800	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2008	,	'Indiase journalist, gesyndiceerd columnist, mensenrechtenactivist, auteur en voormalig Hoge Commissaris van India in het Verenigd Koninkrijk,'	, to_date('	14	-	8	-	1923	' , 'dd-mm-yyyy'),	3010	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2009	,	'pseudoniem voor Eric Arthur Blair was een Brits schrijver, journalist, essayist en literair criticus.'	, to_date('	25	-	6	-	1903	' , 'dd-mm-yyyy'),	3000	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2030	,	'een Brits schrijver, bekend van zijn sciencefictionverhalen en -romans'	, to_date('	21	-	9	-	1866	' , 'dd-mm-yyyy'),	2530	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2031	,	'het pseudoniem van twee schrijvers, Diana Preston en haar man Michael Preston'	,null						,	null	,	'Universiteit van Oxford'	,	null	);
INSERT INTO contributor_extras  VALUES(	2012	,	'een Schotse moraalfilosoof en een pionier op het gebied van de politieke economie.'	, to_date('	16	-	6	-	1723	' , 'dd-mm-yyyy'),	2520	,	null	,	null	);
INSERT INTO contributor_extras  VALUES(	2013	,	'een Amerikaans auteur die...'	, to_date('	27	-	2	-	1902	' , 'dd-mm-yyyy'),	1600	,	null	,	null	);


Prompt *************************************************
Prompt --> creatie en insert in table awards
Prompt *************************************************

CREATE TABLE awards(
id               NUMBER(5)
                 CONSTRAINT aw_PK PRIMARY KEY,
description      VARCHAR2(80)
                 CONSTRAINT aw_des_nn NOT NULL
);

INSERT INTO awards  VALUES(	1	,	'Nobelprijs voor de literatuur'	);
INSERT INTO awards  VALUES(	2	,	'Bram Stoker Award'	);
INSERT INTO awards  VALUES(	3	,	'Grammis Award for Childrens Album of the Year'	);
INSERT INTO awards  VALUES(	4	,	'Prometheus Hall of Fame Award'	);
INSERT INTO awards  VALUES(	6	,	'Retro Hugo Award - Novella'	);
INSERT INTO awards  VALUES(	5	,	'Goodreads Choice Awards Best of the Best'	);
INSERT INTO awards  VALUES(	7	,	'Los Angeles Times Book Prize for Science and Technology'	);
INSERT INTO awards  VALUES(	8	,	'Primetime Emmy Award voor miniserie'	);
INSERT INTO awards  VALUES(	9	,	'World Fantasy Award - Short fiction'	);
INSERT INTO awards  VALUES(	10	,	'Edgar Award'	);
INSERT INTO awards  VALUES(	11	,	'Goodreads Choice Awards Best Young Adult Fantasy and Science Fiction'	);
INSERT INTO awards  VALUES(	12	,	'Goodreads  Choice award - Mystery and Thriller'	);
INSERT INTO awards  VALUES(	13	,	'Colorado Blue Spruce Award -- Young Adult'	);

Prompt *************************************************
Prompt --> creatie en insert in table contributor_awards
Prompt *************************************************

CREATE TABLE contributor_awards(
contributorid    NUMBER(4)
                 CONSTRAINT conaw_aut_fk REFERENCES contributors,
awardid          NUMBER(5)
                 CONSTRAINT conaw_aw_fd REFERENCES awards,
CONSTRAINT conaw_pk PRIMARY KEY(contributorid, awardid)
);

INSERT INTO contributor_awards  VALUES(	1645	,	1	);
INSERT INTO contributor_awards  VALUES(	1650	,	2	);
INSERT INTO contributor_awards  VALUES(	2009	,	4	);
INSERT INTO contributor_awards  VALUES(	2009	,	6	);
INSERT INTO contributor_awards  VALUES(	1700	,	11	);
INSERT INTO contributor_awards  VALUES(	2011	,	7	);
INSERT INTO contributor_awards  VALUES(	2013	,	1	);
INSERT INTO contributor_awards  VALUES(	1650	,	9	);
INSERT INTO contributor_awards  VALUES(	1617	,	12	);
INSERT INTO contributor_awards  VALUES(	1657	,	12	);



Prompt *************************************************
Prompt --> creatie en insert in table contributor_nominations
Prompt *************************************************

CREATE TABLE contributor_nominations(
contributorid    NUMBER(4)
                 CONSTRAINT connom_aut_fk REFERENCES contributors,
nominationid     NUMBER(5)
                 CONSTRAINT connom_aw_fd REFERENCES awards,
CONSTRAINT connom_pk PRIMARY KEY(contributorid, nominationid)
);

INSERT INTO contributor_nominations  VALUES(	1652	,	3	);
INSERT INTO contributor_nominations  VALUES(	1650	,	8	);
INSERT INTO contributor_nominations  VALUES(	1651	,	10	);
INSERT INTO contributor_nominations  VALUES(	1700	,	5	);
INSERT INTO contributor_nominations  VALUES(	1617	,	13	);
INSERT INTO contributor_nominations  VALUES(	1800	,	4	);




Prompt *************************************************
Prompt --> creatie en insert in table genres
Prompt *************************************************

CREATE TABLE genres(
genreid          VARCHAR2(5)
                 CONSTRAINT gen_PK PRIMARY KEY,
genre            VARCHAR2(30)
                 CONSTRAINT gen_des_nn NOT NULL
);


INSERT INTO genres  VALUES(	'TH'	,	'thriller'	);
INSERT INTO genres  VALUES(	'HOR'	,	'horror'	);
INSERT INTO genres  VALUES(	'VER'	,	'verhalen'	);
INSERT INTO genres  VALUES(	'FAN'	,	'fantasy'	);
INSERT INTO genres  VALUES(	'ROM'	,	'roman'	);
INSERT INTO genres  VALUES(	'FIC'	,	'fiction'	);
INSERT INTO genres  VALUES(	'NFIC'	,	'nonfiction'	);
INSERT INTO genres  VALUES(	'GSCH'	,	'geschiedenis'	);
INSERT INTO genres  VALUES(	'WET'	,	'wetenschappen'	);
INSERT INTO genres  VALUES(	'DAT'	,	'data science'	);
INSERT INTO genres  VALUES(	'COMP'	,	'computerwetenschappen'	);
INSERT INTO genres  VALUES(	'PSY'	,	'psychologie'	);
INSERT INTO genres  VALUES(	'MIS'	,	'misdaad'	);
INSERT INTO genres  VALUES(	'WIS'	,	'wiskunde'	);
INSERT INTO genres  VALUES(	'SF'	,	'science fiction'	);
INSERT INTO genres  VALUES(	'EC'	,	'economie en management'	);
INSERT INTO genres  VALUES(	'STR'	,	'stripboek'	);


Prompt *************************************************
Prompt --> creatie en insert in table publishers
Prompt *************************************************

CREATE TABLE publishers(
publisherid          NUMBER(5)
                     CONSTRAINT pub_PK PRIMARY KEY,
publisher            VARCHAR2(30)
                     CONSTRAINT pub_pub_nn NOT NULL,
publisher_location   NUMBER(4)
                     CONSTRAINT pub_loc_fk REFERENCES locations
);

INSERT INTO publishers  VALUES(	10	,	'Apress'	,	1000	);
INSERT INTO publishers  VALUES(	20	,	'Elsevier'	,	2900	);
INSERT INTO publishers  VALUES(	30	,	'Jaico'	,	3000	);
INSERT INTO publishers  VALUES(	40	,	'Penguin'	,	2530	);
INSERT INTO publishers  VALUES(	50	,	'HarperCollins'	,	2900	);
INSERT INTO publishers  VALUES(	60	,	'Pan'	,	2530	);
INSERT INTO publishers  VALUES(	70	,	'Mauj'	,	3000	);
INSERT INTO publishers  VALUES(	80	,	'O Reilly'	,	1600	);
INSERT INTO publishers  VALUES(	90	,	'Random House'	,	1000	);
INSERT INTO publishers  VALUES(	100	,	'Vintage'	,	1000	);
INSERT INTO publishers  VALUES(	110	,	'vikas'	,	3000	);
INSERT INTO publishers  VALUES(	120	,	'Springer'	,	1000	);
INSERT INTO publishers  VALUES(	130	,	'Luitingh'	,	2900	);
INSERT INTO publishers  VALUES(	140	,	'Poema'	,	1000	);
INSERT INTO publishers  VALUES(	150	,	'Karakter'	,	2901	);
INSERT INTO publishers  VALUES(	160	,	'Prometheus'	,	1000	);
INSERT INTO publishers  VALUES(	170	,	'de Boekerij'	,	2900	);


Prompt *************************************************
Prompt --> creatie en insert in table series
Prompt *************************************************

CREATE TABLE series(
seriesID             VARCHAR2(5)
                     CONSTRAINT ser_PK PRIMARY KEY,
series_name          VARCHAR2(30)
                     CONSTRAINT ser_nm_nn NOT NULL,
series_description   VARCHAR2(200)
);

INSERT INTO series  VALUES(	'HP'	,	'Harry Potter'	,	'Avonturen van een jonge tovenaar'	);
INSERT INTO series  VALUES(	'MIL'	,	'Millennium reeks'	,	'Hoofdpersonen in de boeken (en films) zijn Mikael Blomkvist en Lisbeth Salander.'	);
INSERT INTO series  VALUES(	'GT'	,	'De glazen troon'	,	'Het verhaal volgt de reis van Celaena Sardothien, een tiener-moordenaar in een corrupt koninkrijk met een tirannieke heerser.'	);
INSERT INTO series  VALUES(	'TOG'	,	'Throne of Glass'	,	'Celeana Sardothien - sterk en dodelijk gevaarlijk, maar ook kwetsbaar... Ze is een sluipmoordenares met een mysterieus verleden en het enige wat ze wil is haar vrijheid.'	);
INSERT INTO series  VALUES(	'HDR'	,	'Hof van Doorns en Rozen'	,	'volg de avonturen van Feyre'	);
INSERT INTO series  VALUES(	'WM'	,	'De Wetten van de Magie'	,	'De boeken volgen de protagonisten Richard Cypher, Kahlan Amnell en Zeddicus Zu l Zorander op hun queeste om de beheersing over de wereld in handen te houden van het Licht.'	);
INSERT INTO series  VALUES(	'RK'	,	'Een Richard en Kahlan Roman'	,	'vervolgromans op de wetten van de magie'	);




Prompt *************************************************
Prompt --> creatie en insert in table books
Prompt *************************************************

CREATE TABLE books(
ISBN                VARCHAR2(20)
                    CONSTRAINT book_PK PRIMARY KEY,
title               VARCHAR2(60)
                    CONSTRAINT book_tit_nn NOT NULL,
original_title      VARCHAR2(40),
language            VARCHAR2(15)
                    CONSTRAINT book_lan_nn NOT NULL,
original_language   VARCHAR2(15),
edition             NUMBER(2),
publisherID         NUMBER(5)
                    CONSTRAINT book_pub_fk REFERENCES publishers,
publisher_year      NUMBER(4),
pages               NUMBER(4),
content             VARCHAR2(200),
seriesID            VARCHAR2(5)
                    CONSTRAINT book_ser_fk REFERENCES series,
series_number       NUMBER(2)
);

INSERT INTO books  VALUES(	'0003141526003'	,	'Age of the Warrior, The'	,	null	,	'Engels'	,	null	,	2	,	50	,	1985	,	197	,	'geschiedenis van krijgerskunsten'	,	null	,	null	);
INSERT INTO books  VALUES(	'9901201537901'	,	'Age of Wrath, The'	,	null	,	'Engels'	,	null	,	3	,	40	,	1986	,	238	,	'meer geschiedenis'	,	null	,	null	);
INSERT INTO books  VALUES(	'9104221787804'	,	'Beyond the Three Seas'	,	null	,	'Engels'	,	null	,	4	,	90	,	1987	,	197	,	'oceanen en hoe ze bevaren werden in de jaren 1000-1500'	,	null	,	null	);
INSERT INTO books  VALUES(	'6106111883006'	,	'City of Djinns'	,	null	,	'Engels'	,	null	,	1	,	90	,	1988	,	198	,	'het verre Oosten en zijn rituelen'	,	null	,	null	);
INSERT INTO books  VALUES(	'6003152382803'	,	'Great War for Civilization, The'	,	null	,	'Engels'	,	null	,	1	,	50	,	1990	,	197	,	'oorlog is een constante in de geschiedenis'	,	null	,	null	);
INSERT INTO books  VALUES(	'7202288593802'	,	'Last Mughal, The'	,	null	,	'Engels'	,	null	,	1	,	40	,	1984	,	199	,	'meer vreemde rituelen uit het verre Oosten'	,	null	,	null	);
INSERT INTO books  VALUES(	'9010161716410'	,	'Batatyachi Chal'	,	null	,	'Engels'	,	null	,	3	,	60	,	1983	,	200	,	'mysteries uit het verre Oosten'	,	null	,	null	);
INSERT INTO books  VALUES(	'6504246222204'	,	'Hafasavnuk'	,	null	,	'Engels'	,	null	,	2	,	60	,	1940	,	211	,	'spanning verzekerd'	,	null	,	null	);
INSERT INTO books  VALUES(	'9909212880409'	,	'Urlasurla'	,	null	,	'Engels'	,	null	,	1	,	60	,	1950	,	211	,	'mooie beschrijvingen van heuvellandschappen'	,	null	,	null	);
INSERT INTO books  VALUES(	'9808211549808'	,	'Aghal Paghal'	,	null	,	'Engels'	,	null	,	5	,	70	,	1951	,	212	,	'landschappen in het Midden-Oosten'	,	null	,	null	);
INSERT INTO books  VALUES(	'7804101645004'	,	'Apulki'	,	null	,	'Engels'	,	null	,	1	,	70	,	1952	,	211	,	'lees het om te weten wat erin staat'	,	null	,	null	);
INSERT INTO books  VALUES(	'8401231680701'	,	'Asami Asami'	,	null	,	'Engels'	,	null	,	2	,	70	,	1953	,	205	,	'vraag het aan iemand die het gelezen heeft'	,	null	,	null	);
INSERT INTO books  VALUES(	'5912101871112'	,	'Char Shabda'	,	null	,	'Engels'	,	null	,	1	,	70	,	1954	,	214	,	'fantastisch verhaal over een weesjongen'	,	null	,	null	);
INSERT INTO books  VALUES(	'6201162394701'	,	'Gun Gayin Awadi'	,	null	,	'Engels'	,	null	,	1	,	70	,	1942	,	212	,	'ook simpele mensen zijn tot wonderen in staat'	,	null	,	null	);
INSERT INTO books  VALUES(	'7709101418909'	,	'Radiowaril Bhashane - Shrutika'	,	null	,	'Engels'	,	null	,	1	,	70	,	1944	,	213	,	'vriendschap voor het leven'	,	null	,	null	);
INSERT INTO books  VALUES(	'6606183203806'	,	'Vyakti ani Valli'	,	null	,	'Engels'	,	null	,	1	,	70	,	1945	,	211	,	'tweelingen en hun diepe band'	,	null	,	null	);
INSERT INTO books  VALUES(	'7206162168606'	,	'Electric Universe'	,	null	,	'Engels'	,	null	,	1	,	40	,	1966	,	201	,	'basisbeginselen elektriciteit'	,	null	,	null	);
INSERT INTO books  VALUES(	'5603241240403'	,	'Numbers Behind Numb3rs, The'	,	null	,	'Engels'	,	null	,	1	,	40	,	1975	,	202	,	'getallen, getallen en ,,,, meer getallen'	,	null	,	null	);
INSERT INTO books  VALUES(	'7906121910206'	,	'Surely You re Joking Mr Feynman'	,	null	,	'Engels'	,	null	,	4	,	90	,	1973	,	198	,	'de wetenschap in al zijn vormen'	,	null	,	null	);
INSERT INTO books  VALUES(	'8302242125802'	,	'Tao of Physics, The'	,	null	,	'Engels'	,	null	,	2	,	40	,	1977	,	179	,	'fysica op hoger niveau'	,	null	,	null	);
INSERT INTO books  VALUES(	'7803113850604'	,	'Numbers Behind Numb3rs, The'	,	null	,	'Engels'	,	null	,	2	,	40	,	1980	,	202	,	'getallen, getallen en ,,,, meer getallen'	,	null	,	null	);
INSERT INTO books  VALUES(	'6001251823501'	,	'Brethren, The'	,	null	,	'Engels'	,	null	,	10	,	90	,	1940	,	174	,	'spannende fictie!!'	,	null	,	null	);
INSERT INTO books  VALUES(	'7105161942505'	,	'Complete Sherlock Holmes, The - Vol I'	,	null	,	'Engels'	,	null	,	5	,	90	,	1942	,	176	,	'avonturen van Sherlock Holmes en assistent'	,	null	,	null	);
INSERT INTO books  VALUES(	'7303281954403'	,	'Complete Sherlock Holmes, The - Vol II'	,	null	,	'Engels'	,	null	,	6	,	90	,	1943	,	176	,	'avonturen van Sherlock Holmes en assistent'	,	null	,	null	);
INSERT INTO books  VALUES(	'7909201990109'	,	'Crime and Punishment'	,	null	,	'Engels'	,	null	,	7	,	40	,	1944	,	180	,	'misdaadroman'	,	null	,	null	);
INSERT INTO books  VALUES(	'9801112109101'	,	'Doctor in the Nude'	,	null	,	'Engels'	,	null	,	6	,	40	,	1945	,	179	,	'de dokter lost alle misdagen op'	,	null	,	null	);
INSERT INTO books  VALUES(	'8601172251901'	,	'False Impressions'	,	null	,	'Engels'	,	null	,	11	,	60	,	1946	,	177	,	'niets is wat het lijkt, maar toch komen we achter de waarheid'	,	null	,	null	);
INSERT INTO books  VALUES(	'8106227084606'	,	'Idiot, The'	,	null	,	'Engels'	,	null	,	5	,	40	,	1947	,	197	,	'ook idioten kunnen ontdekkingen doen'	,	null	,	null	);
INSERT INTO books  VALUES(	'8408179240608'	,	'Maqta-e-Ghalib'	,	null	,	'Engels'	,	null	,	6	,	70	,	1948	,	221	,	'mysterie en spanning verzekerd in dit boek dat gaat over…...'	,	null	,	null	);
INSERT INTO books  VALUES(	'7301271395101'	,	'Prisoner of Birth, A'	,	null	,	'Engels'	,	null	,	8	,	60	,	1949	,	176	,	'eens een crimineel, altijd een crimineel'	,	null	,	null	);
INSERT INTO books  VALUES(	'7910111430810'	,	'Raisin in the Sun, A'	,	null	,	'Engels'	,	null	,	8	,	40	,	1950	,	175	,	'over een fantastische plaats ergens in ….'	,	null	,	null	);
INSERT INTO books  VALUES(	'0202151478402'	,	'Sea of Poppies'	,	null	,	'Engels'	,	null	,	6	,	40	,	1951	,	197	,	'weidse landschappen, verre zeeen….'	,	null	,	null	);
INSERT INTO books  VALUES(	'0505131514105'	,	'Age of Discontuinity, The'	,	null	,	'Engels'	,	null	,	1	,	90	,	1981	,	178	,	'economisch handboek voor managers'	,	null	,	null	);
INSERT INTO books  VALUES(	'8005111656905'	,	'Argumentative Indian, The'	,	null	,	'Engels'	,	null	,	2	,	20	,	1982	,	209	,	'meer eonomie'	,	null	,	null	);
INSERT INTO books  VALUES(	'9210262287610'	,	'Freakonomics'	,	null	,	'Engels'	,	null	,	1	,	40	,	1983	,	197	,	'nieuwe inzichten in economische algoritmes'	,	null	,	null	);
INSERT INTO books  VALUES(	'9105231228505'	,	'New Markets and Other Essays'	,	null	,	'Engels'	,	null	,	2	,	40	,	1984	,	176	,	'nieuwe markten'	,	null	,	null	);
INSERT INTO books  VALUES(	'8112121442712'	,	'Rationality and Freedom'	,	null	,	'Engels'	,	null	,	1	,	120	,	1985	,	213	,	'vrijheid bestaat niet'	,	null	,	null	);
INSERT INTO books  VALUES(	'7309191586809'	,	'Superfreakonomics'	,	null	,	'Engels'	,	null	,	1	,	50	,	1986	,	179	,	'supernieuwe inzichten in ecnonomische algoritmes'	,	null	,	null	);
INSERT INTO books  VALUES(	'5509271847309'	,	'Catch 22'	,	null	,	'Engels'	,	null	,	1	,	90	,	1969	,	178	,	'pak me als je kan'	,	null	,	null	);
INSERT INTO books  VALUES(	'0504272073404'	,	'Deceiver, The'	,	null	,	'Engels'	,	null	,	1	,	90	,	1971	,	178	,	'originele beschrijvingen van …'	,	null	,	null	);
INSERT INTO books  VALUES(	'7509146761209'	,	'Hunchback of Notre Dame, The'	,	null	,	'Engels'	,	null	,	1	,	90	,	1973	,	175	,	'een eenzame man spendeert zijn tijd aan…..'	,	null	,	null	);
INSERT INTO books  VALUES(	'5906201311806'	,	'Phantom of Manhattan, The'	,	null	,	'Engels'	,	null	,	1	,	90	,	1975	,	180	,	'geesten bestaan niet, of toch?'	,	null	,	null	);
INSERT INTO books  VALUES(	'0501142664801'	,	'Trial, The'	,	null	,	'Engels'	,	null	,	1	,	90	,	1977	,	198	,	'sommige mensen zien overal een spel in'	,	null	,	null	);
INSERT INTO books  VALUES(	'6412173096012'	,	'Veteran, The'	,	null	,	'Engels'	,	null	,	1	,	90	,	1979	,	177	,	'eens je een oorlog hebt meegemaakt laat het je nooit meer los'	,	null	,	null	);
INSERT INTO books  VALUES(	'6311121894911'	,	'City of Joy, The'	,	null	,	'Engels'	,	null	,	1	,	110	,	null	,	177	,	'kom mee!  we gaan naar de stad van plezier.'	,	null	,	null	);
INSERT INTO books  VALUES(	'6502231906802'	,	'Clash of Civilizations and Remaking of the World Order'	,	null	,	'Engels'	,	null	,	1	,	120	,	null	,	228	,	'oorlog is er altijd geweest'	,	null	,	null	);
INSERT INTO books  VALUES(	'9412272299512'	,	'Freedom at Midnight'	,	null	,	'Engels'	,	null	,	1	,	110	,	null	,	167	,	'interessant geschreven geschiedenis over…'	,	null	,	null	);
INSERT INTO books  VALUES(	'5801151252301'	,	'O Jerusalem!'	,	null	,	'Engels'	,	null	,	1	,	110	,	null	,	217	,	'alles wat je ooit wilde weten over Jerusalem'	,	null	,	null	);
INSERT INTO books  VALUES(	'9606192311406'	,	'Girl who kicked the Hornets Nest'	,	'Luftslottet som sprangdes'	,	'Engels'	,	'Zweeds'	,	1	,	90	,	2007	,	179	,	'Lisbeth Salander heeft een levensbedreigende aanslag overleefd en wordt in kritieke toestand naar het ziekenhuis gebracht, evenals de man die verantwoordelijk is'	,	'MIL'	,	3	);
INSERT INTO books  VALUES(	'8711102323311'	,	'Girl who played with Fire'	,	'Flickan som lekte med elden'	,	'Engels'	,	'Zweeds'	,	2	,	90	,	2006	,	179	,	'Drie moorden, één avond. De slachtoffers zijn twee journalisten die'	,	'MIL'	,	2	);
INSERT INTO books  VALUES(	'8902112335202'	,	'Girl with the Dragon Tattoo'	,	'Man som hatar kvinnor'	,	'Engels'	,	'Zweeds'	,	2	,	90	,	2005	,	179	,	'Veertig jaar geleden is de zestienjarige Harriët Vanger op mysterieuze wijze verdwenen en vermoedelijk vermoord'	,	'MIL'	,	1	);
INSERT INTO books  VALUES(	'6705156330005'	,	'Half A Life'	,	null	,	'Engels'	,	null	,	1	,	90	,	null	,	196	,	null	,	null	,	null	);
INSERT INTO books  VALUES(	'8502187300202'	,	'In a Free State'	,	null	,	'Engels'	,	null	,	1	,	90	,	null	,	196	,	null	,	null	,	null	);
INSERT INTO books  VALUES(	'8608241692608'	,	'Ashenden of The British Agent'	,	null	,	'Engels'	,	null	,	1	,	100	,	1901	,	160	,	'een geheim agent onderzoekt de moord op ….....'	,	null	,	null	);
INSERT INTO books  VALUES(	'8609189348409'	,	'Maughams Collected Short Stories, Vol 3'	,	null	,	'Engels'	,	null	,	1	,	100	,	1903	,	171	,	'allerlei verhalen met satirische noot'	,	null	,	null	);
INSERT INTO books  VALUES(	'8810259456210'	,	'Moon and Sixpence, The'	,	null	,	'Engels'	,	null	,	1	,	100	,	1914	,	180	,	'een dakloze vindt een muntje op straat…'	,	null	,	null	);
INSERT INTO books  VALUES(	'0403132557003'	,	'Trembling of a Leaf, The'	,	null	,	'Engels'	,	null	,	1	,	100	,	1920	,	205	,	'in de bossen daalt de rust over je neer….'	,	null	,	null	);
INSERT INTO books  VALUES(	'6610171573610'	,	'All the Presidents Men'	,	null	,	'Engels'	,	null	,	1	,	90	,	1965	,	177	,	'Presidenten en hun….'	,	null	,	null	);
INSERT INTO books  VALUES(	'9903102097203'	,	'Discovery of India, The'	,	null	,	'Engels'	,	null	,	1	,	50	,	1968	,	230	,	'Alles wat je ooit wilde weten over Indie'	,	null	,	null	);
INSERT INTO books  VALUES(	'0704267515804'	,	'Integration of the Indian States'	,	null	,	'Engels'	,	null	,	1	,	50	,	1971	,	230	,	'geschiedenis over de Indische staten'	,	null	,	null	);
INSERT INTO books  VALUES(	'8511241466511'	,	'Scoop!'	,	null	,	'Engels'	,	null	,	1	,	50	,	1974	,	216	,	'Spannend stukje onontdekte geschiedenis van de…..'	,	null	,	null	);
INSERT INTO books  VALUES(	'9810222988210'	,	'Veil: Secret Wars of the CIA'	,	null	,	'Engels'	,	null	,	1	,	90	,	1975	,	171	,	'Oorlogen waar niet over gerapporteerd worden bestaan al sinds….'	,	null	,	null	);
INSERT INTO books  VALUES(	'7607191633107'	,	'Animal Farm'	,	null	,	'Engels'	,	null	,	5	,	100	,	1969	,	112	,	'Het satirische verhaal, dat ook als moderne fabel of allegorie kan worden opgevat, gaat over een groep dieren die er genoeg van heeft om als slaven van de mensheid te moeten leven,'	,	null	,	null	);
INSERT INTO books  VALUES(	'8702201764002'	,	'Beautiful and the Damned, The'	,	null	,	'Engels'	,	null	,	1	,	40	,	1972	,	198	,	'Het onderzoekt en portretteert de café-samenleving in New York en de Amerikaanse oosterse elite tijdens het jazztijdperk'	,	null	,	null	);
INSERT INTO books  VALUES(	'6609232132909'	,	'Down and Out in Paris and London'	,	null	,	'Engels'	,	null	,	2	,	40	,	1974	,	179	,	'debuut van de Engelse schrijver George Orwell uit 1933. Hij was naar Parijs verhuisd in 1928. Zijn carrière als freelance journalist wilde niet lukken'	,	null	,	null	);
INSERT INTO books  VALUES(	'7710206869010'	,	'Idea of Justice, The'	,	null	,	'Engels'	,	null	,	1	,	40	,	2004	,	212	,	'Filosofische studie over rechtvaardigheid,'	,	null	,	null	);
INSERT INTO books  VALUES(	'7912216976812'	,	'Identity and Violence'	,	null	,	'Engels'	,	null	,	1	,	40	,	2006	,	219	,	'hoe sommige mensen hun identiteit bepalen via aggressieve daden'	,	null	,	null	);
INSERT INTO books  VALUES(	'8111232018011'	,	'Tales of Beedle the Bard'	,	null	,	'Engels'	,	null	,	1	,	100	,	2007	,	184	,	'kinderboek geschreven door de Britse schrijfster J.K. Rowling. Het zou hetzelfde verhalenboek zijn als vermeld in Harry Potter en de Relieken van de Dood'	,	null	,	null	);
INSERT INTO books  VALUES(	'7602132192402'	,	'Empire of the Mughal - Brothers at War'	,	null	,	'Engels'	,	null	,	1	,	110	,	1994	,	180	,	'geschiedenis van de ….  '	,	null	,	null	);
INSERT INTO books  VALUES(	'7807142204307'	,	'Empire of the Mughal - Raiders from the North'	,	null	,	'Engels'	,	null	,	1	,	110	,	1995	,	180	,	'geschiedenis van de ….  '	,	null	,	null	);
INSERT INTO books  VALUES(	'8004202216204'	,	'Empire of the Mughal - Ruler of the World'	,	null	,	'Engels'	,	null	,	1	,	110	,	1997	,	180	,	'geschiedenis van de ….  '	,	null	,	null	);
INSERT INTO books  VALUES(	'8205212228105'	,	'Empire of the Mughal - The Serpents Tooth'	,	null	,	'Engels'	,	null	,	1	,	110	,	1999	,	180	,	'geschiedenis van de ….  '	,	null	,	null	);
INSERT INTO books  VALUES(	'8403222240003'	,	'Empire of the Mughal - The Tainted Throne'	,	null	,	'Engels'	,	null	,	1	,	110	,	2001	,	180	,	'geschiedenis van de ….  '	,	null	,	null	);
INSERT INTO books  VALUES(	'5510131288010'	,	'Orientalism'	,	null	,	'Engels'	,	null	,	1	,	40	,	2005	,	197	,	'geschiedenis van de ….  '	,	null	,	null	);
INSERT INTO books  VALUES(	'9212281728312'	,	'Batman Earth One'	,	null	,	'Engels'	,	null	,	10	,	30	,	1977	,	62	,	'Batman heeft nu….'	,	null	,	null	);
INSERT INTO books  VALUES(	'9611141752111'	,	'Batman: The Long Halloween'	,	null	,	'Engels'	,	null	,	9	,	30	,	1977	,	74	,	'Batman is…'	,	null	,	null	);
INSERT INTO books  VALUES(	'8110212002010'	,	'Crisis on Infinite Earths'	,	null	,	'Engels'	,	null	,	5	,	30	,	1998	,	65	,	'in dit boek kom je te weten…'	,	null	,	null	);
INSERT INTO books  VALUES(	'0407262061507'	,	'Death of Superman, The'	,	null	,	'Engels'	,	null	,	6	,	30	,	1976	,	88	,	'kan Superman sterven?'	,	null	,	null	);
INSERT INTO books  VALUES(	'8808182263808'	,	'Final Crisis'	,	null	,	'Engels'	,	null	,	9	,	30	,	1972	,	69	,	'Aan alles komt een einde, zo ook bij…'	,	null	,	null	);
INSERT INTO books  VALUES(	'9009252275709'	,	'Flashpoint'	,	null	,	'Engels'	,	null	,	5	,	30	,	1970	,	62	,	'Soms moet je gewoon….'	,	null	,	null	);
INSERT INTO books  VALUES(	'7101286545601'	,	'History of the DC Universe'	,	null	,	'Engels'	,	null	,	6	,	30	,	1963	,	64	,	'hoe kwam het tot stand?'	,	null	,	null	);
INSERT INTO books  VALUES(	'0001107839201'	,	'Journal of Economics, vol 106 No 3'	,	null	,	'Engels'	,	null	,	9	,	120	,	1966	,	235	,	'economie en al zijn facetten'	,	null	,	null	);
INSERT INTO books  VALUES(	'6410238162610'	,	'Justice League: The Villains Journey'	,	null	,	'Engels'	,	null	,	5	,	30	,	1967	,	62	,	'superhelden zijn nodig in een wereld waar…'	,	null	,	null	);
INSERT INTO books  VALUES(	'6612248270412'	,	'Justice League: Throne of Atlantis'	,	null	,	'Engels'	,	null	,	6	,	30	,	1968	,	65	,	'superhelden op zoek naar….'	,	null	,	null	);
INSERT INTO books  VALUES(	'7011168486011'	,	'Killing Joke, The'	,	null	,	'Engels'	,	null	,	9	,	30	,	1969	,	66	,	'in een wereld van ….'	,	null	,	null	);
INSERT INTO books  VALUES(	'6704181359404'	,	'Political Philosophers'	,	null	,	'Engels'	,	null	,	5	,	30	,	1971	,	66	,	'filosofen zitten overal, ook in de politiek'	,	null	,	null	);
INSERT INTO books  VALUES(	'6703251263403'	,	'Story of Philosophy, The'	,	null	,	'Engels'	,	null	,	6	,	20	,	1972	,	68	,	'filisofie: de basis'	,	null	,	null	);
INSERT INTO books  VALUES(	'7510101694610'	,	'Superman Earth One - 1'	,	null	,	'Engels'	,	null	,	8	,	30	,	1971	,	65	,	'hier kom je te weten hoe Superman…'	,	null	,	null	);
INSERT INTO books  VALUES(	'7712111802412'	,	'Superman Earth One - 2'	,	null	,	'Engels'	,	null	,	8	,	30	,	1972	,	65	,	'vervolg van Superman Earth One'	,	null	,	null	);
INSERT INTO books  VALUES(	'6811253311611'	,	'Wealth of Nations, The'	,	null	,	'Engels'	,	null	,	7	,	90	,	1971	,	175	,	'waarom zijn sommige naties rijk en andere niet?'	,	null	,	null	);
INSERT INTO books  VALUES(	'7207273527207'	,	'Worlds Great Thinkers, The'	,	null	,	'Engels'	,	null	,	6	,	30	,	1984	,	68	,	'beroemde denkers doorheen de geschiedenis'	,	null	,	null	);
INSERT INTO books  VALUES(	'6812181585512'	,	'Amulet of Samarkand, The'	,	null	,	'Engels'	,	null	,	2	,	90	,	1942	,	179	,	'het verhaal speelt zich af in…'	,	null	,	null	);
INSERT INTO books  VALUES(	'8809151704509'	,	'Attorney, The'	,	null	,	'Engels'	,	null	,	3	,	30	,	1944	,	170	,	'een advokaat raakt verzeild in een lastige….'	,	null	,	null	);
INSERT INTO books  VALUES(	'9406131740206'	,	'Batman Handbook'	,	null	,	'Engels'	,	null	,	4	,	30	,	1946	,	61	,	'hoe word ik Batman?'	,	null	,	null	);
INSERT INTO books  VALUES(	'6208261835408'	,	'Burning Bright'	,	null	,	'Engels'	,	null	,	5	,	40	,	1950	,	175	,	'dit boek vertelt het verhaal van…'	,	null	,	null	);
INSERT INTO books  VALUES(	'7708141978208'	,	'Courtroom Genius, The'	,	null	,	'Engels'	,	null	,	2	,	40	,	1954	,	217	,	'handige tips voor in de rechtbank'	,	null	,	null	);
INSERT INTO books  VALUES(	'5604232359004'	,	'Grapes of Wrath, The'	,	null	,	'Engels'	,	null	,	3	,	40	,	1955	,	196	,	'in dit boek kom je meer te weten over…'	,	null	,	null	);
INSERT INTO books  VALUES(	'0503197731403'	,	'Journal of a Novel'	,	null	,	'Engels'	,	null	,	4	,	40	,	1965	,	196	,	'dit verhaalt begint in…'	,	null	,	null	);
INSERT INTO books  VALUES(	'9908117947008'	,	'Judge, The'	,	null	,	'Engels'	,	null	,	2	,	30	,	1956	,	170	,	'Een rechter staat voor een zwaar dilemma wanneer…'	,	null	,	null	);
INSERT INTO books  VALUES(	'7805208917205'	,	'Life in Letters, A'	,	null	,	'Engels'	,	null	,	3	,	40	,	1958	,	196	,	'alles over de letter A'	,	null	,	null	);
INSERT INTO books  VALUES(	'9012269564012'	,	'Moon is Down, The'	,	null	,	'Engels'	,	null	,	4	,	40	,	1966	,	196	,	'wanneer het volle maan is…'	,	null	,	null	);
INSERT INTO books  VALUES(	'9206279671806'	,	'More Tears to Cry'	,	null	,	'Engels'	,	null	,	2	,	40	,	1967	,	235	,	'drama waarin de ….'	,	null	,	null	);
INSERT INTO books  VALUES(	'6008161264208'	,	'Once There Was a War'	,	null	,	'Engels'	,	null	,	3	,	40	,	1960	,	196	,	'Wat de oorlog kan doen met een mens'	,	null	,	null	);
INSERT INTO books  VALUES(	'8306231454606'	,	'Russian Journal, A'	,	null	,	'Engels'	,	null	,	4	,	40	,	1960	,	196	,	'Rusland tijdens de …'	,	null	,	null	);
INSERT INTO books  VALUES(	'7002263419402'	,	'Winter of Our Discontent, The'	,	null	,	'Engels'	,	null	,	2	,	40	,	1963	,	196	,	'in de winter is het niet alleen vreselijk koud maar ook….'	,	null	,	null	);
INSERT INTO books  VALUES(	'8907211775907'	,	'Beyond Degrees'	,	null	,	'Engels'	,	null	,	3	,	50	,	1984	,	222	,	'Dit boek zou werkelijk over alles kunnen gaan'	,	null	,	null	);
INSERT INTO books  VALUES(	'5803181811603'	,	'Bookless in Baghdad'	,	null	,	'Engels'	,	null	,	4	,	40	,	1986	,	206	,	'Bagdad geeft zijn geheimen prijs'	,	null	,	null	);
INSERT INTO books  VALUES(	'6408122121008'	,	'Dongri to Dubai'	,	null	,	'Engels'	,	null	,	2	,	40	,	1988	,	216	,	'Het begon allemaal in Dubai, waar….'	,	null	,	null	);
INSERT INTO books  VALUES(	'5805242370905'	,	'Great Indian Novel, The'	,	null	,	'Engels'	,	null	,	3	,	40	,	1990	,	198	,	'Een Indische familie heeft maar 1….'	,	null	,	null	);
INSERT INTO books  VALUES(	'0207257408007'	,	'India from Midnight to Milennium'	,	null	,	'Engels'	,	null	,	4	,	40	,	1992	,	198	,	'Indie kent een ware revolutie in…'	,	null	,	null	);
INSERT INTO books  VALUES(	'6806158378206'	,	'Karl Marx Biography'	,	null	,	'Engels'	,	null	,	2	,	50	,	1994	,	162	,	'het leven van Karl Marx begon in….'	,	null	,	null	);
INSERT INTO books  VALUES(	'6904151930604'	,	'Complete Mastermind, The'	,	null	,	'Engels'	,	null	,	3	,	30	,	1996	,	178	,	'Wie vindt zijn weg in de dulstere….'	,	null	,	null	);
INSERT INTO books  VALUES(	'0707161490307'	,	'Selected Short Stories'	,	null	,	'Engels'	,	null	,	4	,	30	,	1998	,	215	,	'verhalenbundel'	,	null	,	null	);
INSERT INTO books  VALUES(	'5506149055406'	,	'Short History of the World, A'	,	null	,	'Engels'	,	null	,	2	,	40	,	2000	,	197	,	'de geschiedenis van de wereld, maar vanuit alternatieve standpunten'	,	null	,	null	);
INSERT INTO books  VALUES(	'6107229735207'	,	'Slaughterhouse Five'	,	null	,	'Engels'	,	null	,	3	,	90	,	2002	,	198	,	'wat gebeurt er allemaal in dat slachthuis in het midden van de…..'	,	null	,	null	);
INSERT INTO books  VALUES(	'7404193635004'	,	'Worlds Greatest Short Stories, The'	,	null	,	'Engels'	,	null	,	4	,	30	,	2004	,	217	,	'verhalenbundel'	,	null	,	null	);
INSERT INTO books  VALUES(	'7605103742805'	,	'Worlds Greatest Trials, The'	,	null	,	'Engels'	,	null	,	2	,	40	,	2006	,	210	,	'spannende weetjes uit de geschiedenis'	,	null	,	null	);
INSERT INTO books  VALUES(	'8904121216604'	,	'New Machiavelli, The'	,	null	,	'Engels'	,	null	,	3	,	40	,	2008	,	180	,	'kan je leren manipuleren? rijk worden? macht verwerven?'	,	null	,	null	);
INSERT INTO books  VALUES(	'7308136653408'	,	'How to Think Like Sherlock Holmes'	,	null	,	'Engels'	,	null	,	4	,	40	,	1988	,	240	,	'Sherlock Holms geeft zijn geheimen prijs'	,	null	,	null	);
INSERT INTO books  VALUES(	'9411199779611'	,	'Murphys Law'	,	null	,	'Engels'	,	null	,	2	,	50	,	1977	,	178	,	'wie kent de Wet van Murphy niet?'	,	null	,	null	);
INSERT INTO books  VALUES(	'6209281276109'	,	'One'	,	null	,	'Engels'	,	null	,	3	,	30	,	1996	,	172	,	'er is slechts 1….'	,	null	,	null	);
INSERT INTO books  VALUES(	'0008202772608'	,	'Uncommon Wisdom'	,	null	,	'Engels'	,	null	,	4	,	30	,	1992	,	197	,	'Nieuwe ontdekkingen in de ….'	,	null	,	null	);
INSERT INTO books  VALUES(	'6409221561709'	,	'Ahe Manohar Tari'	,	'Ahe Manohar Tari'	,	'Engels'	,	'Frans'	,	2	,	70	,	1960	,	213	,	'uit het Frans vertaalde boek over….'	,	null	,	null	);
INSERT INTO books  VALUES(	'7012152156712'	,	'Dylan on Dylan'	,	null	,	'Engels'	,	null	,	2	,	90	,	1977	,	197	,	'boek over de bekende Bob Dylan'	,	null	,	null	);
INSERT INTO books  VALUES(	'9809128054809'	,	'Jurassic Park'	,	null	,	'Engels'	,	null	,	3	,	90	,	1966	,	174	,	'dinosaurussen terug tot leven wekken is 1 ding, maar de gevolgen daarvan????'	,	null	,	null	);
INSERT INTO books  VALUES(	'5712141299912'	,	'Outsider, The'	,	null	,	'Engels'	,	null	,	4	,	40	,	1955	,	198	,	'Getuige zijn van een misdaad, maar daar niet over kunnen praten…..'	,	null	,	null	);
INSERT INTO books  VALUES(	'6302221335602'	,	'Pillars of the Earth, The'	,	null	,	'Engels'	,	null	,	2	,	90	,	1959	,	176	,	'Er was eens….'	,	null	,	null	);
INSERT INTO books  VALUES(	'0705282449205'	,	'To Sir With Love'	,	'Monsieur Amour'	,	'Engels'	,	'Frans'	,	3	,	40	,	1970	,	197	,	'hoe de liefde altijd zegeviert'	,	null	,	null	);
INSERT INTO books  VALUES(	'8203121668803'	,	'Artist and the Mathematician, The'	,	null	,	'Engels'	,	null	,	4	,	10	,	1980	,	186	,	'wiskunde in al zijn vormen is bijna zoals….'	,	null	,	null	);
INSERT INTO books  VALUES(	'5605171799705'	,	'Birth of a Theorem'	,	null	,	'Engels'	,	null	,	2	,	20	,	1985	,	234	,	'een nieuw denkpatroon, en het ontstaan er van'	,	null	,	null	);
INSERT INTO books  VALUES(	'6707241918707'	,	'Code Book, The'	,	null	,	'Engels'	,	null	,	3	,	40	,	1972	,	197	,	'leren coderen'	,	null	,	null	);
INSERT INTO books  VALUES(	'6810242144810'	,	'Drunkards Walk, The'	,	null	,	'Engels'	,	null	,	4	,	40	,	1975	,	197	,	null	,	null	,	null	);
INSERT INTO books  VALUES(	'9107122347107'	,	'God Created the Integers'	,	null	,	'Engels'	,	null	,	2	,	40	,	1977	,	197	,	'alles over integers'	,	null	,	null	);
INSERT INTO books  VALUES(	'6903166437803'	,	'Hidden Connections, The'	,	null	,	'Engels'	,	null	,	3	,	50	,	1984	,	197	,	'verbanden maken het mogelijk om….'	,	null	,	null	);
INSERT INTO books  VALUES(	'6111211323711'	,	'Physics and Philosophy'	,	null	,	'Engels'	,	null	,	4	,	40	,	1986	,	197	,	'een filosofische benadering van fysica'	,	null	,	null	);
INSERT INTO books  VALUES(	'5902219508602'	,	'Simpsons and Their Mathematical Secrets'	,	null	,	'Engels'	,	null	,	5	,	40	,	1991	,	233	,	'wiskundige geheimen'	,	null	,	null	);
INSERT INTO books  VALUES(	'8507152233607'	,	'Theory of Everything, The'	,	null	,	'Engels'	,	null	,	1	,	30	,	1970	,	217	,	'meer nieuwe denkpatronen'	,	null	,	null	);
INSERT INTO books  VALUES(	'0404281502204'	,	'20000 Leagues Under the Sea'	,	'Vingt mille lieues sous les mers'	,	'Engels'	,	'Frans'	,	1	,	40	,	1901	,	190	,	'about the adventures of Professor Aronnax, his servant Conseil, and Ned Land on board the Nautilus.'	,	null	,	null	);
INSERT INTO books  VALUES(	'7006251597406'	,	'Analysis, Vol I'	,	null	,	'Engels'	,	null	,	2	,	10	,	1982	,	248	,	'analyse'	,	null	,	null	);
INSERT INTO books  VALUES(	'7211261609311'	,	'Angels and Demons'	,	null	,	'Engels'	,	null	,	3	,	60	,	2004	,	170	,	'spannend thriller, werd ook verfilmd'	,	null	,	null	);
INSERT INTO books  VALUES(	'7402271621202'	,	'Angels and Demons'	,	null	,	'Engels'	,	null	,	4	,	90	,	2002	,	178	,	'spannend thriller, werd ook verfilmd'	,	null	,	null	);
INSERT INTO books  VALUES(	'5710191859210'	,	'Cathedral and the Bazaar, The'	,	null	,	'Engels'	,	null	,	2	,	80	,	1983	,	217	,	'ergens ver weg van de ….'	,	null	,	null	);
INSERT INTO books  VALUES(	'7501131966301'	,	'Computer Vision, A Modern Approach'	,	null	,	'Engels'	,	null	,	3	,	80	,	2012	,	255	,	'een nieuwe benadering van....'	,	null	,	null	);
INSERT INTO books  VALUES(	'8312222013912'	,	'Data Mining Handbook'	,	null	,	'Engels'	,	null	,	4	,	10	,	2001	,	242	,	'alles over data mining'	,	null	,	null	);
INSERT INTO books  VALUES(	'8506172025806'	,	'Data Scientists at Work'	,	null	,	'Engels'	,	null	,	2	,	10	,	2005	,	230	,	'hoe data scientists denken, en vooral WAAROM?'	,	null	,	null	);
INSERT INTO books  VALUES(	'0211182037711'	,	'Data Smart'	,	null	,	'Engels'	,	null	,	3	,	120	,	1987	,	235	,	'meer over data'	,	null	,	null	);
INSERT INTO books  VALUES(	'0702252049602'	,	'Data Structures Using C and C++'	,	null	,	'Engels'	,	null	,	4	,	20	,	1999	,	235	,	'nog meer over data'	,	null	,	null	);
INSERT INTO books  VALUES(	'0005192085305'	,	'Devils Advocate, The'	,	null	,	'Engels'	,	null	,	2	,	40	,	2006	,	178	,	'wie wil er advokaat zijn van iemand die….'	,	null	,	null	);
INSERT INTO books  VALUES(	'7411282180511'	,	'Elements of Information Theory'	,	null	,	'Engels'	,	null	,	3	,	40	,	2004	,	229	,	'wat is een informatietheorie?  '	,	null	,	null	);
INSERT INTO books  VALUES(	'8311177192411'	,	'Image Processing and Mathematical Morphology'	,	null	,	'Engels'	,	null	,	4	,	20	,	2000	,	241	,	'hoe worden beelden verwerkt?'	,	null	,	null	);
INSERT INTO books  VALUES(	'0405277623605'	,	'Introduction to Algorithms'	,	null	,	'Engels'	,	null	,	2	,	80	,	1980	,	234	,	'introductie ….'	,	null	,	null	);
INSERT INTO books  VALUES(	'7407138701607'	,	'Learning OpenCV'	,	null	,	'Engels'	,	null	,	3	,	80	,	1981	,	232	,	'alles over ….'	,	null	,	null	);
INSERT INTO books  VALUES(	'7604148809404'	,	'Let Us C'	,	null	,	'Engels'	,	null	,	4	,	20	,	1995	,	213	,	'de C-taal'	,	null	,	null	);
INSERT INTO books  VALUES(	'8003219025003'	,	'Machine Learning for Hackers'	,	null	,	'Engels'	,	null	,	2	,	80	,	1990	,	233	,	'interesse in Hacken?  dan is dit boek zeker iets voor jou'	,	null	,	null	);
INSERT INTO books  VALUES(	'8201229132801'	,	'Making Software'	,	null	,	'Engels'	,	null	,	3	,	80	,	1987	,	232	,	'coderen, coderen en nog eens coderen'	,	null	,	null	);
INSERT INTO books  VALUES(	'9602109887402'	,	'Nature of Statistical Learning Theory, The'	,	null	,	'Engels'	,	null	,	4	,	120	,	2009	,	230	,	'statistiek in al zijn vormen'	,	null	,	null	);
INSERT INTO books  VALUES(	'8707111204707'	,	'Neural Networks'	,	null	,	'Engels'	,	null	,	2	,	20	,	2016	,	240	,	'neurale netwerken, wat is dat nu eigenlijk?'	,	null	,	null	);
INSERT INTO books  VALUES(	'6507171347507'	,	'Pointers in C'	,	null	,	'Engels'	,	null	,	3	,	20	,	1996	,	213	,	'in dit handboek wordt specifiek ingegaan op alles wat met pointers in C te maken heeft'	,	null	,	null	);
INSERT INTO books  VALUES(	'6905251371305'	,	'Power Electronics - Rashid'	,	null	,	'Engels'	,	null	,	4	,	80	,	1990	,	235	,	'electronica voor…'	,	null	,	null	);
INSERT INTO books  VALUES(	'7103261383203'	,	'Principles of Communication Systems'	,	null	,	'Engels'	,	null	,	2	,	120	,	1985	,	240	,	'communicatiesystemen: welke principes best hanteren'	,	null	,	null	);
INSERT INTO books  VALUES(	'7508191407008'	,	'Python for Data Analysis'	,	null	,	'Engels'	,	null	,	3	,	80	,	2014	,	233	,	'hoe kan ik python gebruik bij data-analyse, statistische verwerking, gegevensrepresentatie…?'	,	null	,	null	);
INSERT INTO books  VALUES(	'5711209282011'	,	'Signal and the Noise, The'	,	null	,	'Engels'	,	null	,	4	,	40	,	2003	,	233	,	'het begon allemaal in….'	,	null	,	null	);
INSERT INTO books  VALUES(	'6304171047804'	,	'Soft Computing and Intelligent Systems'	,	null	,	'Engels'	,	null	,	2	,	20	,	1982	,	242	,	'de aanzet tot AI en meer…'	,	null	,	null	);
INSERT INTO books  VALUES(	'6505181155605'	,	'Statistical Learning Theory'	,	null	,	'Engels'	,	null	,	3	,	120	,	2008	,	228	,	'basis principes van de statistiek'	,	null	,	null	);
INSERT INTO books  VALUES(	'6901261371201'	,	'Structure and Interpretation of Computer Programs'	,	null	,	'Engels'	,	null	,	4	,	80	,	1981	,	240	,	'computersoftware: structuur en interpretatie van de code'	,	null	,	null	);
INSERT INTO books  VALUES(	'7108271479008'	,	'Structure and Randomness'	,	null	,	'Engels'	,	null	,	2	,	10	,	1992	,	252	,	'dit boek handelt over de …'	,	null	,	null	);
INSERT INTO books  VALUES(	'0204162341404'	,	'Think Complexity'	,	null	,	'Engels'	,	null	,	2	,	80	,	1991	,	230	,	'wat doen onze hersenen als we denken?'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024515998'	,	'4 seizoenen'	,	'Different seasons'	,	'Nederlands'	,	'Engels'	,	2	,	130	,	1985	,	623	,	'bevat het verhaal waar de indrukwekkende film The Shawshank Redemption op gebaseerd is.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024578245'	,	'4 seizoenen'	,	'Different seasons'	,	'Nederlands'	,	'Engels'	,	6	,	130	,	1991	,	623	,	'bevat het verhaal waar de indrukwekkende film The Shawshank Redemption op gebaseerd is.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024522986'	,	'4 seizoenen'	,	'Different seasons'	,	'Nederlands'	,	'Engels'	,	4	,	140	,	1988	,	650	,	'bevat het verhaal waar de indrukwekkende film The Shawshank Redemption op gebaseerd is.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024552079'	,	'4 seizoenen'	,	'Different seasons'	,	'Nederlands'	,	'Engels'	,	3	,	140	,	1986	,	650	,	'bevat het verhaal waar de indrukwekkende film The Shawshank Redemption op gebaseerd is.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024517087'	,	'Bezeten stad'	,	'Salem s Lot'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	1982	,	590	,	'een rustig slapend stadje in Maine, waar niets is wat het lijkt,,,,'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024504716'	,	'Bezeten stad'	,	'Salem s Lot'	,	'Nederlands'	,	'Engels'	,	2	,	130	,	1983	,	590	,	'een rustig slapend stadje in Maine, waar niets is wat het lijkt,,,,'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024559995'	,	'Bezeten stad'	,	'Salem s Lot'	,	'Nederlands'	,	'Engels'	,	3	,	130	,	1984	,	590	,	'een rustig slapend stadje in Maine, waar niets is wat het lijkt,,,,'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024530342'	,	'Bezeten stad'	,	'Salem s Lot'	,	'Nederlands'	,	'Engels'	,	10	,	130	,	2003	,	590	,	'een rustig slapend stadje in Maine, waar niets is wat het lijkt,,,,'	,	null	,	null	);
INSERT INTO books  VALUES(	'9020410083'	,	'Bezeten stad'	,	'Salem s Lot'	,	'Nederlands'	,	'Engels'	,	4	,	130	,	1986	,	590	,	'een rustig slapend stadje in Maine, waar niets is wat het lijkt,,,,'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024510481'	,	'Bezeten stad'	,	'Salem s Lot'	,	'Nederlands'	,	'Engels'	,	5	,	130	,	1986	,	590	,	'een rustig slapend stadje in Maine, waar niets is wat het lijkt,,,,'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024546095'	,	'Bezeten stad'	,	'Salem s Lot'	,	'Nederlands'	,	'Engels'	,	8	,	130	,	1990	,	590	,	'een rustig slapend stadje in Maine, waar niets is wat het lijkt,,,,'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024578108'	,	'Bezeten stad'	,	'Salem s Lot'	,	'Nederlands'	,	'Engels'	,	11	,	130	,	2004	,	590	,	'een rustig slapend stadje in Maine, waar niets is wat het lijkt,,,,'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024511607'	,	'Bezeten stad'	,	'Salem s Lot'	,	'Nederlands'	,	'Engels'	,	9	,	140	,	1992	,	588	,	'een rustig slapend stadje in Maine, waar niets is wat het lijkt,,,,'	,	null	,	null	);
INSERT INTO books  VALUES(	'9026101082'	,	'Carrie'	,	'Carrie'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	1975	,	430	,	'het bloedstollende verhaal over Carrie White, een buitenbeentje met een godsdienstwaanzinnige moeder, dat...'	,	null	,	null	);
INSERT INTO books  VALUES(	'9020409409'	,	'Carrie'	,	'Carrie'	,	'Nederlands'	,	'Engels'	,	2	,	130	,	1975	,	430	,	'het bloedstollende verhaal over Carrie White, een buitenbeentje met een godsdienstwaanzinnige moeder, dat...'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024516528'	,	'Carrie'	,	'Carrie'	,	'Nederlands'	,	'Engels'	,	3	,	130	,	1975	,	430	,	'het bloedstollende verhaal over Carrie White, een buitenbeentje met een godsdienstwaanzinnige moeder, dat...'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024559138'	,	'Carrie'	,	'Carrie'	,	'Nederlands'	,	'Engels'	,	7	,	130	,	1982	,	435	,	'het bloedstollende verhaal over Carrie White, een buitenbeentje met een godsdienstwaanzinnige moeder, dat...'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024514096'	,	'Carrie'	,	'Carrie'	,	'Nederlands'	,	'Engels'	,	5	,	140	,	1985	,	440	,	'het bloedstollende verhaal over Carrie White, een buitenbeentje met een godsdienstwaanzinnige moeder, dat...'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024535956'	,	'Carrie'	,	'Carrie'	,	'Nederlands'	,	'Engels'	,	6	,	140	,	1989	,	440	,	'het bloedstollende verhaal over Carrie White, een buitenbeentje met een godsdienstwaanzinnige moeder, dat...'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024554225'	,	'Carrie'	,	'Carrie'	,	'Nederlands'	,	'Engels'	,	8	,	140	,	1990	,	440	,	'het bloedstollende verhaal over Carrie White, een buitenbeentje met een godsdienstwaanzinnige moeder, dat...'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789021015163'	,	'Carrie'	,	'Carrie'	,	'Nederlands'	,	'Engels'	,	9	,	140	,	1992	,	440	,	'het bloedstollende verhaal over Carrie White, een buitenbeentje met een godsdienstwaanzinnige moeder, dat...'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024517958'	,	'Christine'	,	'Christine'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	1983	,	501	,	'gaat over een tiener, Arnie Cunningham, die een oude Plymouth uit 1958 koopt en opkalefatert.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9020410318'	,	'Christine'	,	'Christine'	,	'Nederlands'	,	'Engels'	,	2	,	130	,	1983	,	501	,	'gaat over een tiener, Arnie Cunningham, die een oude Plymouth uit 1958 koopt en opkalefatert.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024515920'	,	'Christine'	,	'Christine'	,	'Nederlands'	,	'Engels'	,	3	,	130	,	1984	,	501	,	'gaat over een tiener, Arnie Cunningham, die een oude Plymouth uit 1958 koopt en opkalefatert.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024561568'	,	'Christine'	,	'Christine'	,	'Nederlands'	,	'Engels'	,	7	,	130	,	1995	,	501	,	'gaat over een tiener, Arnie Cunningham, die een oude Plymouth uit 1958 koopt en opkalefatert.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024581795'	,	'Christine'	,	'Christine'	,	'Nederlands'	,	'Engels'	,	8	,	130	,	1996	,	501	,	'gaat over een tiener, Arnie Cunningham, die een oude Plymouth uit 1958 koopt en opkalefatert.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024523117'	,	'Christine'	,	'Christine'	,	'Nederlands'	,	'Engels'	,	5	,	140	,	1988	,	501	,	'gaat over een tiener, Arnie Cunningham, die een oude Plymouth uit 1958 koopt en opkalefatert.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024543827'	,	'Christine'	,	'Christine'	,	'Nederlands'	,	'Engels'	,	6	,	140	,	1989	,	505	,	'gaat over een tiener, Arnie Cunningham, die een oude Plymouth uit 1958 koopt en opkalefatert.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789021016115'	,	'Christine'	,	'Christine'	,	'Nederlands'	,	'Engels'	,	9	,	140	,	2000	,	506	,	'gaat over een tiener, Arnie Cunningham, die een oude Plymouth uit 1958 koopt en opkalefatert.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789021025278'	,	'Christine'	,	'Christine'	,	'Nederlands'	,	'Engels'	,	10	,	130	,	2001	,	510	,	'gaat over een tiener, Arnie Cunningham, die een oude Plymouth uit 1958 koopt en opkalefatert.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024578238'	,	'Cujo'	,	'Cujo'	,	'Nederlands'	,	'Engels'	,	8	,	130	,	2000	,	488	,	'gaat over een Sint-Bernard die hondsdol wordt en meerdere mensen vermoordt'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024581832'	,	'Cujo'	,	'Cujo'	,	'Nederlands'	,	'Engels'	,	10	,	130	,	2002	,	478	,	'gaat over een Sint-Bernard die hondsdol wordt en meerdere mensen vermoordt'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024561438'	,	'Groene Mijl, de'	,	'The Green Mile'	,	'Nederlands'	,	'Engels'	,	3	,	130	,	1996	,	601	,	'Vanuit het bejaardentehuis waar hij zit, blikt hij terug op zijn tijd als gevangenisbewaker op de dodengang'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024502780'	,	'Groene Mijl, De'	,	'The Green Mile'	,	'Nederlands'	,	'Engels'	,	4	,	130	,	1996	,	603	,	'Vanuit het bejaardentehuis waar hij zit, blikt hij terug op zijn tijd als gevangenisbewaker op de dodengang'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024578320'	,	'Groene Mijl, de'	,	'The Green Mile'	,	'Nederlands'	,	'Engels'	,	6	,	130	,	2002	,	600	,	'Vanuit het bejaardentehuis waar hij zit, blikt hij terug op zijn tijd als gevangenisbewaker op de dodengang'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024561636'	,	'Misery'	,	'Misery'	,	'Nederlands'	,	'Engels'	,	2	,	130	,	1987	,	387	,	'gaat over de romanschrijver Paul Sheldon, die gegijzeld wordt door een krankzinnige fan.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789021015668'	,	'Misery'	,	'Misery'	,	'Nederlands'	,	'Engels'	,	4	,	130	,	1990	,	367	,	'gaat over de romanschrijver Paul Sheldon, die gegijzeld wordt door een krankzinnige fan.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024578160'	,	'Misery'	,	'Misery'	,	'Nederlands'	,	'Engels'	,	5	,	130	,	1992	,	366	,	'gaat over de romanschrijver Paul Sheldon, die gegijzeld wordt door een krankzinnige fan.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024581818'	,	'Misery'	,	'Misery'	,	'Nederlands'	,	'Engels'	,	6	,	130	,	1998	,	366	,	'gaat over de romanschrijver Paul Sheldon, die gegijzeld wordt door een krankzinnige fan.'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024578146'	,	'Ogen van vuur'	,	'Firestarter'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	1980	,	399	,	'In hun studententijd hebben Andy McGee en zijn vrouw Vicky vrijwillig meegedaan aan een experiment'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024526663'	,	'Ogen van vuur'	,	'Firestarter'	,	'Nederlands'	,	'Engels'	,	2	,	140	,	1980	,	398	,	'In hun studententijd hebben Andy McGee en zijn vrouw Vicky vrijwillig meegedaan aan een experiment'	,	null	,	null	);
INSERT INTO books  VALUES(	'9024551870'	,	'Ogen van vuur'	,	'Firestarter'	,	'Nederlands'	,	'Engels'	,	4	,	140	,	1985	,	398	,	'In hun studententijd hebben Andy McGee en zijn vrouw Vicky vrijwillig meegedaan aan een experiment'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789021014166'	,	'Ogen van vuur'	,	'Firestarter'	,	'Nederlands'	,	'Engels'	,	5	,	140	,	1988	,	388	,	'In hun studententijd hebben Andy McGee en zijn vrouw Vicky vrijwillig meegedaan aan een experiment'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789021022093'	,	'Shining, de'	,	'The Shining'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	1983	,	449	,	'draait om het gezin Torrance, dat in het winterseizoen een verlaten hotel beheert waar het blijkt te spoken. '	,	null	,	null	);
INSERT INTO books  VALUES(	'9789046322826'	,	'Shining, de'	,	'The Shining'	,	'Nederlands'	,	'Engels'	,	3	,	130	,	1985	,	449	,	'draait om het gezin Torrance, dat in het winterseizoen een verlaten hotel beheert waar het blijkt te spoken. '	,	null	,	null	);
INSERT INTO books  VALUES(	'9789024579556'	,	'Shining, de'	,	'The Shining'	,	'Nederlands'	,	'Engels'	,	6	,	130	,	1990	,	450	,	'draait om het gezin Torrance, dat in het winterseizoen een verlaten hotel beheert waar het blijkt te spoken. '	,	null	,	null	);
INSERT INTO books  VALUES(	'9789045209524'	,	'Een duistere schaudw'	,	'A darker shade of Sweden'	,	'Nederlands'	,	'Engels'	,	1	,	150	,	2015	,	351	,	'Bundel met zeventien ingeleide verhalen uit de moderne Zweedse misdaadliteratuur.'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-90-446-3264-4'	,	'Draai je niet om'	,	'Vand dig inte om'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2016	,	369	,	'Ooit was Beckomberga het grootste psychiatrisch ziekenhuis van Europa. Nu zijn de sporen van het verleden gewist en'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-90-446-2766-4'	,	'Geef me je hand'	,	'Lat mig t din hand'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2015	,	456	,	'In de nacht voor Walpurgisnacht valt Charlie van een balkon op de elfde verdieping aan de Jakobsbergsgatan. Alles wijst op zelfmoord'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-90-446-2302-4'	,	'Het stille graf'	,	'I tystnaden begravd'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2011	,	321	,	'dicht bij de Finse grens. Het is winter en ijskoud als de eenzame Eric in een afgelegen, oude boerderij wordt doodgeslagen.'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-90-446-1915-7'	,	'Vrouwen op het strand'	,	'Kvinnorna pa stranden'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2009	,	357	,	'Op een ochtend ontwaakt Terese, een jonge Zweedse vrouw, op een strand in Zuid-Spanje. Ze wankelt naar de zee en stuit op een lichaam.'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-94-00-50784-5'	,	'Koudvuur'	,	'Kallbrand'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2018	,	454	,	'Op de Mekongrivier in Thailand glijdt een primitieve kano door het water. De man die erin zit is de voormalige inspecteur Tom Stilton. In zijn zak zit een foto van een onbekende man.'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-94-00-50783-8'	,	'Wiegelied'	,	'Sov du lilla videung'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2016	,	532	,	'Op een nacht vindt de dakloze Muriel een huilend meisje midden in het centrum van Stockholm'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-94-00-50218-5'	,	'Zwarte dageraad'	,	'Svart Gryning'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2014	,	358	,	'Olivia Rönning heeft besloten terug te keren bij de politie en wordt op een zaak gezet'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-94-00-50217-8'	,	'De derde stem'	,	'Den tredje rosten'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2013	,	655	,	'De blinde assistente van een messenwerper wordt levenloos aangetroffen in een park in Marseille.'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-94-00-50216-1'	,	'Springvloed'	,	'Springfloden'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2013	,	462	,	'Een dagje naar het strand wordt nooit meer hetzelfde 1987.'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-90-5672-178-7'	,	'Gerechtigheid'	,	'Luftslottet som sprangdes'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2008	,	505	,	'Lisbeth Salander heeft een levensbedreigende aanslag overleefd en wordt in kritieke toestand naar het ziekenhuis gebracht, evenals de man die verantwoordelijk is'	,	'MIL'	,	3	);
INSERT INTO books  VALUES(	'978-90-5672-177-0'	,	'De vrouw die met vuur speelde'	,	'Flickan som lekte med elden'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2006	,	466	,	'Drie moorden, één avond. De slachtoffers zijn twee journalisten die'	,	'MIL'	,	2	);
INSERT INTO books  VALUES(	'978-90-5672-176-3'	,	'Mannen die vrouwen haten'	,	'Man som hatar kvinnor'	,	'Nederlands'	,	'Zweeds'	,	1	,	160	,	2005	,	441	,	'Veertig jaar geleden is de zestienjarige Harriët Vanger op mysterieuze wijze verdwenen en vermoedelijk vermoord'	,	'MIL'	,	1	);
INSERT INTO books  VALUES(	'7803113850603'	,	'Secrets of the Girl with the Dragon Tattoo'	,	'Flickans hemligheter med Dragon Tattoo'	,	'Engels'	,	'Zweeds'	,	1	,	160	,	2011	,	245	,	'Everyone has secrets. Lisbeth Salander is a global phenomenon: a damaged, violent Goth-punk hacker who has become a 21st century heroine'	,	null	,	null	);
INSERT INTO books  VALUES(	'8001123958401'	,	'Harry Potter en de Steen der Wijzen'	,	'The Philosophers Stone'	,	'Nederlands'	,	'Engels'	,	2	,	170	,	1998	,	284	,	'Een jongen ontdekt op zijn 11de verjaardag dat hij tovenaar is'	,	'HP'	,	1	);
INSERT INTO books  VALUES(	'8208234066208'	,	'Harry Potter en de Geheime kamer'	,	'The Chamber of Secrets'	,	'Nederlands'	,	'Engels'	,	2	,	170	,	1999	,	302	,	'Een mysterieus monster valt kinderen aan op school'	,	'HP'	,	2	);
INSERT INTO books  VALUES(	'8409244174009'	,	'Harry Potter en de gevangene van Azkaban'	,	'The Prisoner of Azkaban'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2000	,	325	,	'Een gevaarlijke moordenaar ontsnapt uit de tovenaarsgevangenis'	,	'HP'	,	3	);
INSERT INTO books  VALUES(	'8610154281810'	,	'Harry Potter en de Vuurbeker'	,	'The Goblet of Fire'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2000	,	353	,	'Een interschoolcompetitie loopt uit de hand'	,	'HP'	,	4	);
INSERT INTO books  VALUES(	'8812164389612'	,	'Harry Potter en de Orde van de Feniks'	,	'The Order of the Phoenix'	,	'Nederlands'	,	'Engels'	,	3	,	170	,	2003	,	522	,	'Er ontstaat verzet tegen de mogelijke terugkeer van Voldemort'	,	'HP'	,	5	);
INSERT INTO books  VALUES(	'9006284497406'	,	'Harry Potter en de Halfbloed Prins'	,	'The Half-Blood Prince'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2005	,	488	,	'Harry komt meer te weten over de achtergrond van Voldemort'	,	'HP'	,	6	);
INSERT INTO books  VALUES(	'9211134605211'	,	'Harry Potter en de relieken van de dood'	,	'The Deathly Hallows'	,	'Nederlands'	,	'Engels'	,	2	,	170	,	2007	,	515	,	'Harry gaat op zoek naar de gruzielementen om Voldemort ten val te brengen'	,	'HP'	,	7	);
INSERT INTO books  VALUES(	'9789022580264'	,	'De glazen troon'	,	'Throne of glass'	,	'Nederlands'	,	'Engels'	,	2	,	170	,	2012	,	364	,	'Celaena wordt voor de keuze gesteld: óf haar leven slijten in de gevangenis, óf deelnemen aan een toernooi waarvan de winnaar de nieuwe kampioen van de koning wordt.'	,	'GT'	,	1	);
INSERT INTO books  VALUES(	'9789022580288'	,	'De donkere kroon'	,	'Crown of midnight'	,	'Nederlands'	,	'Engels'	,	2	,	170	,	2013	,	366	,	'Celaena Sardothien mag dan de kampioen van de koning zijn geworden, haar trouw aan de kroon is nihil.'	,	'GT'	,	2	);
INSERT INTO books  VALUES(	'9789022580295'	,	'Erfgenaam van vuur'	,	'Heir of fire'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2014	,	384	,	'Celaena Sardothien heeft de gevechten op leven en dood overleefd, maar tegen een zeer hoge prijs. '	,	'GT'	,	3	);
INSERT INTO books  VALUES(	'9789022580271'	,	'Koningin van de schaduw'	,	'Queen of shadows'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2015	,	471	,	'Iedereen van wie Celaena Sardothien houdt is van haar weggenomen. Toch dwingen de omstandigheden haar terug te keren naar Adarlan.'	,	'GT'	,	4	);
INSERT INTO books  VALUES(	'9789022580301'	,	'Rijk van stormen'	,	'Empire of storms'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2016	,	499	,	'De Duistere Koning Erawan gebruikt Aelins verleden, haar vijanden en haar vrienden in een uiterste krachtvertoon om te voorkomen dat ze haar doel bereikt.'	,	'GT'	,	5	);
INSERT INTO books  VALUES(	'9789022580318'	,	'Toren van de dageraad'	,	'Tower of Dawn'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2017	,	533	,	'Chaol Westfall, kapitein van de garde, stond altijd bekend om zijn kracht en onvoorwaardelijke loyaliteit. Maar dat is veranderd sinds'	,	'GT'	,	6	);
INSERT INTO books  VALUES(	'9789022582886'	,	'Koninkrijk van as'	,	'Kingdom of ash'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2018	,	644	,	'Aelin is gevangengenomen door de Fae-koningin. Ze is opgesloten op een geheime locatie, zonder enige hoop op ontsnapping.'	,	'GT'	,	7	);
INSERT INTO books  VALUES(	'9789022580265'	,	'De glazen troon'	,	'Throne of glass'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2012	,	366	,	'Celaena wordt voor de keuze gesteld: óf haar leven slijten in de gevangenis, óf deelnemen aan een toernooi waarvan de winnaar de nieuwe kampioen van de koning wordt.'	,	'GT'	,	1	);
INSERT INTO books  VALUES(	'9789022580289'	,	'De donkere kroon'	,	'Crown of midnight'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2013	,	366	,	'Celaena Sardothien mag dan de kampioen van de koning zijn geworden, haar trouw aan de kroon is nihil.'	,	'GT'	,	2	);
INSERT INTO books  VALUES(	'9789022590638'	,	'Het mes van de sluipmoordenaar'	,	'The assassins blade'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2014	,	328	,	'Celaena Sardothien is Adarlans meest gevreesde sluipmoordenaar. Officieel ligt haar loyaliteit bij'	,	null	,	null	);
INSERT INTO books  VALUES(	'9789022580266'	,	'Throne of glass'	,	null	,	'Engels'	,	null	,	1	,	50	,	2012	,	364	,	'Celaena has a tough choice to make…'	,	'TOG'	,	1	);
INSERT INTO books  VALUES(	'9789022580287'	,	'Crown of midnight'	,	null	,	'Engels'	,	null	,	1	,	50	,	2013	,	366	,	'Celaena is the kings champion, but…...'	,	'TOG'	,	2	);
INSERT INTO books  VALUES(	'9789022580296'	,	'Heir of fire'	,	null	,	'Engels'	,	null	,	1	,	50	,	2014	,	384	,	'Celaena Sardothien survived a lot of fights, but at what cost?'	,	'TOG'	,	3	);
INSERT INTO books  VALUES(	'9789022580272'	,	'Queen of shadows'	,	null	,	'Engels'	,	null	,	1	,	50	,	2015	,	471	,	'Celaena has lost everyone she ever loved, now she returns to Adarlan to…..'	,	'TOG'	,	4	);
INSERT INTO books  VALUES(	'9789022580303'	,	'Empire of storms'	,	null	,	'Engels'	,	null	,	1	,	50	,	2016	,	499	,	'The dark king Erawan uses Aelins past to destroy her.'	,	'TOG'	,	5	);
INSERT INTO books  VALUES(	'9789022580319'	,	'Tower of Dawn'	,	null	,	'Engels'	,	null	,	1	,	50	,	2017	,	533	,	'Chaol Westfall, captain of the royal military was always very loyal to the king, but everything changed since….'	,	'TOG'	,	6	);
INSERT INTO books  VALUES(	'9789022582887'	,	'Kingdom of ash'	,	null	,	'Engels'	,	null	,	1	,	50	,	2018	,	644	,	'Aelin has been captured by the immortal queen and has no hope to escape.'	,	'TOG'	,	7	);
INSERT INTO books  VALUES(	'9789000348275'	,	'Hof van doorns en rozen'	,	'A court of thorns and roses'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2015	,	528	,	'Het bos waarin de negentienjarige Feyre woont is in de lange wintermaanden een koude, sombere plek. Haar overlevingskansen'	,	'HDR'	,	1	);
INSERT INTO books  VALUES(	'9789000347568'	,	'Hof van mist en woede'	,	'A court of mist and fury'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2016	,	500	,	'Feyre heeft de vloek van Amarantha verbroken en is teruggekeerd naar het Lentehof, maar daarvoor moest ze een hoge prijs betalen.'	,	'HDR'	,	2	);
INSERT INTO books  VALUES(	'9789000349869'	,	'Hof van vleugels en verwoesting'	,	'A court of wings and ruin'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2017	,	463	,	'Feyre is teruggekeerd naar het Lentehof, vastbesloten informatie te verzamelen over Tamlins plannen en die van de koning'	,	'HDR'	,	3	);
INSERT INTO books  VALUES(	'9789000360475'	,	'Hof van ijs en sterren'	,	'A court of frost and starlight'	,	'Nederlands'	,	'Engels'	,	1	,	170	,	2018	,	511	,	'Maanden na de explosieve gebeurtenissen in Hof van vleugels en verwoesting, zijn Feyre, Rhysand en hun vrienden nog steeds bezig met'	,	'HDR'	,	4	);
INSERT INTO books  VALUES(	'90-245-2342-7'	,	'Het zwaard van de waarheid'	,	'Wizards First Rule'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	1994	,	874	,	'Sinds de splitsing van het land in drie afzonderlijke naties is Westland vrij gebleven van de smet van tovenarij. Totdat het zwaar verminkte lijk '	,	'WM'	,	1	);
INSERT INTO books  VALUES(	'978-90-245-6498-9'	,	'Steen der tranen'	,	'Stone of Tears'	,	'Nederlands'	,	'Engels'	,	16	,	130	,	1995	,	876	,	'Richard Cyper is geen eenvoudige woudloper meer. Hij is de Zoeker'	,	'WM'	,	2	);
INSERT INTO books  VALUES(	'90-245-0737-5'	,	'De bloedbroederschap'	,	'Blood of the Fold'	,	'Nederlands'	,	'Engels'	,	4	,	130	,	1996	,	636	,	'De Bloedbroederschap, het verbond van fanatieke, nietsontziende anti-magiers, is een formidabele tegenstander.'	,	'WM'	,	3	);
INSERT INTO books  VALUES(	'90-245-0974-4'	,	'De tempel der winden'	,	'Temple of the Winds'	,	'Nederlands'	,	'Engels'	,	3	,	130	,	1997	,	735	,	'Richard Cypher, de Zoeker, gaat een haast onmogelijke strijd aan met de anti-magie, '	,	'WM'	,	4	);
INSERT INTO books  VALUES(	'90-245-3734-7'	,	'Ziel van het vuur'	,	'Soul of the Fire'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	1999	,	688	,	'Richard Cyper en zijn geliefde Kahlan zijn erin geslaagd het land D Hara te vrijwaren voor een levensbedreigende, door magie gewrochte epidemie - maar'	,	'WM'	,	5	);
INSERT INTO books  VALUES(	'90-245-3913-7'	,	'Zuster van de duisternis'	,	'Faith of the Fallen'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2000	,	752	,	'Een Zuster van de Duisternis neemt Richard Cypher gevangen en voert hem diep de Oude Wereld in'	,	'WM'	,	6	);
INSERT INTO books  VALUES(	'90-245-4333-9'	,	'Zuilen der schepping'	,	'Pillars of Creation'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2001	,	655	,	'De winter is op komst. Met de verlammende angst voor een vernietigend leger in hun hart, wagen Richard Cypher en'	,	'WM'	,	7	);
INSERT INTO books  VALUES(	'90-245-4581-1'	,	'De aflossing'	,	'Debt of Bones'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2001	,	127	,	'Abby, een jonge vrouw, probeert de hulp af te dwingen van Zedd, de belangrijkste man ter wereld.'	,	'WM'	,	null	);
INSERT INTO books  VALUES(	'90-245-4688-5'	,	'Het weerloze rijk'	,	'Naked Empire'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2003	,	703	,	'Inmiddels is Richard Cypher een legendarische krijger, die met zijn vrouw Kahlan heeft gevochten tegen magische krachten,'	,	'WM'	,	8	);
INSERT INTO books  VALUES(	'90-245-5401-2'	,	'Ketenvuur'	,	'Chainfire'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2005	,	750	,	'Richard Cypher, Heer Rahl, de Zoeker, heerser over D Hara en drager van het Zwaard van de Waarheid, raakt op het slagveld ernstig gewond.'	,	'WM'	,	9	);
INSERT INTO books  VALUES(	'90-245-5478-0'	,	'Fantoom'	,	'Phantom'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2006	,	655	,	'Kahlan Amnell ontwaakte op een goede dag zonder zich haar naam te herinneren, zonder verleden, nu is zij de gevaarlijkste vrouw ter wereld'	,	'WM'	,	10	);
INSERT INTO books  VALUES(	'978-90-245-2769-4'	,	'De ongeschreven wet'	,	'Confessor'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2007	,	671	,	'De toekomst van het laatste restje vrije mensen is gehuld in inktzwarte duisternis'	,	'WM'	,	11	);
INSERT INTO books  VALUES(	'978-90-245-3061-8'	,	'De wet van negen'	,	'The Law of Nine'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2009	,	462	,	'Op weg naar de galerie die zijn schilderijen verkoopt, voorkomt de weinig succesvolle kunstschilder Alex Rahl met gevaar voor eigen leven een aanslag op een jonge vrouw.'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-90-245-3302-2'	,	'De omen machine'	,	'The Omen Machine'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2011	,	479	,	'Diep onder de grond wordt een mysterieuze machine in slaaptoestand aangetroffen. '	,	'RK'	,	1	);
INSERT INTO books  VALUES(	'978-90-245-6038-7'	,	'De eerste biechtmoeder'	,	'The First Confessor'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2012	,	511	,	'...weinig is bekend over de oorsprong van de Biechtmoeders, van wie ook Kahlan afstamt. In dit verre verleden'	,	null	,	null	);
INSERT INTO books  VALUES(	'978-90-245-6198-8'	,	'Het Derde Koninkrijk'	,	'The Third Kingdom'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2013	,	480	,	'Richard heeft de bloeddorstige Jut gedood en Kahlan uit haar klauwen gered, maar beiden zijn getroffen door de doodsaanraking van de Haagvrouw.'	,	'RK'	,	2	);
INSERT INTO books  VALUES(	'978-90-245-6198-9'	,	'Verscheurde Zielen'	,	'Severed Souls'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2014	,	517	,	'Vanuit de verste uithoeken van het D Haraanse Rijk trekken bisschop Hannis Arc en de oude keizer Sulachan'	,	'RK'	,	3	);
INSERT INTO books  VALUES(	'978-90-245-6198-7'	,	'Oorlogshart'	,	'Warheart'	,	'Nederlands'	,	'Engels'	,	1	,	130	,	2015	,	502	,	'Zielsverwanten, pionnen van de profetie en erfgenamen van een eeuwenoud conflict. Richard en Kahlans lotsbestemmingen'	,	'RK'	,	4	);


Prompt *************************************************
Prompt --> creatie en insert in table book_genres
Prompt *************************************************

CREATE TABLE book_genres(
ISBN                VARCHAR2(20)
                    CONSTRAINT bookgen_isbn_fk REFERENCES books,
genreid             VARCHAR2(5)
                    CONSTRAINT bookgen_gen_fk REFERENCES genres,
CONSTRAINT bookgen_PK PRIMARY KEY(ISBN, genreid)
);

INSERT INTO book_genres  VALUES(	'0404281502204'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'7211261609311'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'0005192085305'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7402271621202'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'5712141299912'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'0705282449205'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'9809128054809'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'6302221335602'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'9809128054809'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'8312222013912'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'8506172025806'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'8311177192411'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'8707111204707'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'7501131966301'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'7508191407008'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'7411282180511'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'5711209282011'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'9602109887402'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'6505181155605'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'7501131966301'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'7508191407008'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'7411282180511'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'5711209282011'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'0405277623605'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'6304171047804'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'7407138701607'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'8003219025003'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'0204162341404'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'0211182037711'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'7407138701607'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'8003219025003'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'0204162341404'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'8203121668803'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'6707241918707'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'6810242144810'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'6903166437803'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'6111211323711'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'5902219508602'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'8507152233607'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'8203121668803'	,	'WIS'	);
INSERT INTO book_genres  VALUES(	'6707241918707'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'5902219508602'	,	'WIS'	);
INSERT INTO book_genres  VALUES(	'5605171799705'	,	'WIS'	);
INSERT INTO book_genres  VALUES(	'9107122347107'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'9107122347107'	,	'WIS'	);
INSERT INTO book_genres  VALUES(	'7006251597406'	,	'WIS'	);
INSERT INTO book_genres  VALUES(	'7006251597406'	,	'DAT'	);
INSERT INTO book_genres  VALUES(	'5710191859210'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'0702252049602'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'6507171347507'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'6905251371305'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'7103261383203'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'7604148809404'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'8201229132801'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'6901261371201'	,	'COMP'	);
INSERT INTO book_genres  VALUES(	'7108271479008'	,	'WIS'	);
INSERT INTO book_genres  VALUES(	'6409221561709'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'7012152156712'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'7308136653408'	,	'PSY'	);
INSERT INTO book_genres  VALUES(	'6209281276109'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'0008202772608'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'0003141526003'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'9024515998'	,	'VER'	);
INSERT INTO book_genres  VALUES(	'9789024578245'	,	'VER'	);
INSERT INTO book_genres  VALUES(	'9024522986'	,	'VER'	);
INSERT INTO book_genres  VALUES(	'9024552079'	,	'VER'	);
INSERT INTO book_genres  VALUES(	'9024517087'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9024504716'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9024559995'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789024530342'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9020410083'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9024510481'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9024546095'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789024578108'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9024511607'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9024517087'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9024504716'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9024559995'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789024530342'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9020410083'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9024510481'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9024546095'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789024578108'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9024511607'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9026101082'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9020409409'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9024516528'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789024559138'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9024514096'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9024535956'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789024554225'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789021015163'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9026101082'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9020409409'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9024516528'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024559138'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9024514096'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9024535956'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024554225'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789021015163'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9024517958'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9020410318'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9024515920'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024561568'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024581795'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9024523117'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9024543827'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789021016115'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789021025278'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024578238'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024581832'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024561438'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9024502780'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024578320'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024561438'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9024502780'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789024578320'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789024561636'	,	'ROM'	);
INSERT INTO book_genres  VALUES(	'9789021015668'	,	'ROM'	);
INSERT INTO book_genres  VALUES(	'9789024578160'	,	'ROM'	);
INSERT INTO book_genres  VALUES(	'9789024581818'	,	'ROM'	);
INSERT INTO book_genres  VALUES(	'9789024561636'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789021015668'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024578160'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024581818'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024561636'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789021015668'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789024578160'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789024581818'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789024578146'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'9024526663'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'9024551870'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'9789021014166'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'9789021022093'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789046322826'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789024579556'	,	'HOR'	);
INSERT INTO book_genres  VALUES(	'9789024578146'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9024526663'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9024551870'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789021014166'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789021022093'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789046322826'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789024579556'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789045209524'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9789045209524'	,	'VER'	);
INSERT INTO book_genres  VALUES(	'978-90-446-3264-4'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-90-446-2766-4'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-90-446-2302-4'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-90-446-1915-7'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-94-00-50784-5'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-94-00-50783-8'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-94-00-50218-5'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-94-00-50217-8'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-94-00-50216-1'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-90-5672-178-7'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-90-5672-177-0'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-90-5672-176-3'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9606192311406'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'8711102323311'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'8902112335202'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'6705156330005'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'8502187300202'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'978-90-5672-176-3'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'9606192311406'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8711102323311'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8902112335202'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'6705156330005'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8502187300202'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7803113850603'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8001123958401'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'8208234066208'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'8409244174009'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'8610154281810'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'8812164389612'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9006284497406'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9211134605211'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9006284497406'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'9211134605211'	,	'TH'	);
INSERT INTO book_genres  VALUES(	'8111232018011'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'9789022580265'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580289'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022590638'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580266'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580287'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580296'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580272'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580303'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580319'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022582887'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789000348275'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789000347568'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789000349869'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789000360475'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580264'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580288'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580295'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580271'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580301'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022580318'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'9789022582886'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-2342-7'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'978-90-245-6498-9'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-0737-5'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-0974-4'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-3734-7'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-3913-7'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-4333-9'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-4581-1'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-4688-5'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-5401-2'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-5478-0'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'978-90-245-2769-4'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'978-90-245-3061-8'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'978-90-245-3302-2'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'978-90-245-6038-7'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'978-90-245-6198-8'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'978-90-245-6198-9'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'978-90-245-6198-7'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'90-245-2342-7'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'978-90-245-6498-9'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'90-245-0737-5'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'90-245-0974-4'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'90-245-3734-7'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'90-245-3913-7'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'90-245-4333-9'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'90-245-4581-1'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'90-245-4688-5'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'90-245-5401-2'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'90-245-5478-0'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'978-90-245-2769-4'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'978-90-245-3061-8'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'978-90-245-3302-2'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'978-90-245-6038-7'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'978-90-245-6198-8'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'978-90-245-6198-9'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'978-90-245-6198-7'	,	'SF'	);
INSERT INTO book_genres  VALUES(	'0003141526003'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'9901201537901'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'9104221787804'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'6106111883006'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'6003152382803'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'9010161716410'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'6504246222204'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'9909212880409'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'9808211549808'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'7804101645004'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'8401231680701'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'5912101871112'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'6201162394701'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'7709101418909'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'6606183203806'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'7206162168606'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'5603241240403'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'7906121910206'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'8302242125802'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'7803113850603'	,	'WET'	);
INSERT INTO book_genres  VALUES(	'6001251823501'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7105161942505'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7303281954403'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7909201990109'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'9801112109101'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8601172251901'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8106227084606'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8408179240608'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7301271395101'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7910111430810'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'0202151478402'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8601172251901'	,	'MIS'	);
INSERT INTO book_genres  VALUES(	'0505131514105'	,	'EC'	);
INSERT INTO book_genres  VALUES(	'8005111656905'	,	'EC'	);
INSERT INTO book_genres  VALUES(	'9210262287610'	,	'EC'	);
INSERT INTO book_genres  VALUES(	'9105231228505'	,	'EC'	);
INSERT INTO book_genres  VALUES(	'8112121442712'	,	'EC'	);
INSERT INTO book_genres  VALUES(	'7309191586809'	,	'EC'	);
INSERT INTO book_genres  VALUES(	'5509271847309'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'0504272073404'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7509146761209'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'5906201311806'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'0501142664801'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'6412173096012'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'6311121894911'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'6502231906802'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'9412272299512'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'5801151252301'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'8608241692608'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8609189348409'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8810259456210'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'0403132557003'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'6610171573610'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'9903102097203'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'0704267515804'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'8511241466511'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'9810222988210'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'7607191633107'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8702201764002'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'6609232132909'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'7710206869010'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'7912216976812'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'5803181811603'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'6408122121008'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'5805242370905'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'0207257408007'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'6806158378206'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'6904151930604'	,	'FAN'	);
INSERT INTO book_genres  VALUES(	'0707161490307'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'5506149055406'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'6107229735207'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7404193635004'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7605103742805'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'8904121216604'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7602132192402'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'7807142204307'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'8004202216204'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'8205212228105'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'8403222240003'	,	'GSCH'	);
INSERT INTO book_genres  VALUES(	'9212281728312'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'9611141752111'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'8110212002010'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'0407262061507'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'8808182263808'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'9009252275709'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'7101286545601'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'0001107839201'	,	'EC'	);
INSERT INTO book_genres  VALUES(	'6410238162610'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'6612248270412'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'7011168486011'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'6704181359404'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'6703251263403'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'7510101694610'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'7712111802412'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'6811253311611'	,	'EC'	);
INSERT INTO book_genres  VALUES(	'7207273527207'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'6812181585512'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'8809151704509'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'9406131740206'	,	'STR'	);
INSERT INTO book_genres  VALUES(	'6208261835408'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7708141978208'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'5604232359004'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'0503197731403'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'9908117947008'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'7805208917205'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'9012269564012'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'9206279671806'	,	'FIC'	);
INSERT INTO book_genres  VALUES(	'6008161264208'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'8306231454606'	,	'NFIC'	);
INSERT INTO book_genres  VALUES(	'7002263419402'	,	'FIC'	);


Prompt *************************************************
Prompt --> creatie en insert in table book_contributors
Prompt *************************************************

CREATE TABLE book_contributors(
ISBN                VARCHAR2(20)
                    CONSTRAINT bookcon_isbn_fk REFERENCES books,
job                 VARCHAR2(20),
contributorID       NUMBER(4)
                    CONSTRAINT bookcon_id_fk REFERENCES contributors,
CONSTRAINT bookcon_PK PRIMARY KEY(ISBN, job, contributorid)
);



INSERT INTO book_contributors  VALUES(	'0404281502204'	,	'auteur'	,	1596	);
INSERT INTO book_contributors  VALUES(	'5710191859210'	,	'auteur'	,	1603	);
INSERT INTO book_contributors  VALUES(	'5710191859210'	,	'auteur'	,	1610	);
INSERT INTO book_contributors  VALUES(	'8201229132801'	,	'auteur'	,	1603	);
INSERT INTO book_contributors  VALUES(	'6905251371305'	,	'auteur'	,	1603	);
INSERT INTO book_contributors  VALUES(	'7604148809404'	,	'auteur'	,	1603	);
INSERT INTO book_contributors  VALUES(	'6507171347507'	,	'auteur'	,	1603	);
INSERT INTO book_contributors  VALUES(	'6507171347507'	,	'auteur'	,	1610	);
INSERT INTO book_contributors  VALUES(	'6901261371201'	,	'auteur'	,	1610	);
INSERT INTO book_contributors  VALUES(	'0702252049602'	,	'auteur'	,	1610	);
INSERT INTO book_contributors  VALUES(	'7103261383203'	,	'auteur'	,	1610	);
INSERT INTO book_contributors  VALUES(	'7006251597406'	,	'auteur'	,	1610	);
INSERT INTO book_contributors  VALUES(	'7108271479008'	,	'auteur'	,	1610	);
INSERT INTO book_contributors  VALUES(	'7211261609311'	,	'auteur'	,	1617	);
INSERT INTO book_contributors  VALUES(	'0005192085305'	,	'auteur'	,	1617	);
INSERT INTO book_contributors  VALUES(	'7402271621202'	,	'auteur'	,	1617	);
INSERT INTO book_contributors  VALUES(	'8312222013912'	,	'auteur'	,	1624	);
INSERT INTO book_contributors  VALUES(	'8506172025806'	,	'auteur'	,	1624	);
INSERT INTO book_contributors  VALUES(	'8311177192411'	,	'auteur'	,	1624	);
INSERT INTO book_contributors  VALUES(	'8707111204707'	,	'auteur'	,	1624	);
INSERT INTO book_contributors  VALUES(	'7501131966301'	,	'auteur'	,	1624	);
INSERT INTO book_contributors  VALUES(	'7508191407008'	,	'auteur'	,	1624	);
INSERT INTO book_contributors  VALUES(	'7411282180511'	,	'auteur'	,	1624	);
INSERT INTO book_contributors  VALUES(	'5711209282011'	,	'auteur'	,	1624	);
INSERT INTO book_contributors  VALUES(	'9602109887402'	,	'auteur'	,	1624	);
INSERT INTO book_contributors  VALUES(	'6505181155605'	,	'auteur'	,	1624	);
INSERT INTO book_contributors  VALUES(	'9602109887402'	,	'auteur'	,	1631	);
INSERT INTO book_contributors  VALUES(	'6505181155605'	,	'auteur'	,	1631	);
INSERT INTO book_contributors  VALUES(	'0405277623605'	,	'auteur'	,	1631	);
INSERT INTO book_contributors  VALUES(	'6304171047804'	,	'auteur'	,	1631	);
INSERT INTO book_contributors  VALUES(	'7407138701607'	,	'auteur'	,	1631	);
INSERT INTO book_contributors  VALUES(	'8003219025003'	,	'auteur'	,	1631	);
INSERT INTO book_contributors  VALUES(	'0204162341404'	,	'auteur'	,	1631	);
INSERT INTO book_contributors  VALUES(	'0211182037711'	,	'auteur'	,	1631	);
INSERT INTO book_contributors  VALUES(	'8203121668803'	,	'auteur'	,	1638	);
INSERT INTO book_contributors  VALUES(	'5605171799705'	,	'auteur'	,	1638	);
INSERT INTO book_contributors  VALUES(	'6707241918707'	,	'auteur'	,	1638	);
INSERT INTO book_contributors  VALUES(	'6810242144810'	,	'auteur'	,	1638	);
INSERT INTO book_contributors  VALUES(	'9107122347107'	,	'auteur'	,	1638	);
INSERT INTO book_contributors  VALUES(	'6903166437803'	,	'auteur'	,	1638	);
INSERT INTO book_contributors  VALUES(	'6111211323711'	,	'auteur'	,	1638	);
INSERT INTO book_contributors  VALUES(	'5902219508602'	,	'auteur'	,	1638	);
INSERT INTO book_contributors  VALUES(	'8507152233607'	,	'auteur'	,	1638	);
INSERT INTO book_contributors  VALUES(	'6409221561709'	,	'auteur'	,	1645	);
INSERT INTO book_contributors  VALUES(	'7012152156712'	,	'auteur'	,	1645	);
INSERT INTO book_contributors  VALUES(	'9809128054809'	,	'auteur'	,	1645	);
INSERT INTO book_contributors  VALUES(	'5712141299912'	,	'auteur'	,	1645	);
INSERT INTO book_contributors  VALUES(	'6302221335602'	,	'auteur'	,	1645	);
INSERT INTO book_contributors  VALUES(	'0705282449205'	,	'auteur'	,	1645	);
INSERT INTO book_contributors  VALUES(	'7308136653408'	,	'auteur'	,	1646	);
INSERT INTO book_contributors  VALUES(	'9411199779611'	,	'auteur'	,	1646	);
INSERT INTO book_contributors  VALUES(	'6209281276109'	,	'auteur'	,	1646	);
INSERT INTO book_contributors  VALUES(	'0008202772608'	,	'auteur'	,	1646	);
INSERT INTO book_contributors  VALUES(	'9024552079'	,	'auteur'	,	1650	);
INSERT INTO book_contributors  VALUES(	'9024515998'	,	'auteur'	,	1651	);
INSERT INTO book_contributors  VALUES(	'9024515998'	,	'auteur'	,	1652	);
INSERT INTO book_contributors  VALUES(	'9789024578245'	,	'auteur'	,	1653	);
INSERT INTO book_contributors  VALUES(	'9024522986'	,	'auteur'	,	1654	);
INSERT INTO book_contributors  VALUES(	'9024522986'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024517087'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024504716'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024559995'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024530342'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9020410083'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024510481'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024546095'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024578108'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024511607'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9026101082'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9020409409'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024516528'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024559138'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024514096'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024535956'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024554225'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789021015163'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024517958'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9020410318'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024515920'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024561568'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024581795'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024523117'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024543827'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789021016115'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789021025278'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024578238'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024581832'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024561438'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024502780'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024578320'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024561636'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789021015668'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024578160'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024581818'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024578146'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024526663'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9024551870'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789021014166'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789021022093'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789046322826'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789024579556'	,	'auteur'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789045209524'	,	'samensteller'	,	1651	);
INSERT INTO book_contributors  VALUES(	'9789045209524'	,	'auteur'	,	1652	);
INSERT INTO book_contributors  VALUES(	'9789045209524'	,	'auteur'	,	1653	);
INSERT INTO book_contributors  VALUES(	'9789045209524'	,	'auteur'	,	1654	);
INSERT INTO book_contributors  VALUES(	'9789045209524'	,	'vertaler'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9789045209524'	,	'vertaler'	,	1656	);
INSERT INTO book_contributors  VALUES(	'978-90-446-3264-4'	,	'auteur'	,	1652	);
INSERT INTO book_contributors  VALUES(	'978-90-446-2766-4'	,	'auteur'	,	1652	);
INSERT INTO book_contributors  VALUES(	'978-90-446-2302-4'	,	'auteur'	,	1652	);
INSERT INTO book_contributors  VALUES(	'978-90-446-1915-7'	,	'auteur'	,	1652	);
INSERT INTO book_contributors  VALUES(	'978-90-446-3264-4'	,	'vertaler'	,	1656	);
INSERT INTO book_contributors  VALUES(	'978-90-446-2766-4'	,	'vertaler'	,	1656	);
INSERT INTO book_contributors  VALUES(	'978-90-446-2302-4'	,	'vertaler'	,	1655	);
INSERT INTO book_contributors  VALUES(	'978-90-446-1915-7'	,	'vertaler'	,	1655	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50784-5'	,	'auteur'	,	1653	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50783-8'	,	'auteur'	,	1653	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50218-5'	,	'auteur'	,	1653	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50217-8'	,	'auteur'	,	1653	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50216-1'	,	'auteur'	,	1653	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50784-5'	,	'auteur'	,	1654	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50783-8'	,	'auteur'	,	1654	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50218-5'	,	'auteur'	,	1654	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50217-8'	,	'auteur'	,	1654	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50216-1'	,	'auteur'	,	1654	);
INSERT INTO book_contributors  VALUES(	'978-90-5672-178-7'	,	'auteur'	,	1657	);
INSERT INTO book_contributors  VALUES(	'978-90-5672-177-0'	,	'auteur'	,	1657	);
INSERT INTO book_contributors  VALUES(	'978-90-5672-176-3'	,	'auteur'	,	1657	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50784-5'	,	'vertaler'	,	1656	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50783-8'	,	'vertaler'	,	1655	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50218-5'	,	'vertaler'	,	1656	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50217-8'	,	'vertaler'	,	1655	);
INSERT INTO book_contributors  VALUES(	'978-94-00-50216-1'	,	'vertaler'	,	1656	);
INSERT INTO book_contributors  VALUES(	'978-90-5672-178-7'	,	'vertaler'	,	1655	);
INSERT INTO book_contributors  VALUES(	'978-90-5672-177-0'	,	'vertaler'	,	1656	);
INSERT INTO book_contributors  VALUES(	'978-90-5672-176-3'	,	'vertaler'	,	1655	);
INSERT INTO book_contributors  VALUES(	'9606192311406'	,	'auteur'	,	1657	);
INSERT INTO book_contributors  VALUES(	'8711102323311'	,	'auteur'	,	1657	);
INSERT INTO book_contributors  VALUES(	'8902112335202'	,	'auteur'	,	1657	);
INSERT INTO book_contributors  VALUES(	'6705156330005'	,	'auteur'	,	1657	);
INSERT INTO book_contributors  VALUES(	'8502187300202'	,	'auteur'	,	1657	);
INSERT INTO book_contributors  VALUES(	'9606192311406'	,	'vertaler'	,	2002	);
INSERT INTO book_contributors  VALUES(	'8711102323311'	,	'vertaler'	,	2002	);
INSERT INTO book_contributors  VALUES(	'8902112335202'	,	'vertaler'	,	2002	);
INSERT INTO book_contributors  VALUES(	'6705156330005'	,	'vertaler'	,	2002	);
INSERT INTO book_contributors  VALUES(	'8502187300202'	,	'vertaler'	,	2002	);
INSERT INTO book_contributors  VALUES(	'7803113850603'	,	'vertaler'	,	2002	);
INSERT INTO book_contributors  VALUES(	'7803113850603'	,	'auteur'	,	1651	);
INSERT INTO book_contributors  VALUES(	'8001123958401'	,	'auteur'	,	2010	);
INSERT INTO book_contributors  VALUES(	'8208234066208'	,	'auteur'	,	2010	);
INSERT INTO book_contributors  VALUES(	'8409244174009'	,	'auteur'	,	2010	);
INSERT INTO book_contributors  VALUES(	'8610154281810'	,	'auteur'	,	2010	);
INSERT INTO book_contributors  VALUES(	'8812164389612'	,	'auteur'	,	2010	);
INSERT INTO book_contributors  VALUES(	'9006284497406'	,	'auteur'	,	2010	);
INSERT INTO book_contributors  VALUES(	'9211134605211'	,	'auteur'	,	2010	);
INSERT INTO book_contributors  VALUES(	'8111232018011'	,	'auteur'	,	2010	);
INSERT INTO book_contributors  VALUES(	'8001123958401'	,	'vertaler'	,	2011	);
INSERT INTO book_contributors  VALUES(	'8208234066208'	,	'vertaler'	,	2011	);
INSERT INTO book_contributors  VALUES(	'8409244174009'	,	'vertaler'	,	2011	);
INSERT INTO book_contributors  VALUES(	'8610154281810'	,	'vertaler'	,	2011	);
INSERT INTO book_contributors  VALUES(	'8812164389612'	,	'vertaler'	,	2011	);
INSERT INTO book_contributors  VALUES(	'9006284497406'	,	'vertaler'	,	2011	);
INSERT INTO book_contributors  VALUES(	'9211134605211'	,	'vertaler'	,	2011	);
INSERT INTO book_contributors  VALUES(	'8111232018011'	,	'vertaler'	,	2011	);
INSERT INTO book_contributors  VALUES(	'9789022580264'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580288'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580295'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580271'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580301'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580318'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022582886'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580265'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580289'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022590638'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580266'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580287'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580296'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580272'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580303'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580319'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022582887'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789000348275'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789000347568'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789000349869'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789000360475'	,	'auteur'	,	1700	);
INSERT INTO book_contributors  VALUES(	'9789022580264'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022580288'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022580295'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022580271'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022580301'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022580318'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022582886'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022580265'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022580289'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022590638'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022580266'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789022580287'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789022580296'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789022580272'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789022580303'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789022580319'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789022582887'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789000348275'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789000347568'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789000349869'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789000360475'	,	'vertaler'	,	1702	);
INSERT INTO book_contributors  VALUES(	'9789022580319'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789022582887'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789000348275'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'9789000347568'	,	'vertaler'	,	1701	);
INSERT INTO book_contributors  VALUES(	'90-245-2342-7'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'978-90-245-6498-9'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'90-245-0737-5'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'90-245-0974-4'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'90-245-3734-7'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'90-245-3913-7'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'90-245-4333-9'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'90-245-4581-1'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'90-245-4688-5'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'90-245-5401-2'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'90-245-5478-0'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'978-90-245-2769-4'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'978-90-245-3061-8'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'978-90-245-3302-2'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'978-90-245-6038-7'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'978-90-245-6198-8'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'978-90-245-6198-9'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'978-90-245-6198-7'	,	'auteur'	,	1800	);
INSERT INTO book_contributors  VALUES(	'90-245-2342-7'	,	'vertaler'	,	1801	);
INSERT INTO book_contributors  VALUES(	'978-90-245-6498-9'	,	'vertaler'	,	1801	);
INSERT INTO book_contributors  VALUES(	'90-245-0737-5'	,	'vertaler'	,	1801	);
INSERT INTO book_contributors  VALUES(	'90-245-0974-4'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'90-245-3734-7'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'90-245-3913-7'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'90-245-4333-9'	,	'vertaler'	,	1801	);
INSERT INTO book_contributors  VALUES(	'90-245-4581-1'	,	'vertaler'	,	1801	);
INSERT INTO book_contributors  VALUES(	'90-245-4688-5'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'90-245-5401-2'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'90-245-5478-0'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'978-90-245-2769-4'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'978-90-245-3061-8'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'978-90-245-3302-2'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'978-90-245-6038-7'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'978-90-245-6198-8'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'978-90-245-6198-9'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'978-90-245-6198-7'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'90-245-0737-5'	,	'vertaler'	,	1802	);
INSERT INTO book_contributors  VALUES(	'978-90-245-2769-4'	,	'vertaler'	,	1801	);
INSERT INTO book_contributors  VALUES(	'978-90-245-3061-8'	,	'vertaler'	,	1801	);
INSERT INTO book_contributors  VALUES(	'978-90-245-3302-2'	,	'vertaler'	,	1801	);
INSERT INTO book_contributors  VALUES(	'978-90-245-2769-4'	,	'omslagillustratie'	,	1803	);
INSERT INTO book_contributors  VALUES(	'978-90-245-3061-8'	,	'omslagillustratie'	,	1803	);
INSERT INTO book_contributors  VALUES(	'978-90-245-3302-2'	,	'omslagillustratie'	,	1803	);
INSERT INTO book_contributors  VALUES(	'0003141526003'	,	'auteur'	,	2000	);
INSERT INTO book_contributors  VALUES(	'9901201537901'	,	'auteur'	,	2000	);
INSERT INTO book_contributors  VALUES(	'9104221787804'	,	'auteur'	,	2000	);
INSERT INTO book_contributors  VALUES(	'6106111883006'	,	'auteur'	,	2000	);
INSERT INTO book_contributors  VALUES(	'6003152382803'	,	'auteur'	,	2000	);
INSERT INTO book_contributors  VALUES(	'7202288593802'	,	'auteur'	,	2000	);
INSERT INTO book_contributors  VALUES(	'9010161716410'	,	'auteur'	,	2001	);
INSERT INTO book_contributors  VALUES(	'6504246222204'	,	'auteur'	,	2001	);
INSERT INTO book_contributors  VALUES(	'9909212880409'	,	'auteur'	,	2001	);
INSERT INTO book_contributors  VALUES(	'9808211549808'	,	'auteur'	,	2001	);
INSERT INTO book_contributors  VALUES(	'7804101645004'	,	'auteur'	,	2001	);
INSERT INTO book_contributors  VALUES(	'8401231680701'	,	'auteur'	,	2001	);
INSERT INTO book_contributors  VALUES(	'5912101871112'	,	'auteur'	,	2001	);
INSERT INTO book_contributors  VALUES(	'6201162394701'	,	'auteur'	,	2001	);
INSERT INTO book_contributors  VALUES(	'7709101418909'	,	'auteur'	,	2001	);
INSERT INTO book_contributors  VALUES(	'6606183203806'	,	'auteur'	,	2001	);
INSERT INTO book_contributors  VALUES(	'7206162168606'	,	'auteur'	,	2002	);
INSERT INTO book_contributors  VALUES(	'5603241240403'	,	'auteur'	,	2002	);
INSERT INTO book_contributors  VALUES(	'7906121910206'	,	'auteur'	,	2002	);
INSERT INTO book_contributors  VALUES(	'8302242125802'	,	'auteur'	,	2022	);
INSERT INTO book_contributors  VALUES(	'7803113850603'	,	'auteur'	,	2022	);
INSERT INTO book_contributors  VALUES(	'6001251823501'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'7105161942505'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'7303281954403'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'7909201990109'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'9801112109101'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'8601172251901'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'8106227084606'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'8408179240608'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'7301271395101'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'7910111430810'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'0202151478402'	,	'auteur'	,	2003	);
INSERT INTO book_contributors  VALUES(	'0505131514105'	,	'auteur'	,	2004	);
INSERT INTO book_contributors  VALUES(	'8005111656905'	,	'auteur'	,	2004	);
INSERT INTO book_contributors  VALUES(	'9210262287610'	,	'auteur'	,	2004	);
INSERT INTO book_contributors  VALUES(	'9105231228505'	,	'auteur'	,	2004	);
INSERT INTO book_contributors  VALUES(	'8112121442712'	,	'auteur'	,	2004	);
INSERT INTO book_contributors  VALUES(	'7309191586809'	,	'auteur'	,	2004	);
INSERT INTO book_contributors  VALUES(	'5509271847309'	,	'auteur'	,	2005	);
INSERT INTO book_contributors  VALUES(	'0504272073404'	,	'auteur'	,	2005	);
INSERT INTO book_contributors  VALUES(	'7509146761209'	,	'auteur'	,	2005	);
INSERT INTO book_contributors  VALUES(	'5906201311806'	,	'auteur'	,	2005	);
INSERT INTO book_contributors  VALUES(	'0501142664801'	,	'auteur'	,	2005	);
INSERT INTO book_contributors  VALUES(	'6412173096012'	,	'auteur'	,	2005	);
INSERT INTO book_contributors  VALUES(	'6311121894911'	,	'auteur'	,	2006	);
INSERT INTO book_contributors  VALUES(	'6502231906802'	,	'auteur'	,	2006	);
INSERT INTO book_contributors  VALUES(	'9412272299512'	,	'auteur'	,	2006	);
INSERT INTO book_contributors  VALUES(	'5801151252301'	,	'auteur'	,	2006	);
INSERT INTO book_contributors  VALUES(	'8608241692608'	,	'auteur'	,	2007	);
INSERT INTO book_contributors  VALUES(	'8609189348409'	,	'auteur'	,	2007	);
INSERT INTO book_contributors  VALUES(	'8810259456210'	,	'auteur'	,	2007	);
INSERT INTO book_contributors  VALUES(	'0403132557003'	,	'auteur'	,	2007	);
INSERT INTO book_contributors  VALUES(	'6610171573610'	,	'auteur'	,	2008	);
INSERT INTO book_contributors  VALUES(	'9903102097203'	,	'auteur'	,	2008	);
INSERT INTO book_contributors  VALUES(	'0704267515804'	,	'auteur'	,	2008	);
INSERT INTO book_contributors  VALUES(	'8511241466511'	,	'auteur'	,	2008	);
INSERT INTO book_contributors  VALUES(	'9810222988210'	,	'auteur'	,	2008	);
INSERT INTO book_contributors  VALUES(	'7607191633107'	,	'auteur'	,	2009	);
INSERT INTO book_contributors  VALUES(	'8702201764002'	,	'auteur'	,	2009	);
INSERT INTO book_contributors  VALUES(	'6609232132909'	,	'auteur'	,	2009	);
INSERT INTO book_contributors  VALUES(	'7710206869010'	,	'auteur'	,	2009	);
INSERT INTO book_contributors  VALUES(	'7912216976812'	,	'auteur'	,	2009	);
INSERT INTO book_contributors  VALUES(	'6904151930604'	,	'auteur'	,	2030	);
INSERT INTO book_contributors  VALUES(	'0707161490307'	,	'auteur'	,	2030	);
INSERT INTO book_contributors  VALUES(	'5506149055406'	,	'auteur'	,	2030	);
INSERT INTO book_contributors  VALUES(	'6107229735207'	,	'auteur'	,	2030	);
INSERT INTO book_contributors  VALUES(	'7404193635004'	,	'auteur'	,	2030	);
INSERT INTO book_contributors  VALUES(	'7605103742805'	,	'auteur'	,	2030	);
INSERT INTO book_contributors  VALUES(	'8904121216604'	,	'auteur'	,	2030	);
INSERT INTO book_contributors  VALUES(	'7602132192402'	,	'auteur'	,	2031	);
INSERT INTO book_contributors  VALUES(	'7807142204307'	,	'auteur'	,	2031	);
INSERT INTO book_contributors  VALUES(	'8004202216204'	,	'auteur'	,	2031	);
INSERT INTO book_contributors  VALUES(	'8205212228105'	,	'auteur'	,	2031	);
INSERT INTO book_contributors  VALUES(	'8403222240003'	,	'auteur'	,	2031	);
INSERT INTO book_contributors  VALUES(	'9212281728312'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'9611141752111'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'8110212002010'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'0407262061507'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'8808182263808'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'9009252275709'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'7101286545601'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'0001107839201'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'6410238162610'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'6612248270412'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'7011168486011'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'6704181359404'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'6703251263403'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'7510101694610'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'7712111802412'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'6811253311611'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'7207273527207'	,	'auteur'	,	2012	);
INSERT INTO book_contributors  VALUES(	'6812181585512'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'8809151704509'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'9406131740206'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'6208261835408'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'7708141978208'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'5604232359004'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'0503197731403'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'9908117947008'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'7805208917205'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'9012269564012'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'9206279671806'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'6008161264208'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'8306231454606'	,	'auteur'	,	2013	);
INSERT INTO book_contributors  VALUES(	'7002263419402'	,	'auteur'	,	2013	);


COMMIT;

Prompt *************************************************
Prompt --> creatie en insert in table location_categories
Prompt *************************************************

CREATE TABLE location_categories(
categoryid      VARCHAR2(5)
                CONSTRAINT loccat_pk PRIMARY KEY,
category        VARCHAR2(25)
                CONSTRAINT loccat_cat_nn NOT NULL
);

INSERT INTO location_categories  VALUES(	'VROM'	,	'Volwassenen Romans'	);
INSERT INTO location_categories  VALUES(	'WET'	,	'Informatie Wetenschappen'	);
INSERT INTO location_categories  VALUES(	'VINF'	,	'Volwassenen Informatief'	);
INSERT INTO location_categories  VALUES(	'VSTR'	,	'Volwassenen Strips'	);


Prompt *************************************************
Prompt --> creatie en insert in table copies 
Prompt *************************************************

CREATE TABLE copies(
ISBN                VARCHAR2(20)
                    CONSTRAINT cop_isbn_fk REFERENCES books,
serial_no           NUMBER(2),
branch              VARCHAR2(20)
                    CONSTRAINT cop_br_nn NOT NULL
                    CONSTRAINT cop_br_chk CHECK (branch IN ('Dusart','Kuringen') ),
location_category   VARCHAR2(5)
                    CONSTRAINT cop_loccat_fk REFERENCES location_categories,
location_code       VARCHAR2(5),
CONSTRAINT cop_PK PRIMARY KEY(ISBN, serial_no)
);

-- vullen zonder location_category en location_code, deze worden nadien toegevoegd

DECLARE
   v_teller     NUMBER(1) := 0;
BEGIN
   FOR rec IN (SELECT * FROM books) LOOP
      v_teller := mod(v_teller + 1, 10);
      IF v_teller <= 5 THEN
         INSERT INTO copies VALUES(rec.isbn, 1, 'Dusart', null, null);
      ELSIF v_teller = 6 THEN
         INSERT INTO copies VALUES(rec.isbn, 1, 'Dusart', null, null);
         INSERT INTO copies VALUES(rec.isbn, 2, 'Dusart', null, null);
      ELSIF v_teller = 7 THEN
         INSERT INTO copies VALUES(rec.isbn, 1, 'Dusart', null, null);
         INSERT INTO copies VALUES(rec.isbn, 2, 'Kuringen', null, null); 
      ELSE
         INSERT INTO copies VALUES(rec.isbn, 1, 'Kuringen', null, null);
      END IF;
   END LOOP;
END;
/

UPDATE copies
SET location_category = 'VSTR'
where isbn in (select isbn from book_genres where genreid = 'STR');

UPDATE copies
SET location_category = 'WET'
where isbn in (select isbn from book_genres where genreid IN ( 'WET', 'WIS'));

UPDATE copies
SET location_category = 'VINF'
where isbn in (select isbn from book_genres where genreid IN ( 'NFIC', 'GSCH', 'DAT', 'COMP', 'PSY', 'EC'));

UPDATE copies
SET location_category = 'VROM'
where location_category IS NULL;

UPDATE copies cop
SET location_code = (SELECT MIN(UPPER(SUBSTR(REPLACE(lastname, ' ',''), 1,4)))
                     FROM books  
                     JOIN book_contributors USING(isbn)
                     JOIN contributors USING(contributorid)
                     WHERE cop.isbn = isbn);

UPDATE copies cop
SET location_code = SUBSTR(location_code,1,3)
WHERE location_code NOT LIKE 'VAN%';

UPDATE copies cop
SET location_code = 'AAA'
WHERE location_code IS NULL;



Prompt *************************************************
Prompt --> creatie en insert in table loans
Prompt *************************************************

CREATE TABLE loans(
ISBN                VARCHAR2(20),
serial_no           NUMBER(2),
date_borrowed       DATE,
date_of_return      DATE,
memberid            VARCHAR2(11)
                    CONSTRAINT loan_memb_fk REFERENCES members
                    CONSTRAINT loan_mem_nn NOT NULL,
extend              VARCHAR2(5),
CONSTRAINT loan_PK PRIMARY KEY(ISBN, serial_no, date_borrowed),
CONSTRAINT loan_isbnserno_fk FOREIGN KEY (isbn, serial_no) REFERENCES copies
);


DECLARE
   v_teller       NUMBER(2) := 0;
   v_memberid     members.memberid%type;
   v_datum        DATE;
   v_tijd1        NUMBER(10,8);
   v_tijd2         NUMBER(10,8);
   v_1            NUMBER(1);
   v_2            NUMBER(1);
   v_3            NUMBER(1);
   v_4            NUMBER(1);
   v_aantal_dagen NUMBER(2);
BEGIN
   SELECT MIN(memberid) INTO v_memberid FROM members;
   FOR rec IN (SELECT * FROM copies) LOOP
      v_teller := mod(v_teller + 1, 10);
      v_datum := to_date(v_teller + 5 || '-01-2020', 'dd-mm-yyyy');
      v_1 := substr(rec.isbn, -1, 1);
      v_2 := substr(rec.isbn, 1, 1);
      WHILE v_datum < to_date( '31-05-2022', 'dd-mm-yyyy')  LOOP
         v_3 := substr(v_memberid, 1, 1);
         v_4 := substr(v_memberid, -1, 1);
         v_aantal_dagen := v_1 + v_2 + v_3 + 4;
         v_tijd1 := (10 + (v_1 + v_3 + to_char(v_datum,'d') + (v_2+v_3*v_1+ to_char(v_datum,'d'))/100) / 3) / 24;
         v_tijd2 := (10 + (v_2 + v_4 + to_char(v_datum,'d') + (v_1+v_3*v_4+ to_char(v_datum,'d'))/100) / 3) / 24;
         INSERT INTO loans VALUES (rec.isbn, rec.serial_no, v_datum + v_tijd1, v_datum + v_aantal_dagen + v_tijd2, v_memberid, null);
         SELECT MIN(memberid) INTO v_memberid FROM members
         WHERE memberid > v_memberid;
         IF v_memberid is null THEN
               SELECT MIN(memberid) INTO v_memberid FROM members;
         END IF;
         v_datum := v_datum + v_aantal_dagen + substr(v_memberid, 2, 1)*3 + 1;
      END LOOP;
   END LOOP;
END;
/

UPDATE loans l
SET date_of_return = null
WHERE date_of_return = (select max(date_of_return)
                        from loans l2
                        where l2.isbn = l.isbn and l2.serial_no = l.serial_no)
AND to_char(date_borrowed, 'mm-yyyy') = '05-2022';

UPDATE loans
SET extend = 'ja'
WHERE date_of_return IS NULL
AND SUBSTR(isbn, -1, 1) < 5;

UPDATE loans
SET extend = 'nee'
WHERE date_of_return IS NULL
AND extend IS NULL;


COMMIT;

