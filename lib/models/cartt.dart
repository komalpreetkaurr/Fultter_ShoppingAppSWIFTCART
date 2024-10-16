import 'package:flutter/material.dart';
import 'package:shopping_app/models/shoeetile.dart';

class Cart extends ChangeNotifier{
  List<Product>ProductShop = [
 Product(
  imageURL: "image/IMG-20240204-WA0004-removebg-preview.png", 
  name: "Banarsi Saree",
  price: 2699 , 
  description:"Wedding wear traditional embellished designer Banarasi Sarees",),
Product(
  imageURL: "image/IMG-20240204-WA0005-removebg-preview.png", 
  name: "Knee length dress",
  price: 699, 
  description:"Floral print A-line dyed dress",),
  Product(
  imageURL: "image/IMG-20240204-WA0006-removebg-preview.png", 
  name: "Dear Handprinted Shirt",
  price: 4599,
  description:"Shirt is yoke at the back,truely unique designs",),
  Product(
  imageURL: "image/5-removebg-preview.png", 
  name: "Nike Pooximo IC",
  price: 1499, 
  description:" Synthetic material",),
  Product(
  imageURL: "image/2-removebg-preview.png", 
  name: "90's StreetWear ",
  price: 3432, 
  description:" Blemishes front , back, sleeves and hood ",),
   Product(
  imageURL: "image/3-removebg-preview.png", 
  name: "Denim Jeans & Shirt",
  price: 2150, 
  description:"It is made up of denim fibre that keeps the child warm",),
   Product(
  imageURL: "image/IMG-20240204-WA0010-removebg-preview.png", 
  name: "Casual Shoes",
  price: 7797, 
  description:"Csaual shoe for men comes in suede finish.simple lacing system",),
   Product(
  imageURL: "image/IMG-20240204-WA0012-removebg-preview.png", 
  name: "UV protected sunglasses",
  price: 2789, 
  description:"It will enchance your beauty",),
   Product(
  imageURL: "image/IMG-20240204-WA0008-removebg-preview.png", 
  name: "Champagne Saree",
  price: 3187, 
  description:"Chapagne heavy embroidered wedding reception saree",),
   Product(
  imageURL: "image/IMG-20240204-WA0003-removebg-preview.png", 
  name: "Women rayon printed ",
  price: 599, 
  description:" Purshottam wala women rayon printed high slit a line kurta",),
  Product(
  imageURL: "image/images-removebg-preview.png", 
  name: "Embroidered silk suit ",
  price: 8800, 
  description:"Chiffon Wear",),
   Product(
  imageURL: "image/6-3-removebg-preview.png", 
  name: "Sabasyachi Lehenge",
  price: 10900,
  description:"Wedding outfit for her special day ",),
   Product(imageURL:'imgm/01f566bf1f88788b55b1c41683ba6dfd-removebg-preview.png' , name: 'Red Shervani', price: 4500, description: 'Red for your wedding day'),
  Product(imageURL: 'imgm/89ddc1feed1287d7cc733eaea60eebee-removebg-preview.png', name: 'Formal wear', price: 2300, description: 'Formal wear with floral blue shirt'),
  
  Product(imageURL: 'imgm/a5e4795109ee7a24c054d0eb8c53bfa4-removebg-preview.png', name: 'Beach look', price: 1500, description: 'perfect wear for beach wear'),
  Product(imageURL: 'imgm/b810614e1b4913bf6d2d0c807af4cb46-removebg-preview.png', name: 'Brown shirt', price: 2000, description: 'Combo of perfect match outfit'),
  
  Product(imageURL: 'imgm/groom-nehru-jacket-removebg-preview.png', name: 'Haldi jacket', price: 540 , description: 'Floral print for haldi function'),
  Product(imageURL: 'imgm/images__2_-removebg-preview.png', name: 'Beige t-shirt', price: 499, description: 'For casual party'),
  
  Product(imageURL: 'imgm/images__3_-removebg-preview.png', name: 'Guest Wear', price: 300, description: 'Upper for mens'),
  Product(imageURL: 'imgm/images__14_-removebg-preview.png', name: 'Peach Jacket', price: 452, description: 'Combo of jacket and cap'),
  
  Product(imageURL: 'imgm/Interesting-Facts-About-Mens-Fashion-740x500-5_5f5b31603d058-removebg-preview.png', name: 'Formal Wear', price: 5684, description: 'Formal wear in royal blue'),
  Product(imageURL: 'imgm/pastel-wedding-dress-for-men-6-removebg-preview.png', name: 'White shervani', price:4752 , description: 'For a royal look on your special day'),
  
  Product(imageURL:'imgm/peach-color-art-silk-fabric-digital-print-sherwani-95658-308x424-removebg-preview.png' , name: 'Pastel shervani', price: 7458, description: 'Royal look in pastel shade'),
  Product(imageURL: 'imgm/shackets-data-removebg-preview.png', name: 'Beige Jacket', price:458 , description: 'Casual Wear Beige jacket'),
  
Product(imageURL:'imgw/71fQnABAhdL._AC_UF350_350_QL80_-removebg-preview.png' , name: 'Knee length dress', price: 599, description: 'Black in color and body coned dress'),
Product(imageURL: 'imgw/73a76ad86e23d82400c02bef5ba60cb3_tn-removebg-preview.png', name: 'Korean dress', price:299 , description:'Dress inspired by korean lifestyle' ),

Product(imageURL:'imgw/2834efdb7b27b895a8a297ae6d13ffb1-removebg-preview.png' , name:'Floral Dress' , price: 899, description: 'Beautiful Floran print dress'),
Product(imageURL: 'imgw/acy1307_1_-removebg-preview.png', name: 'Floral Saree', price: 1999, description: 'Flowers printed at the bottom to give a floran effect'),

Product(imageURL:'imgw/black-lehenga-choli-600x600-removebg-preview.png' , name:'Lehenge choli' , price: 2500, description:'Black lehenge choli perfect for weddings' ),
Product(imageURL: 'imgw/c256c240307523da88e3897ab63dc09f-removebg-preview.png', name: 'Western Gown', price: 450, description:'Orange in color and full length gown' ),

Product(imageURL:'imgw/dark-red-punjabi-style-dhoti-salwar-kameez-ft402023-removebg-preview.png' , name:'Salwar Suit' , price: 3000, description: 'Embroidered at the bottom and perfect color match'),
Product(imageURL: 'imgw/de6ff11814c69e12537aa4d63454ec09-removebg-preview.png', name: 'Lehenga', price: 458, description: 'Perfect match of colors'),

Product(imageURL: 'imgw/edi-min-removebg-preview.png', name: 'Arbanic green suit', price: 2350 , description: 'Traditional dress from afganistan '),
Product(imageURL: 'imgw/images__1_-removebg-preview.png', name: 'Palzoo Suit', price: 987, description: 'With bottom wear and duptta'),

Product(imageURL: 'imgw/images-removebg-preview.png', name: 'Umbrella Dress', price: 876 , description: 'Perfect for Family functions'),
Product(imageURL: 'imgw/online-min-removebg-preview.png', name: 'Sharara Suit', price: 1458 , description:'Full length dress' ),

Product(imageURL: 'imgk/6b0627f99145e0bfa4a745cc443a2ee4-removebg-preview.png', name: 'Black jacket', price:2547 , description: 'Little jacket for your little ones'),
  Product(imageURL: 'imgk/17775610102023-Off-White-Art-Silk-Kids-Indo-Western-Suit-removebg-preview.png', name: 'Long formal jacket', price:4574 , description: 'Perfect for family functions'),
  
  Product(imageURL: 'imgk/ff46d73e5c9fb9810c970f0a8ffb1713-removebg-preview.png', name: 'Kurta Pajma', price:1047 , description: 'White kurta pajma with orange border'),
  Product(imageURL: 'imgk/gw0017-rjs00770_-thumb-removebg-preview.png', name: 'Shirt and lehenga', price: 745, description: 'Combo of dupatta,shirt and lehenge'),
  
  Product(imageURL: 'imgk/images__4_-removebg-preview.png', name: 'Lehenga And choli', price: 857, description: 'Designer choli'),
  Product(imageURL: 'imgk/images__5_-removebg-preview.png', name: 'Shirt and jeans', price: 458, description: 'Casual look for boys'),
  
  Product(imageURL: 'imgk/images__6_-removebg-preview.png', name: 'Kurta pajma', price: 514, description: 'Green in color and whitejacket'),
  Product(imageURL: 'imgk/images__7_-removebg-preview.png', name: 'Jumpsuit', price: 2058, description: 'Jumpsuit for perfect evening look'),
  
  Product(imageURL: 'imgk/images__8_-removebg-preview.png', name: 'Hoodie', price: 1045, description:'Grey in color for 1-2 years'),
  Product(imageURL: 'imgk/images__9_-removebg-preview.png', name: 'Frock', price: 2357, description: 'Yellow frock for 1-2 years'),
  
  Product(imageURL: 'imgk/istockphoto-1294345604-612x612-removebg-preview.png', name: 'Top and skirt', price: 2089, description: 'Beige top and white skirt'),
  Product(imageURL: 'imgk/p7-2-removebg-preview.png', name: 'Flared Gown', price:1056 , description: 'Purple in color and flared'),


  Product(imageURL:'imgh/download (5).jpg', name: 'Cushions and bedsheets', price:358 , description: 'Printed cushions and plain bedsheet'),
  Product(imageURL: 'imgh/download (6).jpg', name: 'Pillows and bedsheets', price: 457, description: 'Printed designs on both pillows abd bedsheets'),
  Product(imageURL: 'imgh/download (7).jpg', name: 'Curtains and cushions', price: 754, description: 'Printed cushions and curtains in teal color'),
  
  Product(imageURL: 'imgh/download (8).jpg', name: 'Pillows and bedsheets', price: 489, description: 'Multi color Cushions and other household things'),
  Product(imageURL: 'imgh/download (9).jpg', name: 'Pillows', price: 658, description: 'pillows in various prints'),
  Product(imageURL: 'imgh/download (10).jpg', name: 'Cushions', price: 753, description: 'Variety of cushions'),
  
  Product(imageURL: 'imgh/images (17).jpg', name: 'Basket', price: 425, description:'Brown colored flower shaped basket'),
  Product(imageURL: 'imgh/images (18).jpg', name: 'Cushions', price:275 , description: 'Cushion and bedsheet'),
   Product(imageURL: 'imga/accessories-removebg-preview.png', name: 'Perfect pack', price: 679, description: 'Combo of all necessary things'),
  Product(imageURL: 'imga/download__1_-removebg-preview.png', name: 'Hair Holder', price: 234, description: 'Perfect and stylish way to keep your hairs tighed'),
  
  Product(imageURL: 'imga/download-removebg-preview.png', name: 'Women Wear', price: 568, description: 'Perfect for women collection'),
  Product(imageURL: 'imga/images__10_-removebg-preview.png', name: 'Perfect pack', price: 752, description: 'Combo of all necessary things'),
  Product(imageURL: 'imga/images__11_-removebg-preview.png', name: 'Perfect pack', price: 429, description: 'Combo of all necessary things'),
  Product(imageURL: 'imga/images__12_-removebg-preview.png', name: 'Perfect pack', price: 875, description: 'Combo of all necessary things'),
  Product(imageURL: 'imga/images__13_-removebg-preview.png', name: 'Perfect pack', price: 2055, description: 'Combo of all necessary things'),
  Product(imageURL:'imga/pexels-photo-322207-removebg-preview.png', name: 'Perfect Pack', price: 1500, description: 'Combo of all necessary things'),
Product(imageURL: 'imgf/51Ykk5s9wJL._AC_UY1000_-removebg-preview.png', name: 'Fancy Slippers', price: 299, description: 'White border slippers'),
  Product(imageURL: 'imgf/61ORvIRtSyL._AC_UY1000_-removebg-preview.png', name: 'Black Heels', price:599 , description: 'Half inch heels'),
  
  Product(imageURL: 'imgf/c6bb6804-6e44-440f-84f0-6a5bf2128319.__CR0_0_1000_1000_PT0_SX300_V1___-removebg-preview.png', name: 'Slippers', price:199 , description: 'Perfect for beach party'),
  Product(imageURL: 'imgf/download__2_-removebg-preview.png', name: 'Tropical heels', price:899 , description: '6 Inch heels'),
  Product(imageURL: 'imgf/download__3_-removebg-preview.png', name: 'Casual slippers', price:455 , description: 'Good for comfort'),
  Product(imageURL: 'imgf/download__4_-removebg-preview.png', name: 'Casual Slippers', price: 564, description: 'Comfort sole'),
  Product(imageURL: 'imgf/images__15_-removebg-preview.png', name: 'Nike Shoes', price:900 , description: 'Black in color and comfort sole'),
  Product(imageURL: 'imgf/images__16_-removebg-preview.png', name: 'Transparent heels', price:652 , description: 'Transparent Border '),
  ];
  // list of items in user cart
  List<Product> usercart = [];
  //get list of shoes for sale
  List<Product> getshoelist(){
    return ProductShop;
  }
  //get cart
  List<Product> getusercart(){
    return usercart;
  }
  // add items in the cart
  void additemstocart(Product product){
    usercart.add(product);
    notifyListeners();
  }
  // remove items in the cart
  void removeitemfromcart(Product product){
    usercart.remove(product);
    notifyListeners();
  }
}