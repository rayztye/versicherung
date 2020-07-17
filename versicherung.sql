-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table versicherung.abteilung: ~12 rows (approximately)
/*!40000 ALTER TABLE `abteilung` DISABLE KEYS */;
INSERT INTO `abteilung` (`ID`, `Kuerzel`, `Bezeichnung`, `Ort`) VALUES
	(1, 'Fibu', 'Finanzbuchhaltung', 'Dortmund'),
	(2, 'Albu', 'Anlagenbuchhaltung', 'Dortmund'),
	(3, 'Kore', 'Kostenrechnung', 'Dortmund'),
	(4, 'Kopl', 'Kostenplanung', 'Dortmund'),
	(5, 'Vert', 'Vertrieb', 'Essen'),
	(6, 'Lagh', 'Lagerhaltung', 'Bochum'),
	(7, 'Prod', 'Produktion', 'Bochum'),
	(8, 'ScAb', 'Schadensabwicklung', 'Essen'),
	(9, 'Pers', 'Personalverwaltung', 'Essen'),
	(10, 'Soz', 'Sozialverwaltung', 'Essen'),
	(11, 'Ausb', 'Ausbildung', 'Herne'),
	(12, 'Fue', 'Forschung und Entwicklung', 'Bochum');
/*!40000 ALTER TABLE `abteilung` ENABLE KEYS */;

-- Dumping data for table versicherung.dienstwagen: ~19 rows (approximately)
/*!40000 ALTER TABLE `dienstwagen` DISABLE KEYS */;
INSERT INTO `dienstwagen` (`ID`, `Kennzeichen`, `Farbe`, `Fahrzeugtyp_ID`, `Mitarbeiter_ID`) VALUES
	(1, 'DO-WB 421', 'elfenbein', 14, 1),
	(2, 'DO-WB 422', 'elfenbein', 14, 3),
	(3, 'DO-WB 423', 'elfenbein', 14, 5),
	(4, 'DO-WB 424', 'elfenbein', 14, 7),
	(5, 'DO-WB 425', 'elfenbein', 14, 9),
	(6, 'DO-WB 426', 'elfenbein', 14, 13),
	(7, 'DO-WB 427', 'elfenbein', 14, 15),
	(8, 'DO-WB 428', 'elfenbein', 14, 17),
	(9, 'DO-WB 429', 'elfenbein', 14, 21),
	(10, 'DO-WB 4210', 'elfenbein', 14, 23),
	(11, 'DO-WB 4211', 'elfenbein', 14, 25),
	(12, 'DO-WB 4212', 'elfenbein', 14, 27),
	(16, 'DO-WB 111', 'elfenbein', 16, NULL),
	(17, 'DO-WB 352', 'gelb', 2, 10),
	(18, 'DO-WB 353', 'gelb', 3, 11),
	(19, 'DO-WB 354', 'gelb', 4, 12),
	(20, 'DO-WB 382', 'gelb', 2, 18),
	(21, 'DO-WB 383', 'gelb', 3, 19),
	(22, 'DO-WB 384', 'gelb', 4, 20);
/*!40000 ALTER TABLE `dienstwagen` ENABLE KEYS */;

-- Dumping data for table versicherung.fahrzeug: ~25 rows (approximately)
/*!40000 ALTER TABLE `fahrzeug` DISABLE KEYS */;
INSERT INTO `fahrzeug` (`ID`, `Kennzeichen`, `Farbe`, `Fahrzeugtyp_ID`) VALUES
	(1, 'RE-LM 901', 'ocker', 5),
	(2, 'RE-LM 902', 'ocker', 5),
	(3, 'RE-LM 903', 'ocker', 5),
	(4, 'GE-AB 123', 'schwarz', 22),
	(5, 'RE-CD 456', 'ocker', 21),
	(6, 'HER-EF 789', 'gelb', 20),
	(7, 'BO-GH 102', 'rot', 19),
	(8, 'E-IJ 345', 'bordeaux', 18),
	(9, 'BO-KL 678', 'blau', 17),
	(10, 'RE-MN 901', 'elfenbein', 16),
	(11, 'RE-OP 234', 'ocker', 15),
	(12, 'RE-QR 567', 'gelb', 14),
	(13, 'RE-ST 890', 'rot', 13),
	(14, 'RE-UV 135', 'bordeaux', 12),
	(15, 'RE-WX 791', 'ocker', 11),
	(16, 'RE-YZ 369', 'rot', 10),
	(17, 'GE-AC 246', 'elfenbein', 9),
	(18, 'GE-EG 892', 'blau', 8),
	(19, 'OB-FH 470', 'elfenbein', 7),
	(20, 'BOT-KI 357', 'rot', 6),
	(21, 'BOR-NO 234', 'gelb', 4),
	(22, 'BOR-PQ 567', 'elfenbein', 3),
	(23, 'BOR-RS 890', 'gelb', 2),
	(24, 'K-XR 147', NULL, 6),
	(25, 'HH-MM 783', 'schwarz', 7);
/*!40000 ALTER TABLE `fahrzeug` ENABLE KEYS */;

-- Dumping data for table versicherung.fahrzeughersteller: ~11 rows (approximately)
/*!40000 ALTER TABLE `fahrzeughersteller` DISABLE KEYS */;
INSERT INTO `fahrzeughersteller` (`ID`, `Name`, `Land`) VALUES
	(1, 'Volkswagen', 'Deutschland'),
	(2, 'Opel', 'Deutschland'),
	(3, 'Ford', 'Deutschland'),
	(4, 'BMW', 'Deutschland'),
	(5, 'Audi', 'Deutschland'),
	(6, 'Mercedes-Benz', 'Deutschland'),
	(7, 'Sachsenring', 'Deutschland'),
	(8, 'Saab', 'Schweden'),
	(9, 'Volvo', NULL),
	(10, 'Renault', 'Frankreich'),
	(11, 'Seat', NULL);
/*!40000 ALTER TABLE `fahrzeughersteller` ENABLE KEYS */;

-- Dumping data for table versicherung.fahrzeugtyp: ~24 rows (approximately)
/*!40000 ALTER TABLE `fahrzeugtyp` DISABLE KEYS */;
INSERT INTO `fahrzeugtyp` (`ID`, `Bezeichnung`, `Hersteller_ID`) VALUES
	(1, 'Polo', 1),
	(2, 'Golf', 1),
	(3, 'Passat', 1),
	(4, 'Kadett', 2),
	(5, 'Corsa', 2),
	(6, 'Focus', 3),
	(7, 'Trabant', 7),
	(8, 'Fiesta', 3),
	(9, '325', 4),
	(10, '525', 4),
	(11, 'Z3', 4),
	(12, 'A3', 5),
	(13, 'A4', 5),
	(14, 'A160', 6),
	(15, 'W204 (C-Klasse)', 6),
	(16, 'W211 (E-Klasse)', 6),
	(17, 'Saab 9-3', 8),
	(18, 'S40', 9),
	(19, 'C30', 9),
	(20, 'Clio', 10),
	(21, 'ZOE', 10),
	(22, 'Twingo', 10),
	(23, 'Ibiza', 11),
	(24, 'Leon', 11);
/*!40000 ALTER TABLE `fahrzeugtyp` ENABLE KEYS */;

-- Dumping data for table versicherung.mitarbeiter: ~30 rows (approximately)
/*!40000 ALTER TABLE `mitarbeiter` DISABLE KEYS */;
INSERT INTO `mitarbeiter` (`ID`, `Personalnummer`, `Name`, `Vorname`, `Geburtsdatum`, `Telefon`, `Mobil`, `E-Mail`, `Raum`, `Ist_Leiter`, `Abteilung_ID`) VALUES
	(1, '10101', 'Müller alert(1)', 'Kurt', '1977-01-05', '0231/5554987', '011000111111', 'kurt.mueller@unserefirma.de', '112', 'J', 1),
	(2, '10002', 'Schneider', 'Daniela', '1980-02-16', '0231/5554988', NULL, 'daniela.schneider@unserefirma.de', '113', 'N', 1),
	(3, '20001', 'Meyer', 'Walter', '1963-07-02', '0231/5553967', '', 'walter.meyer@unserefirma.de', '212', 'J', 2),
	(4, '20002', 'Schmitz', 'Michael', '1959-08-25', '0231/5556187', NULL, 'michael.schmitz@unserefirma.de', '212', 'N', 2),
	(5, '30001', 'Wagner', 'Gaby', '1970-01-18', '0231/5554787', '', 'gaby.wagner@unserefirma.de', '312', 'J', 3),
	(6, '30002', 'Feyerabend', 'Werner', '1982-04-01', '0231/5554997', NULL, 'werner.feyerabend@unserefirma.de', '316', 'N', 3),
	(7, '40001', 'Langmann', 'Matthias', '1976-03-28', '0231/5551927', '', 'matthias.langmann@unserefirma.de', '412', 'J', 4),
	(8, '40002', 'Peters', 'Michael', '1973-11-15', '0231/5554237', NULL, 'michael.peters@unserefirma.de', '412', 'N', 4),
	(9, '50001', 'Pohl', 'Helmut', '1980-10-27', '0201/4014186', '(0171) 4123456', 'helmut.pohl@unserefirma.de', '152', 'J', 5),
	(10, '50002', 'Braun', 'Christian', '1966-09-05', '0201/4014726', '(0170) 8351647', 'christian.braun@unserefirma.de', '153', 'N', 5),
	(11, '50003', 'Polovic', 'Frantisek', '1961-11-26', '0201/4014727', '(0161) 5124793', 'frantisek.polovic@unserefirma.de', '154', 'N', 5),
	(12, '50004', 'Kalman', 'Aydin', '1976-12-17', '0201/4014728', '(0161) 4486319', 'aydin.kalman@unserefirma.de', '155', 'N', 5),
	(13, '60001', 'Aagenau', 'Karolin', '1950-01-02', '0234/66006001', '', 'Karolin.Aagenau@unserefirma.de', '48', 'J', 6),
	(14, '60002', 'Pinkart', 'Petra', '1953-03-04', '0234/66006002', NULL, 'Petra.Pinkart@unserefirma.de', '43', 'N', 6),
	(15, '70001', 'Olschewski', 'Pjotr', '1956-05-06', '0234/66007001', '', 'Pjotr.Olschewski@unserefirma.de', '28', 'J', 7),
	(16, '70002', 'Nordmann', 'Jörg', '1959-07-08', '0234/66007002', NULL, 'Joerg.Nordmann@unserefirma.de', '27', 'N', 7),
	(17, '80001', 'Schindler', 'Christina', '1962-09-10', '0201/4012151', '(0173) 7513901', 'Christina.Schindler@unserefirma.de', '101', 'J', 8),
	(18, '80002', 'Aliman', 'Zafer', '1965-11-12', '0201/4012161', '(0171) 9416755', 'Zafer.Aliman@unserefirma.de', '102', 'N', 8),
	(19, '80003', 'Langer', 'Norbert', '1968-01-13', '0201/4012171', '(0162) 1357902', 'Norbert.Langer@unserefirma.de', '103', 'N', 8),
	(20, '80004', 'Kolic', 'Ivana', '1971-02-14', '0201/4012181', '(0172) 4680135', 'Ivana.Kolic@unserefirma.de', '104', 'N', 8),
	(21, '90001', 'Janssen', 'Bernhard', '1974-03-15', '0201/4013111', '', 'Bernhard.Janssen@unserefirma.de', '201', 'J', 9),
	(22, '90002', 'Hinkel', 'Martina', '1977-04-16', '0201/4013110', NULL, 'Martina.Hinkel@unserefirma.de', '203', 'N', 9),
	(23, '100001', 'Grosser', 'Horst', '1980-05-17', '0201/4013344', '', 'Horst.Grosser@unserefirma.de', '271', 'J', 10),
	(24, '100002', 'Friedrichsen', 'Angelina', '1983-06-20', '0201/4013345', NULL, 'Angelina.Friedrichsen@unserefirma.de', '273', 'N', 10),
	(25, '110001', 'Eggert', 'Louis', '1986-07-23', '02323/381456', '', 'Louis.Eggert@unserefirma.de', '14', 'J', 11),
	(26, '110002', 'Deiters', 'Gisela', '1989-08-26', '02323/381457', NULL, 'Gisela.Deiters@unserefirma.de', '18', 'N', 11),
	(27, '120001', 'Carlsen', 'Zacharias', '1965-09-29', '0234/66012001', '', 'Zacharias.Carlsen@unserefirma.de', '61', 'J', 12),
	(28, '120002', 'Baber', 'Yvonne', '1957-10-02', '0234/66012002', NULL, 'Yvonne.Baber@unserefirma.de', '62', 'N', 12);
/*!40000 ALTER TABLE `mitarbeiter` ENABLE KEYS */;

-- Dumping data for table versicherung.rezension: ~10 rows (approximately)
/*!40000 ALTER TABLE `rezension` DISABLE KEYS */;
INSERT INTO `rezension` (`id`, `name`, `kommentar`, `webseite`, `email`, `status`) VALUES
	(1, 'zreg', 'fdsf', '', 'fds@dfasfdwe.gr', 1),
	(2, 'jhh', 'fjdiso kugdfkl aop', '', 'hghh@fdsf.de', 1),
	(3, 'ich teste', 'ich stehe hier nur zum Test', '', 'test@test.com', 0),
	(4, 'Jannik Bordel', 'test?', 'oiut', 'rayztye@gmail.com', 0),
	(5, 'Ich bin ein Kunde', 'Und ich habe keine Ahnung was ich als Kommentar sc', 'Eine Webseite besitze ich auch', 'ichhabe@eine.mail', 0),
	(6, 'ja, hier steht was', 'Ein echt cooler Kommentar. Der ist so cool, dass m', '', 'ichhabe@eine.mail', 0),
	(7, 'ja, hier steht was', 'Ein echt cooler Kommentar. Der ist so cool, dass m', '', 'ichhabe@eine.mail', 0),
	(8, 'ja, hier steht was', 'Ein echt cooler Kommentar. Der ist so cool, dass m', '', 'ichhabe@eine.mail', 0),
	(9, 'ja, hier steht was', 'Ein echt cooler Kommentar. Der ist so cool, dass m', '', 'ichhabe@eine.mail', 0),
	(10, 'ja, hier steht was', 'Ein echt cooler Kommentar. Der ist so cool, dass m', '', 'ichhabe@eine.mail', 0),
	(11, 'ich ', 'ich es kann', 'weil', 'teste@diese.programm', 0),
	(12, 'ich ', 'ich es kann', 'weil', 'teste@diese.programm', 1);
/*!40000 ALTER TABLE `rezension` ENABLE KEYS */;

-- Dumping data for table versicherung.schadensfall: ~8 rows (approximately)
/*!40000 ALTER TABLE `schadensfall` DISABLE KEYS */;
INSERT INTO `schadensfall` (`ID`, `Datum`, `Ort`, `Beschreibung`, `Schadenshoehe`, `Verletzte`, `Mitarbeiter_ID`) VALUES
	(1, '2007-02-03', 'Recklinghausen, Bergknappenstr. 144', 'Gartenzaun gestreift', 1234.50, 'N', 14),
	(2, '2007-07-11', 'Haltern, Hauptstr. 46', 'beim Ausparken hat BO-GH 102 die Vorfahrt von RE-CD 456 missachtet', 2066.00, 'N', 15),
	(3, '2007-12-19', 'Marl, Rathausstr./Halterner Allee', 'beim Abbiegen nach links hat ein fremder Wagen die Vorfahrt missachtet', 3715.60, 'J', 14),
	(4, '2008-05-27', 'Recklinghausen, Südgrabenstr. 23', 'Fremdes parkendes Auto gestreift', 1438.75, 'N', 16),
	(5, '2008-10-05', 'Dorsten, Oberhausener Str. 18', 'beim Ausparken hat ein fremder Wagen die Vorfahrt missachtet', 1983.00, 'N', 14),
	(6, '2009-03-13', 'Marl, Rathausstr./Halterner Allee', 'beim Abbiegen nach links hat ein fremder Wagen die Vorfahrt missachtet', 4092.15, 'J', 15),
	(7, '2009-08-21', 'Recklinghausen, Bergknappenstr. 144', 'Laternenpfahl umgefahren', 865.00, 'N', 14),
	(8, '2009-08-01', 'L318 Hamm-Flaesheim', 'Wildunfall mit Reh; 10% Wertverlust', 2471.50, 'N', 16);
/*!40000 ALTER TABLE `schadensfall` ENABLE KEYS */;

-- Dumping data for table versicherung.versicherungsgesellschaft: ~5 rows (approximately)
/*!40000 ALTER TABLE `versicherungsgesellschaft` DISABLE KEYS */;
INSERT INTO `versicherungsgesellschaft` (`ID`, `Bezeichnung`, `Ort`) VALUES
	(1, 'Deutsches Kontor', 'Frankfurt a.M.'),
	(2, 'Rheinischer Vers.-Verein', 'Oberhausen'),
	(3, 'Knappschaftshilfe', 'Essen'),
	(4, 'Hannoversche Gesellschaft', 'Lehrte'),
	(5, 'Westfalen-Bruderhilfe', 'Recklinghausen');
/*!40000 ALTER TABLE `versicherungsgesellschaft` ENABLE KEYS */;

-- Dumping data for table versicherung.versicherungsnehmer: ~24 rows (approximately)
/*!40000 ALTER TABLE `versicherungsnehmer` DISABLE KEYS */;
INSERT INTO `versicherungsnehmer` (`ID`, `Name`, `Vorname`, `Geburtsdatum`, `Fuehrerschein`, `Ort`, `PLZ`, `Strasse`, `Hausnummer`, `Eigener_Kunde`, `Versicherungsgesellschaft_ID`) VALUES
	(1, 'Heckel Obsthandel GmbH', '', NULL, NULL, 'Dorsten', '46282', 'Gahlener Str.', '40', 'J', NULL),
	(2, 'Antonius', 'Bernhard', '1950-02-01', '1972-04-03', 'Gelsenkirchen', '45892', 'Coesfelder Str.', '23', 'J', NULL),
	(3, 'Cornelsen', 'Dorothea', '1951-06-05', '1974-08-07', 'Castrop-Rauxel', '44577', 'Kiefernweg', '9', 'J', NULL),
	(4, 'Elberfeld', 'Fritz', '1952-10-09', '1976-12-11', 'Herne', '44625', 'Haberstr.', '13', 'J', NULL),
	(5, 'Geissler', 'Helga', '1953-01-13', '1978-02-14', 'Bochum', '44809', 'Steinbankstr.', '15', 'J', NULL),
	(6, 'Westermann', 'Yvonne', '1961-08-07', '1994-10-09', 'Oer-Erkenschwick', '45739', 'Ackerstr.', '34', 'J', NULL),
	(7, 'Karlovich', 'Liane', '1955-05-19', '1982-06-20', 'Hattingen', '45525', 'Raabestr.', '21', 'J', NULL),
	(8, 'Meier', 'Norbert', '1956-07-22', '1984-08-23', 'Recklinghausen', '45665', 'Idastr.', '24', 'J', NULL),
	(9, 'Ottensen', 'Petra', '1957-09-25', '1986-10-26', 'Herten', '45699', 'Gablonzer Weg', '27', 'J', NULL),
	(10, 'Quantz', 'Reinhard', '1958-11-28', '1988-01-29', 'Datteln', '45711', 'Halterner Allee', '30', 'J', NULL),
	(11, 'Schiller', 'Theresia', '1959-03-31', '1990-02-01', 'Haltern', '45721', 'Am Freibad', '32', 'J', NULL),
	(12, 'Untermann', 'Volker', '1960-04-02', '1992-06-05', 'Waltrop', '45731', 'Goethestr.', '33', 'J', NULL),
	(13, 'Westermann', 'Yvonne', '1961-08-07', '1994-10-09', 'Oer-Erkenschwick', '45739', 'Ackerstr.', '34', 'J', NULL),
	(14, 'Xanh', 'Wu Dao', '1962-12-11', '1996-01-13', 'Marl', '45772', 'Bachackerweg', '35', 'J', NULL),
	(15, 'Zenep', 'Altun', '1963-02-14', '1998-03-15', 'Gelsenkirchen', '45888', 'Cheruskerstr.', '36', 'J', NULL),
	(16, 'Bronkovic', 'Cecilia', '1964-04-16', '2000-05-17', 'Gladbeck', '45966', 'Dechenstr.', '37', 'J', NULL),
	(17, 'Deutschmann', 'Evelyn', '1965-06-18', '2002-07-19', 'Oberhausen', '46147', 'Ebereschenweg', '38', 'J', NULL),
	(18, 'Friedrichsen', 'Gustav', '1966-08-20', '2004-09-21', 'Bottrop', '46244', 'Falkenweg', '39', 'J', NULL),
	(19, 'Jaspers', 'Karol', '1968-12-24', '2008-01-25', 'Borken', '46325', 'Heimser Weg', '1', 'J', NULL),
	(20, 'Liebermann', 'Maria', '1970-02-26', '1988-03-27', 'Velen', '46342', 'Inselstr.', '4', 'J', NULL),
	(21, 'Grube', 'Claire', '1977-07-05', '1990-04-27', 'Velen', '46342', 'Inselstr.', '4', 'J', NULL),
	(22, 'Netep', 'Osman', '1971-05-28', '1990-06-29', 'Raesfeld', '46348', 'Juister Str.', '7', 'J', NULL),
	(23, 'Chwielorz', 'Kathrin', '1981-08-18', '2002-12-15', 'Köln', '50173', 'Gartenfelder Str.', '23', 'N', 3),
	(24, 'Schwichting', 'Eberhard', '1985-06-27', '2003-08-08', 'Hamburg', '20444', 'Harvestehuder Weg', '23 a', 'N', 2);
/*!40000 ALTER TABLE `versicherungsnehmer` ENABLE KEYS */;

-- Dumping data for table versicherung.versicherungsvertrag: ~25 rows (approximately)
/*!40000 ALTER TABLE `versicherungsvertrag` DISABLE KEYS */;
INSERT INTO `versicherungsvertrag` (`ID`, `Vertragsnummer`, `Abschlussdatum`, `Art`, `Mitarbeiter_ID`, `Fahrzeug_ID`, `Versicherungsnehmer_ID`) VALUES
	(1, 'DG-01', '1974-05-03', 'TK', 9, 1, 1),
	(2, 'DG-01', '1974-05-03', 'TK', 9, 2, 1),
	(3, 'DG-01', '1974-05-03', 'TK', 9, 3, 1),
	(4, 'DH-02', '1990-02-01', 'HP', 10, 12, 10),
	(5, 'DO-03', '1994-10-09', 'HP', 9, 14, 12),
	(6, 'DB-04', '2008-01-25', 'HP', 9, 21, 19),
	(7, 'RH-01', '1976-12-11', 'VK', 10, 5, 3),
	(8, 'RD-02', '1988-01-29', 'HP', 9, 11, 9),
	(9, 'RM-03', '1996-01-13', 'HP', 9, 15, 13),
	(10, 'RD-04', '2006-11-23', 'HP', 9, 20, 18),
	(11, 'RR-05', '1990-06-29', 'TK', 9, 23, 21),
	(12, 'KH-02', '1986-10-26', 'HP', 9, 10, 8),
	(13, 'KG-03', '1998-03-15', 'HP', 9, 16, 14),
	(14, 'KV-04', '1988-03-27', 'HP', 10, 22, 20),
	(15, 'HE-01', '1980-04-17', 'HP', 10, 7, 5),
	(16, 'HR-02', '1984-08-23', 'HP', 9, 9, 7),
	(17, 'HG-03', '2000-05-17', 'HP', 9, 17, 15),
	(18, 'HB-04', '2004-09-21', 'HP', 9, 19, 17),
	(19, 'XC-01', '1974-08-07', 'HP', 10, 4, 2),
	(20, 'XH-02', '1982-06-20', 'VK', 9, 8, 6),
	(21, 'XW-03', '1992-06-05', 'VK', 10, 13, 11),
	(22, 'XO-04', '2002-07-19', 'VK', 9, 18, 16),
	(23, 'KNH-234', '2007-03-16', 'TK', 9, 24, 22),
	(24, 'RVV-845', '2003-08-08', 'HP', 10, 25, 23),
	(25, 'KB-01', '1978-02-14', 'TK', 10, 6, 4);
/*!40000 ALTER TABLE `versicherungsvertrag` ENABLE KEYS */;

-- Dumping data for table versicherung.zuordnung_sf_fz: ~13 rows (approximately)
/*!40000 ALTER TABLE `zuordnung_sf_fz` DISABLE KEYS */;
INSERT INTO `zuordnung_sf_fz` (`ID`, `Schadensfall_ID`, `Fahrzeug_ID`, `Schadenshoehe`) VALUES
	(1, 1, 2, 1234.50),
	(2, 2, 7, 852.00),
	(3, 2, 5, 1214.00),
	(4, 3, 4, 1438.75),
	(5, 3, 24, 2276.85),
	(6, 4, 1, 1234.50),
	(7, 4, 5, 1983.00),
	(8, 5, 2, 1251.50),
	(9, 5, 25, 731.50),
	(10, 6, 3, 2653.40),
	(11, 6, 7, 1438.75),
	(12, 7, 6, 865.00),
	(13, 8, 7, NULL);
/*!40000 ALTER TABLE `zuordnung_sf_fz` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
