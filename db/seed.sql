CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  email VARCHAR(100),
  password VARCHAR(200)
);

CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  category VARCHAR(100),
  name VARCHAR(100),
  price FLOAT,
  img TEXT,
  product_desc TEXT
);

CREATE TABLE history (
  history_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  product_id INT REFERENCES products(product_id)
);



INSERT INTO products
(
  category,
  name,
  price,
  img,
  product_desc
)
VALUES

--------------------------- ANTENNAS -------------------------------------------
-- (
-- 'Antennas',
-- 'Lumenier AXII 2 5.8GHz Antenna (RHCP) (2 Pcs)',
-- 39.99,
-- 'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/x/axii-2-rhcp-sma-pair.jpg',
-- 'The AXII 2 takes the best parts of the original AXII antenna and makes them even better. Improved range, bandwidth, and durability make the AXII 2 a true successor to the throne.'
-- ),

-- (
-- 'Antennas',
-- 'EMAX Nano 5.8Ghz SMA Antenna - RHCP',
-- 11.99,
-- 'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/p/h/photo-0378.jpg',
-- 'Engineered from the ground up for performance and size, the head of the Nano comes in at .85 grams of weight, resulting in the perfect antenna for small and lightweight builds!'
-- ),

-- (
-- 'Antennas',
-- 'Lumenier AXII 2 Diversity Antenna Bundle 5.8GHz (RHCP)',
-- 34.99,
-- 'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/o/u/output-onlinejpgtools.jpg',
-- 'Two of Lumenier''s most popular antennas can now be found sharing the same box! We figured we would save you a few clicks (and a few dollars) by making the perfect diversity combo. The renowned AXII 2 antenna gives clear and even signal in near perfect circularity, while the newly released AXII Patch Antenna will give you incredible range and penetration where it is pointed. A perfect upgrade for your goggles or ground station.'
-- ),

-- (
-- 'Antennas',
-- 'TrueRC Singularity 5.8 Stubby Antenna (RHCP)',
-- 19.99,
-- 'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/d/1/d15de887-0d5c-40f1-ab09-203a1e6e8000.jpg',
-- 'The Singularity antenna from TrueRC now comes in a ''stubby'' form factor. Smaller than ever while maintaining durability due to a thicker housing.'
-- ),

-- ----------------- BATTERIES & CHARGERS -----------------------------------------
-- (
-- 'Batteries & Chargers',
-- 'Lumenier N2O Extreme 1850mAh 4s 150c Lipo Battery',
-- 48.99,
-- 'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/8/1850-4s-main.jpg',
-- 'The Lumenier N2O Extreme 1850mAh 4s 150c Lipo Battery. The N2O series features Polycrystalline Super Nanotubes technology to bring you the highest performing batteries for your racing drones.'
-- ),

-- (
-- 'Batteries & Chargers',
-- 'Tattu R-Line Version 3.0 1300mAh 6s 120C Lipo Battery',
-- 36.99,
-- 'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/2/120c-1300-6s1p.jpg',
-- 'Tattu R-Line Version 3.0 1300mAh 22.2V 120C 6S1P LiPo battery pack is the updated version of R-Line series in 2019. With more punch, lower internal resistance and less weight, The R-Line V3 will dominate the race track.'
-- ),

-- (
-- 'Batteries & Chargers',
-- 'BETAFPV BT2.0 300mAh 1S 30C HV Battery (8pcs)',
-- 29.99,
-- 'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/e/z/ezgif-5-aebe858211d8.jpg',
-- 'BT2.0 Connector - the most significant revolution in 1S Tiny Whoop Drone.Since February 2019, we''ve got some feedback on Facebook about how eager they need the high quality of solid pins connector on 1S whoop drone. So we started our long-term investigation on the design of the solid pins and the stable manufacturing technique to meet pilots'' demand. Betafpv always keeps moving forward with a passion for breakthrough experiences.Now Betafpv exclusive designed BT2.0 connector 1S battery has finally come out, which has broken through the bottle-neck of PH2.0 crappy crimped pins. Meanwhile, we provide 200 sets of BT2.0 300mah 1S battery (2pcs) and a certain number of BT2.0 connectors as a free gift for everybody.'
-- ),

-- (
-- 'Batteries & Chargers',
-- 'NewBeeDrone Nitro Nectar 250mAh HV 1s 30c Lipo Battery',
-- 5.99,
-- 'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/i/nitro-nectar-hv.jpg',
-- 'The newest lipo battery we have to offer, the High Voltage 250 Nitro Nectar! These batteries add extra power to your setup and allow for even more powerful maneuvers and moves, and faster top speeds! These batteries use the new beefier JST-PH connector, and you will need a compatible power lead, such as our High Voltage JST Power Cable. These batteries can be charged to either standard voltage of 4.2v or high voltage of 4.35v. When charging them to 4.35V they come in at around 270 mAh! To charge this lipo to the maximum voltage, you will need a high voltage capable charger.'
-- );

-- (
--   '',
--   '',
--   ,
--   '',
--   ''
-- ),
