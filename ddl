-- Table creation 
CREATE TABLE IF NOT EXISTS otomobil_fiyatlari ( 
id SERIAL PRIMARY KEY, -- Unique identifier (Primary Key), auto-incremented 
marka VARCHAR(50) NOT NULL, -- Car brand 
model VARCHAR(50) NOT NULL, -- Car model 
donanim VARCHAR(200) NOT NULL, -- Car equipment details 
motor VARCHAR(50) NOT NULL, -- Engine details 
yakit VARCHAR(50) NOT NULL, -- Fuel type (gasoline, diesel, electric) 
vites VARCHAR(50) NOT NULL, -- Transmission type (manual, automatic) 
fiyat INT NOT NULL, -- Price information 
websitesi VARCHAR(100), -- Website from which the information was sourced ); 

-- Adding a comment to the table 
COMMENT ON TABLE otomobil_fiyatlari IS 'Table storing car prices'; 

-- Adding comments to the columns 
COMMENT ON COLUMN otomobil_fiyatlari.id IS 'Unique identifier (Primary Key)'; 
COMMENT ON COLUMN otomobil_fiyatlari.marka IS 'Car brand'; 
COMMENT ON COLUMN otomobil_fiyatlari.model IS 'Car model'; 
COMMENT ON COLUMN otomobil_fiyatlari.donanim IS 'Car equipment details'; 
COMMENT ON COLUMN otomobil_fiyatlari.motor IS 'Engine details'; 
COMMENT ON COLUMN otomobil_fiyatlari.yakit IS 'Fuel type (gasoline, diesel, electric'; 
COMMENT ON COLUMN otomobil_fiyatlari.vites IS 'Transmission type (manual, automatic)'; 
COMMENT ON COLUMN otomobil_fiyatlari.fiyat IS 'Car price'; 
COMMENT ON COLUMN otomobil_fiyatlari.websitesi IS 'Website from which the information was sourced'; 

-- Table creation 
CREATE TABLE IF NOT EXISTS exchange_rates ( 
currency_code VARCHAR(10) PRIMARY KEY, -- Unique identifier for each currency (Primary Key) 
rate_to_try DECIMAL(20, 8) NOT NULL -- Exchange rate value to Turkish Lira (TRY) ); 

-- Adding a comment to the table 
COMMENT ON TABLE exchange_rates IS 'Table storing exchange rates of various currencies against Turkish Lira (TRY)'; 

-- Adding comments to the columns 
COMMENT ON COLUMN exchange_rates.currency_code IS 'Currency code (e.g., USD, EUR, BTC)'; 
COMMENT ON COLUMN exchange_rates.rate_to_try IS 'Exchange rate of the currency to Turkish Lira (TRY)';
