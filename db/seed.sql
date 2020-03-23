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


-- -- ----------------- CAMERAS ----------------------------------------------------
-- (
--   'Cameras',
--   'Foxeer Predator Micro 4 1000TVL 1.7mm FPV Camera (Full Case)',
--   36.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/imgpsh_mobile_save_3.jpg',
--   'Foxeer adds a new Predator camera to its resume! The Predator Micro 4 (Full Case) is a must-have camera in the racing game! It comes with an M8 1.7MM 8MP Lens that features HD footage, no red flare, and wider FOV. This camera supports OSD and menu remote control with Foxeer F405 AIO and F722 Dual FC. It comes with a Multi-Mode option (Day/Night/LED/B&amp;W), Super-WDR, better noise reduction, and remote control. Other features include&nbsp;switchable aspect ratio 4:3 / 16:9, switchable NTSC / PAL, image flip and 4ms low latency image.'
-- ),
-- (
--   'Cameras',
--   'Foxeer Razer Micro 1200TVL 1.8mm FPV Camera',
--   17.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/5/1570775687857405709.images.1000x1000_2.jpg',
--   'The Foxeer Razer Micro is a great camera for those seeking good performance in a low light environment. It features a 1200TVL definition with an advanced natural image. The wide voltage range of 4.5V ~ 25V, provides a wide range of compatibility with almost any pair of goggles!'
-- ),
-- (
--   'Cameras',
--   'RunCam Split 3 Nano Whoop FPV / HD Camera',
--   69.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/1/1125_zoom_1568878918.jpg',
--   'The RunCam Split 3 Nano Whoop gives you 1080p/60fps HD recording while also utilizing a sharp WDR FPV camera. The Split 3 Nano fits 14x14mm nano-sized camera mounts but comes with a 19x19 adapter. The Split 3 features new updates to the TV-OUT clarity, by reducing the amount of interference and ripple in the video feed. It also has a stronger flexible ribbon cable that aims to reduce the chance of being damaged. The modular camera system supports replacement lens that can be manually focused. The Split 3 Nano Whoop has a slightly different board than the Nano. The Nano whoop layout is made to fit on whoop-size frames.'
-- ),
-- (
--   'Cameras',
--   'Foxeer Predator Mini V4 1000TVL 1.8mm FPV Camera',
--   36.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/m/i/minv44.jpg',
--   'The 4th iteration of the popular Predator Mini FPV racing camera adds a host of new features to its résumé. The Predator Mini V4 comes with a new Multi-Mode option (Day/Night/LED/B&W), Super-WDR, better noise reduction, more natural image, and remote control. Other features include switchable aspect ratio 4:3 / 16:9, switchable NTSC / PAL, image flip, and low latency image. The included bracket allows the mini size camera fit into full-size mounts.'
-- ),
-- (
--   'Cameras',
--   'DJI Digital HD FPV Camera',
--   59.00,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/w/2w4a0041-1.jpg',
--   'A single-camera module, which has a quick-release design for convenient replacement. The FPV camera does not come with a back cover or coaxial cables installed.'
-- ),
-- -- ----------------- ESCS ------------------------------------------------------
-- (
--   'ESC''s',
--   'Lumenier Elite 60A 2-6S BLHeli_32 4-in-1 ESC',
--   69.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/l/u/lumenier_elite_60a_2-6s_blheli_32_4-in-1_esc1.jpg',
--   'Introducing the The Lumenier Elite 60A 2-6S BLHeli_32 4-in-1 ESC. A powerful ESC with the latest BLHeli_32 + telemetry and current sensor and capable of 60A current support on up to 6s! If you are looking for maximum power and performance for your quadcopter, this is the ESC for you.  The Lumenier Elite 60A 2-6S BLHeli_32 4-in-1 ESC is a 32bit ESC running the latest gen. BLHeli_32 firmware. The 32bit architecture enables the ESC to run at incredible speeds resulting in better performance, faster input signals and lower latency compared to older 8bit ESCs. This ESC also features a live telemetry connection for more advanced flight controllers, as well as a top of the line current sensor. One of the biggest features of this ESC is the heavy duty copper traces which can support extreme current. The ESC PCB is 2mm thick where most others are only 1.5mm. More copper along with the included aluminum heatsink allows you to push more power to your drone.'
-- ),
-- (
--   'ESC''s',
--   'HGLRC FD35A 4-in-1 BL32 3-6S 20x20 ESC',
--   41.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/e/z/ezgif-7-d2c0f681fdab.jpg',
--   'The HGLRC Forward 35A 4-in-1 ESC brings serious power to the 20x20 game. 3-6s capable and stackable with other mini FCs, like the HGLRC Forward F4 Mini FC. This ESC gives you great specs in a tiny package.'
-- ),
-- (
--   'ESC''s',
--   'iFlight SucceX X80A 32bit BLHeli 2-8S X-Class ESC',
--   39.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/u/succex-x80a-xclass-esc_0_-1000x1000.jpg',
--   'SucceX X80A 32bit BLHeli Dshot1200 Single ESC was designed to give your motors smooth power with great stability and durability. The 32bit 48mHz STM32F051K66 MCU and 11 pieces TDK MLCC total 240UF Low ESR capacitors bring faster-responding speed and smoother flying experience. The optional heatsink effectively pulls heat away from the MOSFET, protecting the critical parts of your ESC.40*17mm size, rational layout design with high extended solder pads ensured easy fixes or adjustments. The powerful performance brings you an enjoyable flying experience!'
-- ),
-- (
--   'ESC''s',
--   'T-Motor F35A 3-5S 32bit ESC',
--   17.50,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/f/3/f35a_3-5s_32bit-3_1_1.jpg',
--   'The T-Motor F35A 3-5S 32bit ESC is a new addition to the T-Motor ESC FPV series. This single ESC was designed for racing frames and features a narrow profile (11mm wide) to fit on racing frames with narrow arms. The ESC comes equipped with an aluminum heatsink to draw heat away from sensitive components and also shield from damage. Each ESC has an RGB LED able to be programmed to display various properties of your drone.'
-- ),
-- (
--   'ESC''s',
--   'Lumenier Razor F3 BLHeli_32 30A 2-6s ESC',
--   17.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/a/razor-f3-30a-1.jpg',
--   'The Lumenier Razor F3 BLHeli_32 30A 2-6s ESC is a 32bit ESC running the latest gen. BLHeli_32 firmware, and featuring a future proof powerful F3 processor. Now 4 of these ESCs combine to have more processing power than your whole flight controller! The 32bit architecture enables the ESC to run at incredible speeds resulting in better performance, faster input signals and lower latency compared to older 8bit ESCs. This ESC also features a live telemetry connection for more advanced flight controllers, as well as a high quality current sensor. In addition, the Lumenier Razor ESC has an onboard RGB LED that can be programmed to any color in BLHeli_32. One of the biggest features of the Lumenier Razor ESC is the incredibly tiny size for such a powerful ESC. Coming in at only 12mm wide and 30mm in length, it will work perfectly on skinny arms of modern day racing drones. It is also unbelievibly light at just 2.7g! Up to 30A of constant power in just a 3g package. If you are looking for an ESC that is built to be the best and have all the latest features of BLHeli_32, then the Lumenier Razor ESC is the perfect match for you.'
-- ),
-- -- ----------------- FLIGHT CONTROLLERS -----------------------------------------
-- (
--   'Flight Controllers',
--   'BETAFPV Toothpick F4 2-4S 20A AIO Brushless V3 Flight Controller (BLHeli_S)',
--   62.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/e/z/ezgif-6-06eb9ef13839.jpg',
--   'BETAFPV has updated their version of the 20A F4 AIO V2.0 Flight Controller to V3. This new FC has the same features as the older version, but two new key functions:
--   > 8M Flash chip for Betaflight Black Box.
--   > The pads could support DJI digital FPV unit and Caddx Vista digital FPV unit. If you want to use the full functionality of the digital VTX unit, please choose the V3 version board.
--   For a new generation of toothpick drone, the AIO Brushless FC can handle 20A continuous current (25A burst), which is the first 20A All-in-one FC on the market. Compared to FC / ESC Stacks design, this board provided with massive levels of performance capability while still maintain ultralight only 6.63g. Breaking through the limit of toothpick power, exploring more possibilities in 3-4 in drones. This board is your best choice to DIY your own toothpick drone that is tailored to your requirements.'
-- ),
-- (
--   'Flight Controllers',
--   'Matek F722-PX w/Pixel OSD Flight Controller',
--   50.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/m/a/matek-flight-controller-f722-px-w-pixel-osd-f722-px-13947692089421.progressive.png-_1_.jpg',
--   'The Matek line of F7 flight controllers brings a host of new possibilities to your fixed wing or multirotor. Loaded with an array of features and tons of room for peripherals, this board lets you choose how you want to fly. The F722-PX w/ Pixel FC is specially designed to connect directly to the F722-PX-W Power Distribution Board.'
-- ),
-- (
--   'Flight Controllers',
--   'HGLRC Forward F7 DUAL Gyro Flight Controller',
--   39.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/5/a/5a91f6a4-532f-4418-8f19-744894f5e9a2.jpg',
--   'The new F7 DUAL Gyro Flight Controller by HGLRC features an ultra-high performance processor with built-in MPU6000 and ICM20608 gyros, smooth and sensitive flying feel and support up to 32K+16k. Easy installation and no soldering required. Simply plug-and-play!'
-- ),
-- (
--   'Flight Controllers',
--   'BETAFPV F4 1S Brushless Flight Controller V2.1 - Frsky',
--   39.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/6/3/6391ace427ade714b70fb966024ae804_d4c4f191-f8f1-45dd-b4e7-5ae73b87639e_1800x1800.jpg',
--   'This is the lightest F4 1S brushless FC in the current market. With a slim and sleek design, 2.69g in weight and better performance on function for maximum weight savings, power, and responsiveness. Equips with PH2.0 connector, all 1S brushless drones will gain stronger powerful and perfect performance. Specially made for 1S brushless whoop with F411 chip. A great choice for building Beta65 Pro and Beta75 Pro. Ultra-compact with 2.69g weight (Not power cable included), this FC is ready and waiting to take residence within your 1S micro FPV aircraft of choice, which could save much weight for a faster fly experience.'
-- ),
-- (
--   'Flight Controllers',
--   'Matek F722-SE AIO Flight Controller',
--   44.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/f/7/f722-se_2-1500x600_1.jpg',
--   'The Mateks line of F7 flight controllers brings a host of new possibilities to your fixed wing or multirotor. Loaded with an array of features and tons of room for peripherals, this board lets you choose how you want to fly.'
-- ),
-- -- ----------------- FLIGHT STACKS ----------------------------------------------
-- (
--   'Flight Stacks',
--   'Lumenier LUX Mini F7 20x20 Stack (30A 2-6S ESC, F7 FC, 800mW VTX)',
--   84.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/l/u/lux-20-stack-1.jpg',
--   'The Lumenier F7 Mini Stack is the go-to 20x20 stack for all types of mini quads. The powerful F7 flight controller allows for simultaneous processes to be handled with ease, giving you a stable and clean signal to your sensors. The 2-6S 30A ESC features the latest gen. BLHeli_32 firmware running alongside an additional F3 processor to give you even more headroom. Tie it all together with a Smart Audio enabled VTX, capable of 5 variable transmitting powers from PIT, up to 800mW, this 20x20 stack will give any 30x30 stack a run for its money, and at a fraction of the size, weight, and cost!'
-- ),
-- (
--   'Flight Stacks',
--   'HGLRC FD413-VTX 16x16 Stack - F411 FC + 13A 2-4S BLS 4-in-1 ESC',
--   46.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/5/35ec1edb-9fcc-49d6-ac26-38e5423b0e98.jpg',
--   'The HGLRC FD413-VTX 16x16 Stack comes with an advanced F411 Flight Controler and a powerful 13A 4-in-1 ESC, and 5.8Ghz VTX allowing you to push your FPV quad sky-high, quite literally. Tons of features in a 16x16mm stack!'
-- ),
-- (
--   'Flight Stacks',
--   'Team BlackSheep PowerCube V2 - Multi Rotor Stack',
--   109.95,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/t/e/team-blacksheep-powercube-v2-multi-rotor-stack.jpg',
--   'Stacked compact, a all-in-one power package for your fpv racer between 120 and 330 size. 2-6S capable, 20A unventilated, 30A continuous, 45A burst ESCs provide ample juice. The Colibri RACE is a F3 based flight controller with enough processing power and memory to achieve low looptimes. The ESCs are TBS designs based on our BULLETPROOF technology, running the most common firmware BLHeli and SimonK as well. The TBS POWERCUBE combines knowledge and experience from over 2 years of research. It is the new standard for performance, reliability, ease-of use and cost in race machines. Main highlights include:

--   > All-in-one, solder-free system for race quads. Comes with - or plugs into - everything you need.
--   > Optimized for centralized weight distribution
--   > STM32F3-based FC, faster and more memory
--   > Most reliable ESC in the industry
--   > BLHeli 14.3, SimonK compatible
--   > Patented power distribution
--   > Clean, filtered power for fpv camera and video transmitter, selectable between 5V/12V and VBatt.'
-- ),
-- (
--   'Flight Stacks',
--   'Holybro Kakute V2 - Atlatl HV V2 - Tekko32 35A 4-in-1 ESC Combo',
--   105.00,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/8/a80566a196_1.jpg',
--   'Holybro is saving you time and guesswork into making your perfect FPV stack. Comes with the Kakute V2 FC, Atlatl HV vtx, and the Tekko32 4-in-1 ESC. '
-- ),
-- (
--   'Flight Stacks',
--   'BETAFPV F405 Brushless FC and 16A 3-4S BLHeli32 ESC V2.0',
--   69.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/e/z/ezgif-1-c01c728bd1aa.jpg',
--   'After several months of research, the combined F405 4S Brushless Flight Controller with a BLHeli_32 16A 2-4S ESC has been released. Runs 4S current with rocksteady performance. The BLHeli_32 16A 3-4S ESC is customized for the Beta85X whoop drone. One of the only micro drones with a BLHeli_32 ESC presently. '
-- ),
-- -- ----------------- FRAMES -----------------------------------------------------
-- (
--   'Frames',
--   'BETAFPV X-Knight Carbon Fiber Frame Kit',
--   18.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/_/1_1ad30932-9a49-49d4-85b2-602c8f2310a0_1800x1800_2.jpg',
--   'BETAFPV X-Knight Carbon Fiber Frame Kit comes with two options - 4 & 5 in. This frame is made up of T700 carbon material, which is durable and lightweight.  In this kit, you will find arms, a bottom plate and a top plate, which allows you to replace any damaged parts. Nonetheless, the top plate comes with press nuts to make the installation process easy.'
-- ),
-- (
--   'Frames',
--   'GEPRC Phantom 2.5" Frame Kit',
--   18.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/8/18-3675085679.jpg',
--   'The GEPRC GEP-PT 2.5" Frame Kit is a supermini micro-frame made of carbon fiber that is perfect for indoor and outdoor flying. It is equipped with shock-absorbing balls, to effectively reduce the vibrations brought by motors to flight control. '
-- ),
-- (
--   'Frames',
--   'Flywoo Mr.Croc 5" 225mm Freestyle Frame Kit - Gold',
--   42.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/0/7/07a128f8-31f3-4607-b4b1-571a7fc2efa3.jpg',
--   'The Flywoo Mr.Croc was designed for freestyle flying and supports 5"-5.2" propellers. The Croc is incredibly versatile, able to be flown in four different arm configurations without having to change out the main carbon fiber plates - just change the arm positions and orientations. Different setups will put propellers in or out of view. You are able to mount either 20x20mm and 30.5x30.5mm stacks in the front, middle, and rear! Build your quad exactly how you want it with the Mr. Croc. Also, check out the slammed Mr. Croc SL frame if you are looking for an ultra-low CG build.'
-- ),
-- (
--   'Frames',
--   'Lumenier QAV-R 2 Slam SKITZO Freestyle 5" Quadcopter Frame (Hydro Dipped)',
--   89.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/l/u/lumenier-qav-r-2-slam-skitzo-freestyle-hydro-dip.jpg',
--   'For pilots who want to make a statement when they fly, the Lumenier QAV-R 2 SKITZO is about as bold as you can go. The SKITZO logo is sticker-bombed via Hydro dipping on the frame from head to toe resulting in a mind-boggling look that will get everyones attention! This customized QAV-R 2 airframe has been designed in collaboration with world-famous FPV Freestyle Pilot SKITZO FPV. The design is thanks to unique Hydro dipping technology that fully coats the underlying carbon fiber frame evenly and results in a smooth-to-the-touch feel. In addition, the arm layout is now a true-x configuration for a perfectly balanced feel on both roll and pitch. The QAV-R 2 SKITZO Freestyle frame features an elongated body compared to the orignal QAV-R 2, enabling 30x30 and 20x20 mounting in both the rear and center of the frame, and allowing you to be creative with your gear layout. Each kit includes an X Brace bottom plate for improved durability needed in bando freestyle flying. The SKITZO version of the QAV-R 2 is also backward compatible with the original QAV-R 2 arms and body plates, so you can mix and match arm and body styles if you choose.'
-- ),
-- (
--   'Frames',
--   'BETAFPV Beta75X 2S Whoop Frame - Black',
--   4.50,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/e/z/ezgif-1-b4673f367d1a.jpg',
--   'This Beta75X frame is customed for 75mm brushless whoop drone. This frame natively supports 110x motors. Also, it has a customed battery slot to support 2S battery and you could modify it easily by cutting out the stickers to fit 3S 300mah battery. The FC mounting columns still match the whoop style FC boards. At the same time, we would like to keep it durable and light enough for a whoop beast. Come with a plastic durable package, which can protect the package from deformation during the shipping process.'
-- ),
-- -- ----------------- FPV GOGGLES ----------------------------------------------------
-- (
--   'FPV Goggles',
--   'Eachine EV800D 5.8G 40CH Diversity FPV Goggles with DVR',
--   99.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/e/a/eachine-ev800d-5-8g-40ch-diversity-fpv-goggles-with-dvr.jpg',
--   'Eachine EV800D 5.8G 40CH Diversity FPV Goggles 5 Inch 800*480 Video Headset HD DVR Build in Battery.'
-- ),
-- (
--   'FPV Goggles',
--   'Fat Shark Recon V3 FPV Goggles',
--   99.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/d/s/dsc_2032_1.jpg',
--   'The Recon line of panel goggles are a great entry level FPV headset. They are simple, affordable, and have an ultra-immersive FOV. The Recon V3 has an integrated four band, 32-channel receiver, and USB charging. It puts ease-of-use first and lets pilots focus on the full FPV experience without worrying about extra charging cables or accessory components. Version 3 of the Recon Goggles is a very mature design. It has an included onboard DVR, uses an integrated channel scanner to pick up the strongest video feed and has an improved 800 x 480 TFT resolution display for a crisper image. The onboard OSD shows video signal strength, battery lifetime, and selected channel. The Recon V3 is the ideal choice for a new pilot looking for a complete, high-quality headset.'
-- ),
-- (
--   'FPV Goggles',
--   'ORQA FPV.One OLED FPV Goggles',
--   649.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/o/r/orqa-front-color.jpg',
--   'The ORQA FPV.One OLED FPV Goggles. Superbly engineered optics set a new benchmark for immersive FPV experience.
--   The ORQA goggles feature a large 1280x960 OLED screen for incredible color, clarity, and picture. It has a large FOV of 44 degrees giving you an immersive FPV experience, and a wide IPD range (56-74 mm) to ensure a good fit for all faces. The high-quality optics provide a clear and sharp picture from edge to edge; no edge blur.
--   The ORQA FPV.One goggle is packed with features like support for 16:9 and 4:3 display output, power button, built-in de-fogging fan and so much more.'
-- ),
-- (
--   'FPV Goggles',
--   'DJI Digital HD FPV Goggles',
--   529.99,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/-/1-3_1.jpg',
--   'The DJI Digital HD FPV Goggles are truly one-of-a-kind, in performance and style. DJI has created and honed its digital FPV system to satisfy the demands of drone pilots (no easy task).
--   Racing and freestyle drone pilots alike want the fastest response, lowest latency and clearest video in their FPV system in order to perform fast movements with the most accuracy. Analog video was the best way to achieve low latency and fast response, but the video was never very clear. And conversely with digital, the video was clear and crisp, but there was a noticeable delay that many pilots couldn not live with - plus digital HD systems were bulky and cumbersome to put on your drone.
--   Well, all of that is changed with DJIs entry to Digital HD. Crystal clear 720p 120fps video directly to your goggles, with the lowest latency ever before on a digital HD system (28ms)! 
--   On top of that, get maximum transmission ranges up to 4km with the built-in receiver! No need to spend additional money on an external receiver module.'
-- ),
-- (
--   'FPV Goggles',
--   'FPV Bundle - Fat Shark Attitude V5, RapidFire + Lumenier AXII 2 Diversity Antenna Bundle',
--   459.98,
--   'https://cdn.getfpv.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/t/attitude-v5-bundle.jpg',
--   'The Ultimate FPV Bundle is here! If you are looking for the top of the line FPV setup, then this is it. This bundle includes the OLED Fat Shark Attitude V5 FPV Goggles, the ImmersionRC rapidFIRE Analog PLUS Goggle Receiver Module, and the worlds most popular FPV antenna line, the Lumenier AXII 2 Antenna. 
--   For a limited time with this bundle, you can add the Lumenier AXII 2 Antennas 5.8GHz for 50% OFF!! That is right, half price one of the best FPV Diversity Bundles on the market.
--   Treat yourself to the best FPV experience with this Attitude V5 FPV Bundle and save big!'
-- ),
-- ----------------- MOTORS -----------------------------------------------------
-- (
--   '',
--   '',
--   ,
--   '',
--   ''
-- ),
-- ----------------- PROPS ------------------------------------------------------
-- ----------------- RADIOS -----------------------------------------------------
-- ----------------- RTF BUNDLES ------------------------------------------------
-- ----------------- VIDEO TRANSMITTERS -----------------------------------------