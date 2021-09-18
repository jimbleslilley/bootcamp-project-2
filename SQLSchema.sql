-- Create the Table
CREATE TABLE vacstocks (
	index INT PRIMARY KEY NOT NULL,
	date DATE,
	location TEXT,
	vaccine TEXT, 
	total_vaccinations TEXT,
	high DEC,
	low DEC,
	open DEC,
	close DEC,
	volume DEC,
	adjusted_close DEC
);

-- Query to check successful load
SELECT * FROM vacstocks;