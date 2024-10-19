SELECT marka, model, fiyat FROM otomobil_fiyatlari ORDER BY fiyat DESC;
--What are the car brands, models, and prices in descending order of price?

SELECT o.marka, o.model, o.donanim, o.motor, o.vites, o.yakit, o.fiyat 
AS fiyat_tl, (o.fiyat * e.rate_to_try) AS fiyat_usd 
FROM otomobil_fiyatlari o JOIN exchange_rates e ON e.currency_code = 'USD';
--What are the car make, model, equipment, engine, transmission, fuel type, Turkish Lira price, and US Dollar price of all cars in the car price table, taking into account the exchange rate for USD?

SELECT * FROM otomobil_fiyatlari WHERE marka = 'Alfa Romeo';
--What are the prices of Alfa Romeo cars?

SELECT * FROM otomobil_fiyatlari WHERE fiyat < 500000;
--What are the prices of vehicles that are less than 500,000?
