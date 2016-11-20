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

"AuthenticBrandZone",
"WomenFashion",
"MenFashion",
"Digital&Mobile",
"Home&Living",
"Health&Beauty",
"Food&Beverage"

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







