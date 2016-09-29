# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



admins = Admin.create([


{username: "htoomyatag", email: "htoomyatag.webdev@gmail.com", password: "12345678", password_confirmation: "12345678"},
{username: "theldarlykhin", email: "theldarlykhin.webdev@gmail.com", password: "12345678", password_confirmation: "12345678"},
{username: "ebuy", email: "ebuy.admin@gmail.com", password: "12345678", password_confirmation: "12345678"}



    ])


  products = Product.create([

  {title:"tmp1",discount_price: "100", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp2",discount_price: "150", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp3",discount_price: "300", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp4",discount_price: "450", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp5",discount_price: "210", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp6",discount_price: "150", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp7",discount_price: "210", quantity: 10, product_category:"AuthenticBrandZone"},

  {title:"tmp1a",discount_price: "100", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp2b",discount_price: "150", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp3c",discount_price: "300", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp4d",discount_price: "450", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp5e",discount_price: "210", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp6f",discount_price: "150", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp7g",discount_price: "210", quantity: 10, product_category:"AuthenticBrandZone"},


  {title:"tmp1",discount_price: "100", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp2",discount_price: "150", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp3",discount_price: "300", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp4",discount_price: "450", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp5",discount_price: "210", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp6",discount_price: "150", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp7",discount_price: "210", quantity: 10, product_category:"WomenFashion"},

  {title:"tmp1a",discount_price: "100", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp2b",discount_price: "150", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp3c",discount_price: "300", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp4d",discount_price: "450", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp5e",discount_price: "210", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp6f",discount_price: "150", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp7g",discount_price: "210", quantity: 10, product_category:"WomenFashion"},


  {title:"tmp8",discount_price: "650", quantity: 10},
  {title:"tmp9",discount_price: "610", quantity: 10},
  {title:"tmp10",discount_price: "450", quantity: 10},
  {title:"tmp11",discount_price: "310", quantity: 10},
  {title:"tmp12",discount_price: "390", quantity: 10}


  ])


