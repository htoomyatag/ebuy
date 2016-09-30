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
  {title:"tmp8",discount_price: "100", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp9",discount_price: "150", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp10",discount_price: "300", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp11",discount_price: "450", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp12",discount_price: "210", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp13",discount_price: "150", quantity: 10, product_category:"AuthenticBrandZone"},
  {title:"tmp14",discount_price: "210", quantity: 10, product_category:"AuthenticBrandZone"},


  {title:"tmp1",discount_price: "100", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp2",discount_price: "150", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp3",discount_price: "300", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp4",discount_price: "450", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp5",discount_price: "210", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp6",discount_price: "150", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp7",discount_price: "210", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp8",discount_price: "100", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp9",discount_price: "150", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp10",discount_price: "300", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp11",discount_price: "450", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp12",discount_price: "210", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp13",discount_price: "150", quantity: 10, product_category:"WomenFashion"},
  {title:"tmp14",discount_price: "210", quantity: 10, product_category:"WomenFashion"},


  {title:"tmp1",discount_price: "100", quantity: 10, product_category:"MenFashion"},
  {title:"tmp2",discount_price: "150", quantity: 10, product_category:"MenFashion"},
  {title:"tmp3",discount_price: "300", quantity: 10, product_category:"MenFashion"},
  {title:"tmp4",discount_price: "450", quantity: 10, product_category:"MenFashion"},
  {title:"tmp5",discount_price: "210", quantity: 10, product_category:"MenFashion"},
  {title:"tmp6",discount_price: "150", quantity: 10, product_category:"MenFashion"},
  {title:"tmp7",discount_price: "210", quantity: 10, product_category:"MenFashion"},
  {title:"tmp8",discount_price: "100", quantity: 10, product_category:"MenFashion"},
  {title:"tmp9",discount_price: "150", quantity: 10, product_category:"MenFashion"},
  {title:"tmp10",discount_price: "300", quantity: 10, product_category:"MenFashion"},
  {title:"tmp11",discount_price: "450", quantity: 10, product_category:"MenFashion"},
  {title:"tmp12",discount_price: "210", quantity: 10, product_category:"MenFashion"},
  {title:"tmp13",discount_price: "150", quantity: 10, product_category:"MenFashion"},
  {title:"tmp14",discount_price: "210", quantity: 10, product_category:"MenFashion"},


  {title:"tmp1",discount_price: "100", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp2",discount_price: "150", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp3",discount_price: "300", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp4",discount_price: "450", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp5",discount_price: "210", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp6",discount_price: "150", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp7",discount_price: "210", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp8",discount_price: "100", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp9",discount_price: "150", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp10",discount_price: "300", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp11",discount_price: "450", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp12",discount_price: "210", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp13",discount_price: "150", quantity: 10, product_category:"Digital&Mobile"},
  {title:"tmp14",discount_price: "210", quantity: 10, product_category:"Digital&Mobile"},



  {title:"tmp1",discount_price: "100", quantity: 10, product_category:"Home&Living"},
  {title:"tmp2",discount_price: "150", quantity: 10, product_category:"Home&Living"},
  {title:"tmp3",discount_price: "300", quantity: 10, product_category:"Home&Living"},
  {title:"tmp4",discount_price: "450", quantity: 10, product_category:"Home&Living"},
  {title:"tmp5",discount_price: "210", quantity: 10, product_category:"Home&Living"},
  {title:"tmp6",discount_price: "150", quantity: 10, product_category:"Home&Living"},
  {title:"tmp7",discount_price: "210", quantity: 10, product_category:"Home&Living"},
  {title:"tmp8",discount_price: "100", quantity: 10, product_category:"Home&Living"},
  {title:"tmp9",discount_price: "150", quantity: 10, product_category:"Home&Living"},
  {title:"tmp10",discount_price: "300", quantity: 10, product_category:"Home&Living"},
  {title:"tmp11",discount_price: "450", quantity: 10, product_category:"Home&Living"},
  {title:"tmp12",discount_price: "210", quantity: 10, product_category:"Home&Living"},
  {title:"tmp13",discount_price: "150", quantity: 10, product_category:"Home&Living"},
  {title:"tmp14",discount_price: "210", quantity: 10, product_category:"Home&Living"},

  {title:"tmp1",discount_price: "100", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp2",discount_price: "150", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp3",discount_price: "300", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp4",discount_price: "450", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp5",discount_price: "210", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp6",discount_price: "150", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp7",discount_price: "210", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp8",discount_price: "100", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp9",discount_price: "150", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp10",discount_price: "300", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp11",discount_price: "450", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp12",discount_price: "210", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp13",discount_price: "150", quantity: 10, product_category:"Health&Beauty"},
  {title:"tmp14",discount_price: "210", quantity: 10, product_category:"Health&Beauty"},


    {title:"tmp1",discount_price: "100", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp2",discount_price: "150", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp3",discount_price: "300", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp4",discount_price: "450", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp5",discount_price: "210", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp6",discount_price: "150", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp7",discount_price: "210", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp8",discount_price: "100", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp9",discount_price: "150", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp10",discount_price: "300", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp11",discount_price: "450", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp12",discount_price: "210", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp13",discount_price: "150", quantity: 10, product_category:"Food&Beverage"},
  {title:"tmp14",discount_price: "210", quantity: 10, product_category:"Food&Beverage"}

  ])


