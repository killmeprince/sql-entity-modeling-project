CREATE TABLE transport.Vehicle (
	maker VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	type VARCHAR(20) NOT NULL CHECK (type IN ('Car', 'Motorcycle', 'Bicycle')),
	PRIMARY KEY (model)
);

CREATE TABLE transport.Car (
	vin VARCHAR(17) NOT NULL,
	model VARCHAR(100) NOT NULL,
	engine_capacity DECIMAL(4, 2) NOT NULL, -- объем двигателя в литрах
	horsepower INT NOT NULL,             	-- мощность в лошадиных силах
	price DECIMAL(10, 2) NOT NULL,       	-- цена в долларах
	transmission VARCHAR(20) NOT NULL CHECK (transmission IN ('Automatic', 'Manual')), -- тип трансмиссии
	PRIMARY KEY (vin),
	FOREIGN KEY (model) REFERENCES Vehicle(model)
);

CREATE TABLE transport.Motorcycle (
	vin VARCHAR(17) NOT NULL,
	model VARCHAR(100) NOT NULL,
	engine_capacity DECIMAL(4, 2) NOT NULL, -- объем двигателя в литрах
	horsepower INT NOT NULL,             	-- мощность в лошадиных силах
	price DECIMAL(10, 2) NOT NULL,       	-- цена в долларах
	type VARCHAR(20) NOT NULL CHECK (type IN ('Sport', 'Cruiser', 'Touring')), -- тип мотоцикла
	PRIMARY KEY (vin),
	FOREIGN KEY (model) REFERENCES Vehicle(model)
);

CREATE TABLE transport.Bicycle (
	serial_number VARCHAR(20) NOT NULL,
	model VARCHAR(100) NOT NULL,
	gear_count INT NOT NULL,             	-- количество передач
	price DECIMAL(10, 2) NOT NULL,       	-- цена в долларах
	type VARCHAR(20) NOT NULL CHECK (type IN ('Mountain', 'Road', 'Hybrid')), -- тип велосипеда
	PRIMARY KEY (serial_number),
	FOREIGN KEY (model) REFERENCES Vehicle(model)
);