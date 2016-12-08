class Product < ActiveRecord::Base


 serialize :specsq
 serialize :specsa
 serialize :question
 serialize :answer
  

  
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  belongs_to :buyer

  
  # ensure that there are no line items referencing this product
PRODUCTCATEGORY = [

             "AuthenticBrandZone",
             "WomensFashion",               
             "MensFashion", 
             "DigitalMobileandElectricalAppliances", 
             "HomeandLiving",
             "HealthandBeauty",
             "FoodandBeverage",
             "KidBabyandMaternity",
             "SportsOutdoorsandEntertainment",
             "OfficeandSchoolSupplies",
             "LightsandLightings",
             "Transportation",
             "TravelandDeals",
             "Services",
             "ElectronicElectricalandMechanicalProducts"

]






PRODUCTSUBCATEGORY = [

"ShirtsTops",
"JacketsCoats",
"Jeans",
"Trousers",
"Leggings",
"Skirts",
"Shorts",
"Sleepwear",
"Fleeces",
"Sweatshirts",
"FormalWear",
"WeddingDresses",
"BridesmaidDresses",
"Sleeveless",
"KoreanFashion",
"TraditionalDresses",
"Underwear",
"Bikinis",
"Sportswear",
"Swimwear",
"MaternityDresses",
"OthersandAccessories",
"Flats",
"Heels",
"Casual",
"Formal",
"SportsShoes",
"Boots",
"Slippers",
"Sandals",
"OthersandAccessories",
"Handbags",
"ClutchBags",
"SlingBags",
"Briefcases",
"WaistBags",
"LaptopBags",
"CameraBags",
"Backpacks",
"ToiletriesBags",
"WaterproofBags",
"CoolerBags",
"ShoeBags",
"Wallets",
"TravelLuggages",
"OthersandAccessories",
"DigitalWatches",
"CasualWatches",
"PremiumWatches",
"SportWatches",
"WaterproofWatches",
"Sunglasses",
"OthersandAccessories",
"Rings",
"Earrings",
"Necklaces",
"Bracelets",
"Brooches",
"Charms",
"JewellerySets",
"OthersandAccessories",
"ShirtsTops",
"JacketsCoats",
"Jeans",
"Trousers",
"Shorts",
"Sleepwear",
"Fleeces",
"Sweatshirts",
"FormalWear",
"WeddingDresses",
"Sleeveless",
"KoreanFashion",
"TraditionalDresses",
"Underwear",
"Sportswear",
"Swimwear",
"OthersandAccessories",
"Casual",
"Formal",
"SportsShoes",
"Boots",
"Slippers",
"Sandals",
"OthersandAccessories",
"Handbags",
"ClutchBags",
"SlingBags",
"Briefcases",
"WaistBags",
"LaptopBags",
"CameraBags",
"Backpacks",
"ToiletriesBags",
"WaterproofBags",
"CoolerBags",
"ShoeBags",
"Wallets",
"TravelLuggages",
"OthersandAccessories",
"DigitalWatches",
"CasualWatches",
"PremiumWatches",
"SportWatches",
"WaterproofWatches",
"Sunglasses",
"OthersandAccessories",
"Rings",
"Earrings",
"Brooches",
"Charms",
"JewellerySets",
"OthersandAccessories",
"SmartPhones",
"BasicPhones",
"LandlinesCordless",
"Tablets",
"OthersandAccessories",
"DesktopPCs",
"Laptops",
"OthersandAccessories",
"TVs",
"Projectors",
"BlueRay",
"DVDPlayers",
"MediaPlayers",
"OthersandAccessories",
"Amplifiers",
"HomeTheatres",
"SoundBars",
"Speakers",
"Headphones",
"Earphones",
"Microphones",
"MP3Players",
"VoiceRecorders",
"StudioEquipments",
"CCTV",
"DSLR",
"Camcorders",
"CarCameras",
"CompactCameras",
"ActionCameras",
"IPCameras",
"DronesDroneCameras",
"PlayStation",
"Xbox",
"CoolingandHeatingAppliances",
"KitchenAppliances",
"HousekeepingAppliances",
"GarmentCare",
"LaundryCare",
"BathCare",
"PersonalCare",
"AirPurifiers",
"Humidifiers",
"Dehumidifiers",
"SolarBatteries",
"OthersandAccessories",
"LivingRoomFurnitures",
"OthersandAccessories",
"Pillows",
"Bolsters",
"Blankets",
"Mattresses",
"BedroomFurnitures",
"BathroomShelves",
"Faucets",
"ShowerCurtains",
"ShowerHeads",
"OralCare",
"Towels",
"Detergents",
"SewingMachines",
"Needles",
"DryingRacks",
"Hangers",
"IroningBoards",
"KitchenStorage",
"CookingEquipments",
"KitchenTools",
"Bakeware",
"Dinnerware",
"OthersandAccessories",
"Mops",
"Brooms",
"FloorPolishers",
"VacuumCleaners",
"Carpets",
"Mats",
"Curtains",
"Mirrors",
"Paints",
"Posters",
"Candles",
"Clocks",
"ArtificialFlowersPlants",
"OutdoorSupplies",
"GardenSupplies",
"Flowers",
"Lawn",
"BathCare",
"BodyCare",
"FacialMasks",
"SunProtection",
"SkinWhitening",
"AcneCare",
"Toners",
"Cleansers",
"MoisturiserCreams",
"Blusher",
"MakeUp",
"AntiAgingProducts",
"ContactLenses",
"Glasses",
"EyeDrops",
"Shampoos",
"Conditioners",
"HairCreamsGels",
"HairColoring",
"HairOils",
"HairSprays",
"HairLossPrevention",
"Floss",
"Toothbrushes",
"Toothpastes",
"MouthWashes",
"MensPerfumes",
"WomensPerfumes",
"ShavingCreamsGels",
"Trimmers",
"Shavers",
"RazorsBlades",
"DietarySupplements",
"VitaminsMultivitamins",
"CollagenSupplements",
"WeightLoss",
"Antioxidants",
"MakeupSets",
"EyeCareAccessories",
"LipsticksLipgloss",
"HairCareAccessories",
"FreshVegetables",
"DriedVegetables",
"CannedVegetables",
"FrozenVegetables",
"PreservedVegetables",
"Chocolates",
"Candy",
"Gum",
"Breads",
"Cakes",
"Cookies",
"Biscuits",
"Cereal",
"Noodles",
"Flours",
"Snack",
"Milk",
"Cheese",
"Yogurt",
"Butter",
"MilkPowder",
"IceCream",
"CondensedMilk",
"Cream",
"Honey",
"BeePollen",
"BeeWax",
"RoyalJelly",
"MeatProducts",
"EggProducts",
"Coffee",
"SeafoodProducts",
"InstantFood",
"CannedFood",
"BabyFood",
"Beverage",
"Drinks",
"GirlsApparels",
"BoysApparel",
"OthersandAccessories",
"Diapering",
"BabyBath",
"BabySkinCare",
"BabyFeedings",
"Toys",
"MaternityCare",
"PostpartumCareGoods",
"SnookerandBillboard",
"SoccerTables",
"Badminton",
"TableTennis",
"Bowling",
"Chess",
"Darts",
"BoxingandMartialArts",
"FitnessandBodyBuilding",
"Golf",
"Soccer",
"Tennis",
"SwimmingandDiving",
"Basketball",
"Volleyball",
"Cycling",
"OthersandAccessories",
"OutdoorRecreation",
"PicnicSupplies",
"Entertainment",
"MusicalInstruments",
"Boards",
"CorrectionSupplies",
"Pens",
"Pencils",
"BooksandWritingPads",
"FilingProducts",
"OthersandAccessories",
"Calendar",
"Map",
"Magazines",
"OfficeAdhesivesandTapes",
"OfficeFurnitures",
"OthersandAccessories",
"ArtPaints",
"ArtMarkersandBrushes",
"ColouredPencils",
"Palette",
"LightingBulbsandTubes",
"HomeDecorationLightnings",
"LEDLightings",
"Torchlights",
"EmergencyLightings",
"ProfessionalLightings",
"OthersandAccessories",
"StreetLights",
"SolarLights",
"LEDOutdoorLights",
"OthersandAccessories",
"ManualBikes",
"ElectricBicycles",
"OthersandAccessories",
"Automobiles",
"Motorcycles",
"AutomobileParts",
"MotorcycleParts",
"HotelPromotion",
"TravelPromotion",
"Restaurants",
"Cafe",
"HairBeautyandWellness",
"EducationServices",
"BasicEducationServices",
"HigherEducationServices",
"ProfessionalTrainings",
"HomeTuition",
"AirconServicing",
"GeneralHomeServicing",
"ElectricalandElectronicRepair",
"ElectronicComponentsandParts",
"ElectricalEquipmentsandParts",
"MechanicalProductsandTools",
"SafetyEquipmentsandAccessories"



]





  has_attached_file :avatar1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :avatar1, content_type: /\Aimage\/.*\z/

    has_attached_file :avatar2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :avatar2, content_type: /\Aimage\/.*\z/


    has_attached_file :avatar3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :avatar3, content_type: /\Aimage\/.*\z/


    has_attached_file :avatar4, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :avatar4, content_type: /\Aimage\/.*\z/


  has_attached_file :avatar5, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :avatar5, content_type: /\Aimage\/.*\z/


# product code

  has_attached_file :other_avatar1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :other_avatar1, content_type: /\Aimage\/.*\z/

  has_attached_file :other_avatar2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :other_avatar2, content_type: /\Aimage\/.*\z/


  has_attached_file :other_avatar3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :other_avatar3, content_type: /\Aimage\/.*\z/


  has_attached_file :other_avatar4, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :other_avatar4, content_type: /\Aimage\/.*\z/


  has_attached_file :other_avatar5, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :other_avatar5, content_type: /\Aimage\/.*\z/




  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors[:base] << "Line Items present"
      return false
    end
  end
  
end







