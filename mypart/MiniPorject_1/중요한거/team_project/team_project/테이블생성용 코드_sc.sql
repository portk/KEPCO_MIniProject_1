CREATE TABLE power_data(
	num 	 	       INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	local_id 	       INT NOT NULL,
	`year` 	 	       TEXT NOT NULL,
	`month`  	       TEXT NOT NULL,
	home 	 	       INT NOT NULL,
	`change(home)`     DECIMAL(10,6) NOT NULL,
	office   	       INT NOT NULL,
	`change(office)`   DECIMAL(10,6) NOT NULL,
	industry 	   	   INT NOT NULL,
	`change(industry)` DECIMAL(10,6) NOT NULL,

	CONSTRAINT `FK_power_loc` FOREIGN KEY (`local_id`) REFERENCES `loc` (`local_id`)
);

CREATE TABLE infection_rate_data(
	local_id       INT NOT NULL,
	`year`         TEXT NOT NULL,
	`month` 	   TEXT NOT NULL,
	population     INT NOT NULL,
	confirmed_case INT NOT NULL,
	infection_rate DECIMAL(10,6) NOT NULL,
	
	CONSTRAINT `FK_infection_rate_loc` FOREIGN KEY (`local_id`) REFERENCES `loc` (`local_id`)
);

CREATE TABLE age_data(
	`year`	       TEXT NOT NULL,
	`month` 	   TEXT NOT NULL,
	`0~9(popul)`   INT NOT NULL,
	`0~9(conf)`    INT NOT NULL,
	`0~9(rate)`    DECIMAL(10,6) NOT NULL,
	`10~19(popul)` INT NOT NULL,
	`10~19(conf)`  INT NOT NULL,
	`10~19(rate)`  DECIMAL(10,6) NOT NULL,
	`20~29(popul)` INT NOT NULL,
	`20~29(conf)`  INT NOT NULL,
	`20~29(rate)`  DECIMAL(10,6) NOT NULL,
	`30~39(popul)` INT NOT NULL,
	`30~39(conf)`  INT NOT NULL,
	`30~39(rate)`  DECIMAL(10,6) NOT NULL,
	`40~49(popul)` INT NOT NULL,
	`40~49(conf)`  INT NOT NULL,
	`40~49(rate)`  DECIMAL(10,6) NOT NULL,
	`50~59(popul)` INT NOT NULL,
	`50~59(conf)`  INT NOT NULL,
	`50~59(rate)`  DECIMAL(10,6) NOT NULL,
	`60~69(popul)` INT NOT NULL,
	`60~69(conf)`  INT NOT NULL,
	`60~69(rate)`  DECIMAL(10,6) NOT NULL,
	`70~79(popul)` INT NOT NULL,
	`70~79(conf)`  INT NOT NULL,
	`70~79(rate)`  DECIMAL(10,6) NOT NULL,
	`80~(popul)`   INT NOT NULL,
	`80~(conf)`    INT NOT NULL,
	`80~(rate)`    DECIMAL(10,6) NOT NULL
);