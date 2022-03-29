import 'package:flutter_store_app/models/kbanner.dart';
import 'package:flutter_store_app/models/brand.dart';

import '../models/category.dart';
import '../models/product.dart';

class FakeData {
  static final shared = FakeData();

  List<Category> get categories => [
        {
          'id': 'Phones',
          'title': 'Phones',
          'imageUrl': 'assets/images/CatPhones.png',
        },
        {
          'id': 'Clothes',
          'title': 'Clothes',
          'imageUrl': 'assets/images/CatClothes.jpg',
        },
        {
          'id': 'Shoes',
          'title': 'Shoes',
          'imageUrl': 'assets/images/CatShoes.jpg',
        },
        {
          'id': 'Beauty & health',
          'title': 'Beauty & health',
          'imageUrl': 'assets/images/CatBeauty.jpg',
        },
        {
          'id': 'Laptops',
          'title': 'Laptops',
          'imageUrl': 'assets/images/CatLaptops.png',
        },
        {
          'id': 'Furniture',
          'title': 'Furniture',
          'imageUrl': 'assets/images/CatFurniture.jpg',
        },
        {
          'id': 'Watches',
          'title': 'Watches',
          'imageUrl': 'assets/images/CatWatches.jpg',
        },
      ].map((Map<String, dynamic> item) {
        return Category(
            id: item['id'], title: item['title'], imageUrl: item['imageUrl']);
      }).toList();

  List<Product> get products => [
        {
          'id': 'Samsung1',
          'title': 'Samsung Galaxy S9',
          'description':
              'Samsung Galaxy S9 G960U 64GB Unlocked GSM 4G LTE Phone w/ 12MP Camera - Midnight Black',
          'price': 50.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/81%2Bh9mpyQmL._AC_SL1500_.jpg',
          'brandId': 'Samsung',
          'categoryId': 'Phones',
          'quantity': 65,
          'isPopular': false
        },
        {
          'id': 'Samsung Galaxy A10s',
          'title': 'Samsung Galaxy A10s',
          'description':
              'Samsung Galaxy A10s A107M - 32GB, 6.2" HD+ Infinity-V Display, 13MP+2MP Dual Rear +8MP Front Cameras, GSM Unlocked Smartphone - Blue.',
          'price': 50.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/51ME-ADMjRL._AC_SL1000_.jpg',
          'brandId': 'Samsung ',
          'categoryId': 'Phones',
          'quantity': 1002,
          'isPopular': false
        },
        {
          'id': 'Samsung Galaxy A51',
          'title': 'Samsung Galaxy A51',
          'description':
              'Samsung Galaxy A51 (128GB, 4GB) 6.5", 48MP Quad Camera, Dual SIM GSM Unlocked A515F/DS- Global 4G LTE International Model - Prism Crush Blue.',
          'price': 50.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61HFJwSDQ4L._AC_SL1000_.jpg',
          'brandId': 'Samsung',
          'categoryId': 'Phones',
          'quantity': 6423,
          'isPopular': true
        },
        {
          'id': 'Huawei P40 Pro',
          'title': 'Huawei P40 Pro',
          'description':
              'Huawei P40 Pro (5G) ELS-NX9 Dual/Hybrid-SIM 256GB (GSM Only | No CDMA) Factory Unlocked Smartphone (Silver Frost) - International Version',
          'price': 900.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/6186cnZIdoL._AC_SL1000_.jpg',
          'brandId': 'Huawei',
          'categoryId': 'Phones',
          'quantity': 3,
          'isPopular': true
        },
        {
          'id': 'iPhone 12 Pro',
          'title': 'iPhone 12 Pro',
          'description':
              'New Apple iPhone 12 Pro (512GB, Gold) [Locked] + Carrier Subscription',
          'price': 1100,
          'imageUrl': 'https://m.media-amazon.com/images/I/71cSV-RTBSL.jpg',
          'brandId': 'Apple',
          'categoryId': 'Phones',
          'quantity': 3,
          'isPopular': true
        },
        {
          'id': 'iPhone 12 Pro Max ',
          'title': 'iPhone 12 Pro Max ',
          'description':
              'New Apple iPhone 12 Pro Max (128GB, Graphite) [Locked] + Carrier Subscription',
          'price': 50.99,
          'imageUrl':
              'https://m.media-amazon.com/images/I/71XXJC7V8tL._FMwebp__.jpg',
          'brandId': 'Apple',
          'categoryId': 'Phones',
          'quantity': 2654,
          'isPopular': false
        },
        {
          'id': 'Hanes Mens ',
          'title': 'Long Sleeve Beefy Henley Shirt',
          'description': 'Hanes Men\'s Long Sleeve Beefy Henley Shirt ',
          'price': 22.30,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/91YHIgoKb4L._AC_UX425_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Clothes',
          'quantity': 58466,
          'isPopular': true
        },
        {
          'id': 'Weave Jogger',
          'title': 'Weave Jogger',
          'description': 'Champion Mens Reverse Weave Jogger',
          'price': 58.99,
          'imageUrl':
              'https://m.media-amazon.com/images/I/71g7tHQt-sL._AC_UL320_.jpg',
          'brandId': 'H&M',
          'categoryId': 'Clothes',
          'quantity': 84894,
          'isPopular': false
        },
        {
          'id': 'Adeliber Dresses for Womens',
          'title': 'Adeliber Dresses for Womens',
          'description':
              'Adeliber Dresses for Womens, Sexy Solid Sequined Stitching Shining Club Sheath Long Sleeved Mini Dress',
          'price': 50.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/7177o9jITiL._AC_UX466_.jpg',
          'brandId': 'H&M',
          'categoryId': 'Clothes',
          'quantity': 49847,
          'isPopular': true
        },
        {
          'id': 'Tanjun Sneakers',
          'title': 'Tanjun Sneakers',
          'description':
              'NIKE Men\'s Tanjun Sneakers, Breathable Textile Uppers and Comfortable Lightweight Cushioning ',
          'price': 191.89,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71KVPm5KJdL._AC_UX500_.jpg',
          'brandId': 'Nike',
          'categoryId': 'Shoes',
          'quantity': 65489,
          'isPopular': false
        },
        {
          'id': 'Training Pant Female',
          'title': 'Training Pant Female',
          'description': 'Nike Epic Training Pant Female ',
          'price': 189.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61jvFw72OVL._AC_UX466_.jpg',
          'brandId': 'Nike',
          'categoryId': 'Clothes',
          'quantity': 89741,
          'isPopular': false
        },
        {
          'id': 'Trefoil Tee',
          'title': 'Trefoil Tee',
          'description': 'Originals Women\'s Trefoil Tee ',
          'price': 88.88,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/51KMhoElQcL._AC_UX466_.jpg',
          'brandId': 'Addidas',
          'categoryId': 'Clothes',
          'quantity': 8941,
          'isPopular': true
        },
        {
          'id': 'Long SleeveWoman',
          'title': 'Long Sleeve woman',
          'description': ' Boys\' Long Sleeve Cotton Jersey Hooded T-Shirt Tee',
          'price': 68.29,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71lKAfQDUoL._AC_UX466_.jpg',
          'brandId': 'Addidas',
          'categoryId': 'Clothes',
          'quantity': 3,
          'isPopular': false
        },
        {
          'id': 'Eye Cream for Wrinkles',
          'title': 'Eye Cream for Wrinkles',
          'description':
              'Olay Ultimate Eye Cream for Wrinkles, Puffy Eyes + Dark Circles, 0.4 fl oz',
          'price': 54.98,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61dwB-2X-6L._SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Beauty & health',
          'quantity': 8515,
          'isPopular': false
        },
        {
          'id': 'Mango Body Yogurt',
          'title': 'Mango Body Yogurt',
          'description':
              'The Body Shop Mango Body Yogurt, 48hr Moisturizer, 100% Vegan, 6.98 Fl.Oz',
          'price': 80.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/81w9cll2RmL._SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Beauty & health',
          'quantity': 3,
          'isPopular': false
        },
        {
          'id': 'Food Intensive Skin',
          'title': 'Food Intensive Skin',
          'description':
              'Weleda Skin Food Intensive Skin Nourishment Body Butter, 5 Fl Oz',
          'price': 50.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71E6h0kl3ZL._SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Beauty & health',
          'quantity': 38425,
          'isPopular': true
        },
        {
          'id': 'Ultra Shea Body Cream',
          'title': 'Ultra Shea Body Cream',
          'description':
              'Bath and Body Works IN THE STARS Ultra Shea Body Cream (Limited Edition) 8 Ounce ',
          'price': 14,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61RkTTLRnNL._SL1134_.jpg',
          'brandId': '',
          'categoryId': 'Beauty & health',
          'quantity': 384,
          'isPopular': false
        },
        {
          'id': 'Soft Moisturizing Crème',
          'title': 'Soft Moisturizing Crème',
          'description':
              'NIVEA Soft Moisturizing Crème- Pack of 3, All-In-One Cream For Body, Face and Dry Hands - Use After Hand Washing - 6.8 oz. Jars',
          'price': 50.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/619pgKveCdL._SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Beauty & health',
          'quantity': 45,
          'isPopular': true
        },
        {
          'id': 'Body Cream Cocoa Butter',
          'title': 'Body Cream Cocoa Butter',
          'description': 'NIVEA Cocoa Butter Body Cream 15.5 Oz',
          'price': 84.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61EsS5sSaCL._SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Beauty & health',
          'quantity': 98432,
          'isPopular': true
        },
        {
          'id': 'Skin Repair Body Lotion',
          'title': 'Skin Repair Body Lotion',
          'description':
              'O\'Keeffe\'s Skin Repair Body Lotion and Dry Skin Moisturizer, Pump Bottle, 12 ounce, Packaging May Vary',
          'price': 890.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71e7ksQ-xyL._AC_SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Beauty & health',
          'quantity': 3811,
          'isPopular': false
        },
        {
          'id': '15 5000 Laptop',
          'title': '15 5000 Laptop',
          'description':
              'Dell Inspiron 15 5000 Laptop Computer: Core i7-8550U, 128GB SSD + 1TB HDD, 8GB RAM, 15.6-inch Full HD Display, Backlit Keyboard, Windows 10 ',
          'price': 630.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/31ZSymDl-YL._AC_.jpg',
          'brandId': 'Dell',
          'categoryId': 'Laptops',
          'quantity': 325,
          'isPopular': true
        },
        {
          'id': 'Business Laptop',
          'title': 'Business Laptop',
          'description':
              'Latest Dell Vostro 14 5490 Business Laptop 14.0-Inch FHD 10th Gen Intel Core i7-10510U Up to 4.9 GHz 16GB DDR4 RAM 512GB M.2 PCIe SSD GeForce MX250 2GB GDDR5 GPU Fingerprint Reader Type-C Win10 Pro ',
          'price': 1220.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71W690nu%2BXL._AC_SL1500_.jpg',
          'brandId': 'Dell',
          'categoryId': 'Laptops',
          'quantity': 81,
          'isPopular': true
        },
        {
          'id': 'Latitude 5411 14" Notebook',
          'title': 'Latitude 5411 14" Notebook',
          'description':
              'Latitude 5411 14" Notebook - Full HD - 1920 x 1080 - Core i7 i7-10850H 10th Gen 2.7GHz Hexa-core (6 Core) - 16GB RAM - 256GB SSD',
          'price': 1220.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/41OfZx5ex3L._AC_.jpg',
          'brandId': 'Dell',
          'categoryId': 'Laptops',
          'quantity': 815,
          'isPopular': false
        },
        {
          'id': 'New Apple MacBook Pro with Apple',
          'title': 'New Apple MacBook Pro with Apple',
          'description':
              'New Apple MacBook Pro with Apple M1 Chip (13-inch, 8GB RAM, 256GB SSD Storage) - Space Gray (Latest Model)',
          'price': 800.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71an9eiBxpL._AC_SL1500_.jpg',
          'brandId': 'Apple',
          'categoryId': 'Laptops',
          'quantity': 885,
          'isPopular': true
        },
        {
          'id': 'Apple MacBook Air',
          'title': 'Apple MacBook Air',
          'description':
              'Apple MacBook Air 13.3" with Retina Display, 1.1GHz Quad-Core Intel Core i5, 16GB Memory, 256GB SSD, Space Gray (Early 2020)',
          'price': 1220.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61wLbRLshAL._AC_SL1200_.jpg',
          'brandId': 'Apple',
          'categoryId': 'Laptops',
          'quantity': 815,
          'isPopular': true
        },
        {
          'id': 'Apple MacBook Progag',
          'title': 'Apple MacBook Pro',
          'description':
              'Apple MacBook Pro MF839LL/A 13.3in Laptop, Intel Core i5 2.7 GHz, 8GB Ram, 128GB SSD ',
          'price': 700.89,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/315CQ1KmlwL._AC_.jpg',
          'brandId': 'Apple',
          'categoryId': 'Laptops',
          'quantity': 815,
          'isPopular': false
        },
        {
          'id': 'Apple MacBook Air',
          'title': 'Apple MacBook Air',
          'description':
              'Apple MacBook Air 13.3" with Retina Display, 1.1GHz Quad-Core Intel Core i5, 8GB Memory, 256GB SSD, Silver (Early 2020)',
          'price': 780.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61QRQHn0jJL._AC_SL1200_.jpg',
          'brandId': 'Apple',
          'categoryId': 'Laptops',
          'quantity': 4455,
          'isPopular': true
        },
        {
          'id': 'Apple 16 MacBook Pro',
          'title': 'Apple 16 MacBook Pro',
          'description':
              'Apple 16 MacBook Pro with Touch Bar, 9th-Gen 8-Core Intel i9 2.3GHz, 16GB RAM, 1TB SSD, AMD Radeon Pro 5500M 8GB, Space Gray, Late 2019 Z0Y0005J7 / Z0Y00006M',
          'price': 800.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61qNHbx9LDL._AC_SL1200_.jpg',
          'brandId': 'Apple',
          'categoryId': 'Laptops',
          'quantity': 885,
          'isPopular': false
        },
        {
          'id': 'Sofa Setttt',
          'title': 'Sofa Set',
          'description': 'Beverly Fine Funiture Sectional Sofa Set, 91A Black ',
          'price': 650.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71P-p2sj6eL._AC_SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Furniture',
          'quantity': 91,
          'isPopular': true
        },
        {
          'id': 'Furniture Classroom with Teacher\'s',
          'title': 'Furniture Classroom with Teacher\'s',
          'description':
              'L.O.L. Surprise! Furniture Classroom with Teacher\'s Pet & 10+ Surprises',
          'price': 120.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71xytsyiHzL._AC_SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Furniture',
          'quantity': 815,
          'isPopular': false
        },
        {
          'id': 'Sofa Couch for Two People',
          'title': 'Sofa Couch for Two People',
          'description':
              'Serta Copenhagen Sofa Couch for Two People, Pillowed Back Cushions and Rounded Arms, Durable Modern Upholstered Fabric, 61" Loveseat, Brown',
          'price': 1220.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/81sBT3voCPL._AC_SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Furniture',
          'quantity': 8100,
          'isPopular': true
        },
        {
          'id': 'Delta Children Plastic Toddler Bed',
          'title': 'Delta Children Plastic Toddler Bed',
          'description':
              'Delta Children Plastic Toddler Bed, Disney Princess + Delta Children Twinkle Galaxy Dual Sided Recycled Fiber Core Toddler Mattress (Bundle)',
          'price': 127.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71Rj3InxQlL._SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Furniture',
          'quantity': 9145,
          'isPopular': false
        },
        {
          'id': 'Outdoor Patio ',
          'title': 'Outdoor Patio ',
          'description':
              'Recaceik 3 Pieces Outdoor Patio Furniture Sets Rattan Chair Wicker Set, with Cushions and Tempered Glass Tabletop, Outdoor Indoor Use Backyard Porch Garden-(Brown)',
          'price': 1224.88,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/81KabJxRvDL._AC_SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Furniture',
          'quantity': 25,
          'isPopular': true
        },
        {
          'id': 'Flash Furniture Nantucket 6 Piece',
          'title': 'Flash Furniture Nantucket 6 Piece',
          'description':
              'Flash Furniture Nantucket 6 Piece Black Patio Garden Set with Table, Umbrella and 4 Folding Chairs',
          'price': 1220.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/81khjDZg5xL._AC_SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Furniture',
          'quantity': 651,
          'isPopular': false
        },
        {
          'id': 'Homall 4 Pieces Patio Outdoor Furniture Sets',
          'title': 'Homall 4 Pieces Patio Outdoor Furniture Sets',
          'description':
              'Homall 4 Pieces Patio Outdoor Furniture Sets, All Weather PE Rattan Wicker Sectional Sofa Modern Manual Conversation Sets with Cushions and Glass Table for Lawn Backyard Garden Poolside（Beige）',
          'price': 1220.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/716-fllmUCL._AC_SL1500_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Furniture',
          'quantity': 594,
          'isPopular': true
        },
        {
          'id': 'Ashley Furniture Signature Design',
          'title': 'Ashley Furniture Signature Design',
          'description':
              'Ashley Furniture Signature Design - Dolante Upholstered Bed - Queen Size - Complete Bed Set in a Box - Contemporary Style Checker - Gray',
          'price': 300.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71QxxtRFFkL._AC_SL1232_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Furniture',
          'quantity': 78,
          'isPopular': false
        },
        {
          'id': 'Apple Watch Series 3',
          'title': 'Apple Watch Series 3',
          'description':
              'Apple Watch Series 3 (GPS, 38mm) - Silver Aluminum Case with White Sport Band',
          'price': 100.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71vCuRn4CkL._AC_SL1500_.jpg',
          'brandId': 'Apple',
          'categoryId': 'Watches',
          'quantity': 156,
          'isPopular': true
        },
        {
          'id': 'Garmin Forerunner 45S',
          'title': 'Garmin Forerunner 45S',
          'description':
              'Garmin Forerunner 45S, 39mm Easy-to-use GPS Running Watch with Coach Free Training Plan Support, Purple',
          'price': 86.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/51EWl3XsiYL._AC_SL1000_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Watches',
          'quantity': 142,
          'isPopular': false
        },
        {
          'id': 'Samsung Galaxy Watch Active 2',
          'title': 'Samsung Galaxy Watch Active 2',
          'description':
              'Samsung Galaxy Watch Active 2 (40mm, GPS, Bluetooth) Smart Watch with Advanced Health Monitoring, Fitness Tracking , and Long Lasting Battery - Silver (US Version)',
          'price': 300.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/51bSW9gjoaL._AC_SL1024_.jpg',
          'brandId': 'Samsung',
          'categoryId': 'Watches',
          'quantity': 167,
          'isPopular': false
        },
        {
          'id': 'Garmin vivoactive 4S',
          'title': 'Garmin vivoactive 4S',
          'description':
              'Garmin vivoactive 4S, Smaller-Sized GPS Smartwatch, Features Music, Body Energy Monitoring, Animated Workouts, Pulse Ox Sensors, Rose Gold with White Band',
          'price': 40.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/51r2LCE3FLL._AC_SL1000_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Watches',
          'quantity': 659,
          'isPopular': false
        },
        {
          'id': 'Patek Philippe World',
          'title': 'Patek Philippe World',
          'description':
              'Patek Philippe World Time Men\'s Watch Model 5131/1P-001',
          'price': 20.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61MVdCYfbOL._AC_UX679_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Watches',
          'quantity': 98,
          'isPopular': false
        },
        {
          'id': 'Bell & Ross Men',
          'title': 'Bell & Ross Men',
          'description':
              'Bell & Ross Men\'s BR-MNUTTOURB-PG Minuteur\' Black Carbon Fiber Dial 18K Rose Gold Tourbillon Watch',
          'price': 33.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/91M50AHRTKL._AC_UX569_.jpg',
          'brandId': 'No brandId',
          'categoryId': 'Watches',
          'quantity': 951,
          'isPopular': false
        },
        {
          'id': 'New Apple Watch Series',
          'title': 'New Apple Watch Series',
          'description':
              'New Apple Watch Series 6 (GPS, 40mm) - Blue Aluminum Case with Deep Navy Sport Band ',
          'price': 400.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71bf9IpGjtL._AC_SL1500_.jpg',
          'brandId': 'Apple',
          'categoryId': 'Watches',
          'quantity': 951,
          'isPopular': false
        },
        {
          'id': 'New Apple Watch SE',
          'title': 'New Apple Watch SE',
          'description':
              'New Apple Watch SE (GPS, 40mm) - Gold Aluminum Case with Pink Sand Sport Band',
          'price': 200.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71JtUMDeBBL._AC_SL1500_.jpg',
          'brandId': 'Apple',
          'categoryId': 'Watches',
          'quantity': 951,
          'isPopular': false
        },
        {
          'id': 'YAMAY Smart Watch 2020 Ver',
          'title': 'YAMAY Smart Watch 2020 Ver',
          'description':
              'YAMAY Smart Watch 2020 Ver. Watches for Men Women Fitness Tracker Blood Pressure Monitor Blood Oxygen Meter Heart Rate Monitor IP68 Waterproof, Smartwatch Compatible with iPhone Samsung Android Phones',
          'price': 183.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61gCtkVYb5L._AC_SL1000_.jpg',
          'brandId': 'Apple',
          'categoryId': 'Watches',
          'quantity': 56,
          'isPopular': true
        },
        {
          'id': 'Samsung Galaxy Watch Active 23',
          'title': 'Samsung Galaxy Watch Active ',
          'description':
              'Samsung Galaxy Watch Active (40MM, GPS, Bluetooth) Smart Watch with Fitness Tracking, and Sleep Analysis - Rose Gold  (US Version)',
          'price': 150.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/61n1c2vnPJL._AC_SL1500_.jpg',
          'brandId': 'Samsung',
          'categoryId': 'Watches',
          'quantity': 78,
          'isPopular': true
        },
        {
          'id': 'Samsung Galaxy Watch 3',
          'title': 'Samsung Galaxy Watch 3',
          'description':
              'Samsung Galaxy Watch 3 (41mm, GPS, Bluetooth) Smart Watch with Advanced Health monitoring, Fitness Tracking , and Long lasting Battery - Mystic Silver (US Version)',
          'price': 184.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/81Iu41zFPwL._AC_SL1500_.jpg',
          'brandId': 'Samsung',
          'categoryId': 'Watches',
          'quantity': 9598,
          'isPopular': true
        },
        {
          'id': 'Samsung Galaxy Watch Active2 ',
          'title': 'Samsung Galaxy Watch Active2 ',
          'description':
              'Samsung Galaxy Watch Active2 (Silicon Strap + Aluminum Bezel) Bluetooth - International (Aqua Black, R820-44mm)',
          'price': 120.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/518qjbbuGZL._AC_SL1000_.jpg',
          'brandId': 'Samsung',
          'categoryId': 'Watches',
          'quantity': 951,
          'isPopular': false
        },
        {
          'id': 'Huawei Watch 2 Sport Smartwatch',
          'title': 'Huawei Watch 2 Sport Smartwatch',
          'description':
              'Huawei Watch 2 Sport Smartwatch - Ceramic Bezel - Carbon Black Strap (US Warranty)',
          'price': 180.99,
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/71yPa1g4gWL._AC_SL1500_.jpg',
          'brandId': 'Huawei',
          'categoryId': 'Watches',
          'quantity': 951,
          'isPopular': true
        }
      ].map((Map<String, dynamic> item) {
        return Product(
            id: item['id'],
            categoryId: item['categoryId'],
            title: item['title'],
            description: item['description'],
            price: double.parse(item['price'].toString()),
            imageUrl: item['imageUrl'],
            brandId: item['brandId'],
            isPopular: item['isPopular'],
            quantity: int.parse(item['quantity'].toString()));
      }).toList();

  List<Brand> get brands => [
        {
          'id': 'Samsung',
          'title': 'Samsung',
          'imageUrl': 'assets/images/samsung.jpg'
        },
        {
          'id': 'Huawei',
          'title': 'Huawei',
          'imageUrl': 'assets/images/Huawei.jpg'
        },
        {
          'id': 'Apple',
          'title': 'Apple',
          'imageUrl': 'assets/images/apple.jpg'
        },
        {
          'id': 'No brandId',
          'title': 'No brandId',
          'imageUrl': 'assets/images/no_photo.jpeg'
        },
        {'id': 'H&M', 'title': 'H & M', 'imageUrl': 'assets/images/h&m.jpg'},
        {'id': 'Nike', 'title': 'Nike', 'imageUrl': 'assets/images/nike.jpg'},
        {
          'id': 'Addidas',
          'title': 'Addidas',
          'imageUrl': 'assets/images/addidas.jpg'
        },
        {'id': 'Dell', 'title': 'Dell', 'imageUrl': 'assets/images/Dell.jpg'},
      ]
          .map((Map<String, dynamic> item) => Brand(
              id: item['id'], title: item['title'], imageUrl: item['imageUrl']))
          .toList();

  List<KBanner> get banners => [
        {'id': 'carousel1', 'title': 'carousel1', 'imageUrl': 'assets/images/carousel1.png'},
        {'id': 'carousel2', 'title': 'carousel2', 'imageUrl': 'assets/images/carousel2.jpeg'},
        {'id': 'carousel3', 'title': 'carousel3', 'imageUrl': 'assets/images/carousel3.jpg'},
        {'id': 'carousel4', 'title': 'carousel4', 'imageUrl': 'assets/images/carousel4.png'},
      ]
          .map((Map<String, dynamic> item) => KBanner(
              id: item['id'], title: item['title'], imageUrl: item['imageUrl']))
          .toList();
}
