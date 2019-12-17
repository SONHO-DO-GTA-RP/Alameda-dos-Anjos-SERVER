USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_cardealer','Concessionnaire',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_cardealer','Concesionnaire',1)
;

INSERT INTO `jobs` (name, label) VALUES
	('cardealer','Concessionnaire')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('cardealer',0,'recruit','Recrue',10,'{}','{}'),
	('cardealer',1,'novice','Novice',25,'{}','{}'),
	('cardealer',2,'experienced','Experimente',40,'{}','{}'),
	('cardealer',3,'boss','Patron',0,'{}','{}')
;

CREATE TABLE `cardealer_vehicles` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `vehicle_sold` (
	`client` VARCHAR(50) NOT NULL,
	`model` VARCHAR(50) NOT NULL,
	`plate` VARCHAR(50) NOT NULL,
	`soldby` VARCHAR(50) NOT NULL,
	`date` VARCHAR(50) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `owned_vehicles` (
	`owner` varchar(22) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,
	`type` VARCHAR(20) NOT NULL DEFAULT 'car',
	`job` VARCHAR(20) NULL DEFAULT NULL,
	`stored` TINYINT(1) NOT NULL DEFAULT '0',

	PRIMARY KEY (`plate`)
);

CREATE TABLE `rented_vehicles` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int(11) NOT NULL,
	`rent_price` int(11) NOT NULL,
	`owner` varchar(22) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `vehicle_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `vehicle_categories` (name, label) VALUES
	('Popular','Popular'),
	('Esportivo','Esportivo'),
	('Muscle','Muscle'),
	('Luxo','Luxo'),
	('Pickups','Pickups'),
	('Motos','Motos'),
	--('muscle','Muscle'),
	--('offroad','Off Road'),
	--('suvs','SUVs'),
	--('vans','Vans'),
	--('motorcycles','Motos')
;

CREATE TABLE `vehicles` 
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,

	PRIMARY KEY (`model`)
);

INSERT INTO `vehicles` (name, model, price, category) VALUES
	('BMW I8','i8',2200000,'Luxo'),
	('Ford Mustang 2020','mgt',280000,'Muscle'),
	('Aston Martin','vantage',450000,'Esportivo'),
	('Chevrolet Astra J','astraj',18000,'Popular'),
	('Volkswagen Jetta','jetta',25000,'Popular'),
	('Mini Cooper','cooperworks',15000,'Popular'),
	('Chevrolet Volt','volt2',22000,'Popular'),
	('Honda Accord','cu2',23000,'Popular'),
	('Honda Civic 99','civic',19000,'Popular'),
	('Honda CRV','crv',35000,'Popular'),
	('Honda S2000','s2k',21000,'Popular'),
	('Lexus GSF','gsf',38000,'Popular'),
	('Mercedes Benz C32 AMG 2004','benzc32',70000,'Popular'),
	('Nissan Altima','nisaltima',33000,'Popular'),
	('Toyota Camry','camv50',40000,'Popular'),
	('Toyota Prius','prius',20000,'Popular'),
	('Volkswagen Golf GTI','mk7',30000,'Popular'),
	('Audi RS7','rs7',390000,'Esportivo'),
	('Audi S5','s5',180000,'Esportivo'),
	('Audi R8','r8ppi',750000,'Esportivo'),
	('Bentley Continental','bcgt',330000,'Esportivo'),
	('BMW M5 E60','m5e60',520000,'Esportivo'),
	('BMW M6 F13','m6f13',670000,'Esportivo'),
	('BMW Z4 Alchemist','z4alchemist',790000,'Esportivo'),
	('Corvete C7','c7',420000,'Esportivo'),
	('GMC Yukon','gmcyd',370000,'Esportivo'),
	('JEEP Grand Cherokee SRT8','srt6',510000,'Esportivo'),
	('Lamborghini Urus','urus',790000,'Esportivo'),
	('Lancer Evolution IX','evo9',210000,'Esportivo'),
	('Lancer Evolution X','ev10',340000,'Esportivo'),
	('Mazda RX7 Drift KING Edition','rx7veilside',300000,'Esportivo'),
	('Mercedes Benz A45 AMG','a45amg',450000,'Esportivo'),
	('Mercedes Benz GL63 AMG','gl63',580000,'Esportivo'),
	('Mercedes Benz CLS63 AMG','cls2015',720000,'Esportivo'),
	('Nissan 370z','370z',370000,'Esportivo'),
	('Nissan GTR','gtr',720000,'Esportivo'),
	('Nissan SkylineGTR','skyline',610000,'Esportivo'),
	('Porsche Cayenne','pcs18',800000,'Esportivo'),
	('Spyker C8 Spyder','spyker',240000,'Esportivo'),
	('Aston Martin DBS','dbs',410000,'Esportivo'),
	('Bugatti Divo','bdivo',6800000,'Luxo'),
	('Ferarri 488 GTB','488',3900000,'Luxo'),
	('Ferrari 812 SuperFast','f812',4300000,'Luxo'),
	('Ferrari LaFerrari Aperta','aperta',5500000,'Luxo'),
	('Ferrari Enzo','mig',5900000,'Luxo'),
	('Ford GT','gt17',5500000,'Luxo'),
	('Jaguar C-X75','cx75',4200000,'Luxo'),
	('Lamborghini Centenario','lp770',5700000,'Luxo'),
	('Lamborghini Tierzo','lamtmc',6200000,'Luxo'),
	('McLaren 720s','720s',5300000,'Luxo'),
	('McLaren P1','p1',6100000,'Luxo'),
	('Mercedes Benz AMG GT','mvisiongt',7200000,'Luxo'),
	('Porsche Cayman','c981',3500000,'Luxo'),
	('Mercedes SLR McLaren STIRLING MOSS','moss',8000000,'Luxo'),
	('Aston Martin Vulcan','vulcan',3800000,'Luxo'),
	('Chevrolet Chevelle SS 1970','chevelle1970',150000,'Muscle'),
	('Dodge Charger 69','69charger',180000,'Muscle'),
	('Dodge Charger 70','charger',200000,'Muscle'),
	('Pontiac Firebird 70','firebird',170000,'Muscle'),
	('Dodge RAM 2500','ram2500',150000,'Pickups'),
	('Ford F250','20f250',200000,'Pickups'),
	('Ford F350','18f350',220000,'Pickups'),
	('Mercedes Benz X-Class','mercxclass',370000,'Pickups'),
	('Nissan TITAN WARRIOR','titan17',410000,'Pickups'),
	('Toyota Hilux','vigo',280000,'Pickups'),
	('Volkswagen AMAROK','amarok',250000,'Pickups'),
	('BMWS1000RR','bs17',140000,'Motos'),
	('Honda CBR1000','hcbr17',220000,'Motos'),
	('Kawasaki Ninja H2R','h2carb',260000,'Motos'),
	('Yamaha YZF-R1','r1',170000,'Motos'),
	('Yamaha YZF-R6','r6',19000,'Motos'),
	('Yamaha T-Max530','tmax',10000,'Motos'),
;
