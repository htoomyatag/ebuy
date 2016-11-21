class Product < ActiveRecord::Base


 serialize :specs
  
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  belongs_to :buyer

  
  # ensure that there are no line items referencing this product
PRODUCTCATEGORY = [

"AuthenticBrandZone",
"WomenFashion",
"MenFashion",
"Digital&Mobile",
"Home&Living",
"Health&Beauty",
"Food&Beverage"

]






PRODUCTSUBCATEGORY = [

"WOMEN FASHION",
"Women'sApparel",
"Women Shoes",
"Women Bags&Wallets",
"Women Watches",
"Women Jewellery",

"MEN FASHION",
"Men'sApparel",
"MEN Shoes",
"MEN Bags&Wallets",
"MEN Watches",
"MEN Jewellery",

"DIGITAL",
"PhonesandTables",
"ComputersandLaptops",
"TV",
"VideoandPlayer",
"AudioandHiFi",
"CameraandPhoto",
"Gaming",
"HomeAppliances",

"HOMEANDLIVING",
"LivingRoomSupplies",
"BedroomAppliances",
"BathroomProducts",
"GarmentCare",
"KitchenandDining",
"Housekeeping",
"HomeDecoration",
"OutdoorandGarden",

"HEALTHANDBEAUTY",
"BathandBodySupplies",
"SkinCare",
"EyeCare",
"HairCare",
"HandCare",
"DentalCare",
"Perfumes",
"ShavingSupplies",
"FoodSupplements",
"HealthandBeautyTools",

"FOODANDBEVARAGES",
"Vegetable",
"Products",
"Confectionery",
"BakedGoods",
"GrainProducts",
"FoodIngredients",
"DairyProducts",
"HoneyProducts",
"MeatandMeatandMeatProducts",
"EggandEggProducts",
"SeafoodandSeafoodProducts",
"Coffee",
"InstantFood",
"CannedFood",
"BabyFood",
"Beverage",

"KID",
"BabyandMaternity",
"Kid'sFashion",
"BabyCare",
"BabyFeeding",
"Toys",
"MaternityCare",

"SPORT",
"OutdoorsandEntertainment",
"IndoorSportSupplies",
"OutdoorSportSupplies",
"OutdoorRecreation",
"Entertainment",

"OFFICEANDSUPPLIES ",
"EducationSupplies",
"OfficeSupplies",
"ArtSupplies",

"LIGHTSANDLIGHTSTANDINGS",
"IndoorLightings",
"OutdoorLightings",

"TRANSPORTATIONS",
"Bicycles",
"AutomobilesandMotorcycles",

"ELECTRONICS",
"ElectricalandMechanicProducts",
"ElectronicComponentsandParts",
"ElectricalEquipmentsandParts",
"MechanicalProductsandTools",
"SafetyEquipmentsandAccessories",
"OEMProducts"


]



  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors[:base] << "Line Items present"
      return false
    end
  end
  
end







