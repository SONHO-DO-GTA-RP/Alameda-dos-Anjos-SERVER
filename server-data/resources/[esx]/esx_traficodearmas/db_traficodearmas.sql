USE `essentialmode`;

CREATE TABLE `weadealer` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`zone` varchar(255) NOT NULL,
	`item` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `weadealer` (`zone`, `item`, `price`) VALUES
	('Fabricante_de_Canos', 'pistolbarrel', 5000),
	('Fabricante_de_Canos', 'smgbarrel', 15000),
	('Fabricante_de_Canos', 'akbarrel', 30000),
	('Fabricante_de_Canos', 'shotgunbarrel', 15000),
	('Fabricante_de_Armas', 'pistolbody', 5000),
	('Fabricante_de_Armas', 'akbody', 40000),
	('Fabricante_de_Armas', 'smgbody', 15000),
	('Fabricante_de_Armas', 'shotgunbody', 15000),
	('Fabricante_de_Carregadores', 'pistolclip', 5000),
	('Fabricante_de_Carregadores', 'smgclip', 15000),
	('Fabricante_de_Carregadores', 'akclip', 30000),
	('Fabricante_de_Carregadores', 'shotgunclip', 15000)
;

INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_mafia','Mafia Italiana', 1),
	('society_yakuza', 'Yakuza', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_mafia','Mafia Italiana', 1),
	('society_yakuza','Yakuza', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_mafia', 'Mafia Italiana', 1),
	('society_yakuza', 'Yakuza', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('mafia', 'Mafia Italiana', 1),
('yakuza', 'Yakuza', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('mafia', 0, 'recruit', 'Recruta', 1500, '{}', '{}'),
('mafia', 1, 'officer', 'Sócio', 2000, '{}', '{}'),
('mafia', 2, 'sergeant', 'Família', 3000, '{}', '{}'),
('mafia', 3, 'boss', 'Chefe', 4500, '{}', '{}'),
('yakuza', 0, 'recruit', 'Recruta', 1500, '{}', '{}'),
('yakuza', 1, 'officer', 'Sócio', 2000, '{}', '{}'),
('yakuza', 2, 'sergeant', 'Família', 3000, '{}', '{}'),
('yakuza', 3, 'boss', 'Chefe', 4500, '{}', '{}');


INSERT INTO `items` (name, label) VALUES
('SMG','SMG na Caixa'),
('AK', 'Rifle na Caixa'),
('SHOTGUN', 'Escopeta na Caixa'),
('PISTOL', 'Pistola na Caixa')
;