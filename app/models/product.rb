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
             "ElectronicElectricalandMechanicalProducts",
              "AuthenticBrandZone"

]


PRODUCTSUBCATEGORY = [


              "WomensApparel",
              "WomensShoesandFootwear",
              "WomensBagsandWallets",
              "WomensWatchesandGlasses",
              "WomensJewellery",
              "MensApparel",
              "MensShoesandFootwear",
              "MensBagsandWallets",        
              "MensWatchesandGlasses",
              "MensJewellery",
              "PhonesandTablets",
              "ComputersandLaptops",
              "TVsVideosandPlayers",
              "AudioandHiFi",
              "CamerasandPhotos",
              "Gaming",
              "HomeElectricalAppliances", 
              "LivingRoomAppliances",  
              "BedroomProducts",
              "BathroomAppliances",  
              "GarmentCare", 
              "KitchenandDining",   
              "Housekeeping",  
              "HomeDecoration",
              "OutdoorandGarden",
              "BathandBodyCare",  
              "SkinCare",
              "EyeCare", 
              "HairCare",
              "DentalCare",
              "Perfumes", 
              "ShavingSupplies",
              "FoodSupplements",
              "HealthandBeautyTools",
              "KidsFashion",
              "BabyCare",
              "IndoorSportSupplies",
              "OutdoorSportSupplies",
              "EducationSupplies",
              "OfficeSupplies",
              "ArtSupplies",
              "IndoorLightings",
              "OutdoorLightnings",
              "Bicycles",
              "AutomobilesandMotorcycles",
              "Travel",
              "RestaurantsandCafe",
              "HomeRepairandMaintenance",
              "authentic_brand_zoneWomensFashion",    
              "authentic_brand_zoneMensFashion",
              "authentic_brand_zoneDigitalMobileandElectricalAppliances", 
              "authentic_brand_zoneHomeandLiving",
              "authentic_brand_zoneHealthandBeauty",
              "authentic_brand_zoneFoodandBeverage",
              "authentic_brand_zoneKidBabyandMaternity",
              "authentic_brand_zoneSportsOutdoorsandEntertainment",
              "authentic_brand_zoneOfficeandSchoolSupplies", 
              "authentic_brand_zoneLightsandLightings",
              "authentic_brand_zoneTransportation",
              "authentic_brand_zoneElectronicElectricalandMechanicalProducts"
     


]


PRODUCTCHILDSUBCATEGORY = [




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
            "Flats",
            "Heels",
            "Casual",
            "Formal",
            "SportsShoes",
            "Boots",
            "Slippers",
            "Sandals",
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
            "DigitalWatches",
            "CasualWatches",
            "PremiumWatches",
            "SportWatches",
            "WaterproofWatches",
            "Sunglasses",
            "Rings",
            "Earrings",
            "Necklaces",
            "Bracelets",
            "Brooches",
            "Charms",
            "JewellerySets",
            "SmartPhones",
            "BasicPhones",
            "LandlinesCordless",
            "Tablets",
            "DesktopPCs",
            "Laptops",
            "TVs",
            "Projectors",
            "BlueRay",
            "DVDPlayers",
            "MediaPlayers",
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
            "LivingRoomFurnitures",
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
            "GirlsApparels",
            "BoysApparel",
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
            "Calendar",
            "Map",
            "Magazines",
            "OfficeAdhesivesandTapes",
            "OfficeFurnitures",
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
            "StreetLights",
            "SolarLights",
            "LEDOutdoorLights",
            "ManualBikes",
            "ElectricBicycles",
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
            "SafetyEquipmentsandAccessories",
            "authentic_brand_zoneWomensApparel",
           "authentic_brand_zoneMensApparel",
           "authentic_brand_zoneMenShoesandFootwear",
           "authentic_brand_zoneMenBagsWallets",
           "authentic_brand_zoneMenWatchesandGlasses",
           "authentic_brand_zoneMenJewellery",
           "authentic_brand_zoneWomenShoesandFootwear",   
           "authentic_brand_zoneWomenBagsandWallets",   
           "authentic_brand_zoneWomenWatchesandGlasses",
           "authentic_brand_zoneWomenJewellery",
           "authentic_brand_zonePhonesandTablets",
           "authentic_brand_zoneComputersandLaptops",
           "authentic_brand_zoneTVVideoandPlayer",
           "authentic_brand_zoneAudioandHiFi",
           "authentic_brand_zoneCameraandPhoto",
           "authentic_brand_zoneGaming",
           "authentic_brand_zoneHomeAppliances",
           "authentic_brand_zoneLivingRoomSupplies",
           "authentic_brand_zoneBedroomAppliances",
           "authentic_brand_zoneBathroomProducts",
           "authentic_brand_zoneGarmentCare",
           "authentic_brand_zoneKitchenandDining",
           "authentic_brand_zoneHousekeeping",
           "authentic_brand_zoneHomeDecoration",
           "authentic_brand_zoneOutdoorandGarden",
           "authentic_brand_zoneBathandBodySupplies",
           "authentic_brand_zoneSkinCare",
           "authentic_brand_zoneEyeCare",
           "authentic_brand_zoneHairCare",
           "authentic_brand_zoneHandCare",
           "authentic_brand_zoneDentalCare",
           "authentic_brand_zonePerfumes",
           "authentic_brand_zoneShavingSupplies",
           "authentic_brand_zoneFoodSupplements",
           "authentic_brand_zoneHealthandBeautyTools", 
           "authentic_brand_zoneVegetableProducts",
           "authentic_brand_zoneConfectionery",
           "authentic_brand_zoneBakedGoods",
           "authentic_brand_zoneGrainProducts",
           "authentic_brand_zoneFoodIngredients",
           "authentic_brand_zoneDairyProducts",
           "authentic_brand_zoneHoneyProducts",
           "authentic_brand_zoneMeatandMeatandMeatProducts",
           "authentic_brand_zoneEggandEggProducts",
           "authentic_brand_zoneSeafoodandSeafoodProducts",
           "authentic_brand_zoneCoffee",
           "authentic_brand_zoneInstantFood",
           "authentic_brand_zoneCannedFood",
           "authentic_brand_zoneBabyFood",
           "authentic_brand_zoneBeverage",
           "authentic_brand_zoneKidsFashion",
           "authentic_brand_zoneBabyCare",
           "authentic_brand_zoneBabyFeeding",
           "authentic_brand_zoneToys",
           "authentic_brand_zoneMaternityCare",
           "authentic_brand_zoneIndoorSportSupplies",
           "authentic_brand_zoneOutdoorSportSupplies",
           "authentic_brand_zoneOutdoorRecreation",
           "authentic_brand_zoneEntertainment",
           "authentic_brand_zoneEducationSupplies",
           "authentic_brand_zoneOfficeSupplies",
           "authentic_brand_zoneArtSupplies",
           "authentic_brand_zoneLightsandLightings",
           "authentic_brand_zoneIndoorLightings",
           "authentic_brand_zoneOutdoorLightings",
           "authentic_brand_zoneBicycles",
           "authentic_brand_zoneAutomobilesandMotorcycles",
           "authentic_brand_zoneElectronicComponentsandParts",
           "authentic_brand_zoneElectronicComponentsandParts",
           "authentic_brand_zoneElectricalEquipmentsandParts",
           "authentic_brand_zoneMechanicalProductsandTools",
           "authentic_brand_zoneSafetyEquipmentsandAccessories",
           "authentic_brand_zoneOEMProducts",
           "VegetableProducts",
           "Confectionery",
           "BakedGoods",
           "GrainProducts",
           "FoodIngredients",
           "DairyProducts",
           "HoneyProducts",
           "MeatProducts",
           "EggProducts",
           "SeafoodProducts",
           "Coffee",
           "InstantFood",
           "CannedFood",
           "BabyFood",
           "Beverage"





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







