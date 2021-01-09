SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE `pokemon` (
	`id` int NOT NULL UNIQUE,
	`name` varchar(31) NOT NULL UNIQUE,
	`description` varchar(255)
) ENGIne=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

ALTER TABLE `pokemon`
	ADD PRIMARY KEY `pokemon_pkey` (`id`);
	
ALTER TABLE `pokemon`
	MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
	
INSERT INTO `pokemon`(`id`, `name`, `description`) VALUES
(1, 'Wartortle', 'It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.'),
(2, 'Charizard', 'It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.');

CREATE USER 'admin'@'%' IDENTIFIED BY 'mysecretpassword';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION; 