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





  has_attached_file :avatar1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar1, content_type: /\Aimage\/.*\z/

    has_attached_file :avatar2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar2, content_type: /\Aimage\/.*\z/


    has_attached_file :avatar3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar3, content_type: /\Aimage\/.*\z/


    has_attached_file :avatar4, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar4, content_type: /\Aimage\/.*\z/


  has_attached_file :avatar5, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar5, content_type: /\Aimage\/.*\z/


# product code

  has_attached_file :other_avatar1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :other_avatar1, content_type: /\Aimage\/.*\z/

  has_attached_file :other_avatar2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :other_avatar2, content_type: /\Aimage\/.*\z/


  has_attached_file :other_avatar3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :other_avatar3, content_type: /\Aimage\/.*\z/


  has_attached_file :other_avatar4, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :other_avatar4, content_type: /\Aimage\/.*\z/


  has_attached_file :other_avatar5, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
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







