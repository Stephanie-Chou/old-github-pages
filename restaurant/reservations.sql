



-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'parties'
-- 
-- ---

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS `parties`;

CREATE TABLE `parties` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `first_name` CHAR NULL DEFAULT NULL,
  `last_name` CHAR NULL DEFAULT NULL,
  `size` INTEGER NULL DEFAULT NULL,
  `special_occasion` CHAR NULL DEFAULT NULL,
  `phone` INTEGER NULL DEFAULT NULL
  -- PRIMARY KEY (`id`)
);

-- ---
-- Table 'tables'
-- 
-- ---

DROP TABLE IF EXISTS `tables`;

CREATE TABLE `tables` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `capacity` INTEGER NULL DEFAULT NULL
  -- PRIMARY KEY (`id`)
);

-- ---
-- Table 'parties_tables'
-- 
-- ---

DROP TABLE IF EXISTS `parties_tables`;

CREATE TABLE `parties_tables` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `party_id` INTEGER NULL DEFAULT NULL,
  `table_id` INTEGER NULL DEFAULT NULL,
  `time` DATETIME NULL DEFAULT NULL,
  FOREIGN KEY (party_id) REFERENCES `parties` (`id`),
  FOREIGN KEY (table_id) REFERENCES `tables` (`id`)
  -- PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

-- ALTER TABLE `parties_tables` ADD FOREIGN KEY (party_id) REFERENCES `parties` (`id`);
-- ALTER TABLE `parties_tables` ADD FOREIGN KEY (table_id) REFERENCES `tables` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `parties` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tables` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `parties_tables` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---
INSERT INTO `parties` (`first_name`,`last_name`,`size`,`special_occasion`,`phone`) VALUES
('stephanie', 'chou', 5, 'none', '8479999999');

INSERT INTO `parties` (`first_name`,`last_name`,`size`,`special_occasion`,`phone`) VALUES
('muffin', 'man', 2, 'none', '8479998888');


INSERT INTO `parties` (`first_name`,`last_name`,`size`,`special_occasion`,`phone`) VALUES
('snow', 'white', 8, 'apples', '8479999900');
-- INSERT INTO `parties` (`id`,`first_name`,`last_name`,`size`,`special_occasion`,`phone`) VALUES
-- ('','','','','','');
-- INSERT INTO `tables` (`id`,`capacity`) VALUES
-- ('','');
-- INSERT INTO `parties_tables` (`id`,`party_id`,`table_id`,`time`) VALUES
-- ('','','','');

