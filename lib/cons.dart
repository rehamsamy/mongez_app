import 'package:flutter/material.dart';
import 'package:mongez_app/model/ads_model.dart';

import 'model/category_model.dart';
import 'model/store_model.dart';
// import 'package:zagel_app/models/category_model.dart';
// import 'package:zagel_app/models/company_model.dart';
// import 'package:zagel_app/models/service_model.dart';
// import 'package:zagel_app/widget/CategoryItem.dart';
//
// import 'models/ads_model.dart';
//
 class Cons {
  static List<CategoryModel> categoriesList = [
    new CategoryModel(
        'https://www.almaal.org/wp-content/uploads/2020/02/%D9%83%D9%8A%D9%81-%D8%AA%D8%A8%D8%AF%D8%A3-%D8%A7%D9%84%D8%A7%D8%B3%D8%AA%D8%AB%D9%85%D8%A7%D8%B1-%D8%A7%D9%84%D8%B9%D9%82%D8%A7%D8%B1%D9%8A-%D8%A8%D8%B1%D8%A3%D8%B3-%D9%85%D8%A7%D9%84-%D8%B5%D8%BA%D9%8A%D8%B1-2021-%D9%83%D9%8A%D9%81-%D8%AA%D8%A8%D8%AF%D8%A3-%D8%A7%D9%84%D8%A7%D8%B3%D8%AA%D8%AB%D9%85%D8%A7%D8%B1-%D8%A7%D9%84%D8%B9%D9%82%D8%A7%D8%B1%D9%8A-%D8%A8%D8%B1%D8%A3%D8%B3-%D9%85%D8%A7%D9%84-%D8%B5%D8%BA%D9%8A%D8%B1-2021-2.jpg',
        ' قسم - عقاارت'),
    new CategoryModel('https://cnn-arabic-images.cnn.io'
        '/cloudinary/image/upload/w_1920,c_scale,q_auto/cnnarabic/2021/03/18/images/180328.jpg',
        ' قسم - سيارات'),
    new CategoryModel(
        'https://mediaaws.almasryalyoum.com/news/large/2021/03/13/1486052_0.jpg',
        '  قسم - خدمات '),
    new CategoryModel(
        'https://i2.wp.com/thewriteress.com/wp-content/uploads/2021/02/Channels-for-learning-kids-on-Youtube.jpg?fit=1024%2C667&ssl=1',
        ' قسم - تعليم  '),
    new CategoryModel(
        'https://www.ibta-arabia.com/wp-content/uploads/2018/07/complaint-stamp-1110x550.jpg',
        'قسم - شكاوي '),
    new CategoryModel(
        'https://tijaratuna.com/wp-content/uploads/2020/12/%D8%A7%D8%AC%D8%B1%D8%A7%D8%A1%D8%A7%D8%AA-%D8%AA%D8%A3%D8%B3%D9%8A%D8%B3-%D8%B4%D8%B1%D9%83%D8%A9-%D9%85%D9%82%D8%A7%D9%88%D9%84%D8%A7%D8%AA-%D9%81%D9%8A-%D8%A7%D9%84%D8%B9%D8%B1%D8%A7%D9%82-630x300.jpg',
        'قسم - مقاولات'),
    new CategoryModel(
        'https://modo3.com/thumbs/fit630x300/128021/1479505579/%D9%83%D9%8A%D9%81%D9%8A%D8%A9_%D8%A7%D9%84%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%B9%D9%84%D9%89_%D8%B5%D8%AD%D8%A9_%D8%A7%D9%84%D8%A5%D9%86%D8%B3%D8%A7%D9%86.jpg',
        'قسم - صحة'),
  ];


  static List<AdsModel> adsList=[
    AdsModel('https://www.fatakat-a.com/wp-content/uploads/161122100611902.jpg', '  10,000,000 جنيه'),
    AdsModel('https://www.photosmix.com/wp-content/uploads/2017/10/%D8%B5%D9%88%D8%B1-%D8%AF%D9%8A%D9%83%D9%88%D8%B1-%D8%B5%D9%88%D8%B1-%D8%AF%D9%8A%D9%83%D9%88%D8%B1%D8%A7%D8%AA-2020-17.jpg', '  10,000,000 جنيه'),
    AdsModel('https://www.mexatk.com/wp-content/uploads/2016/03/%D8%AA%D8%B4%D8%B7%D9%8A%D8%A8-%D9%81%D9%84%D9%84-1.jpg', '  10,000,000 جنيه'),
    AdsModel('https://www.egy.malimalk.com/wp-content/uploads/2021/08/9.jpg', '  10,000,000 جنيه'),
    AdsModel('https://www.muhtwa.com/wp-content/uploads/%D8%B5%D9%88%D8%B1-%D8%AF%D9%8A%D9%83%D9%88%D8%B1%D8%A7%D8%AA-%D8%B4%D9%82%D9%82-%D8%B1%D9%88%D8%B3%D9%8A%D8%A9-20226.jpg', '  10,000,000 جنيه'),
    AdsModel('https://4.bp.blogspot.com/-EPKzAMQaubs/WQTyj3WfLrI/AAAAAAAAzAs/FtD0of8SYUcU6F4cz0qnxBJJQzUhat-qACLcB/s400/1105763.jpg', '  10,000,000 جنيه'),
    AdsModel('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_iYNaZ3IAHZ0kXYKByik4kAH3X9mUm__5JUymLi0qpiCnZys28gTOxoK0E6P4K0GUMpQ&usqp=CAU', '  10,000,000 جنيه'),
    AdsModel('https://i.servimg.com/u/f23/20/14/58/75/tm/img-2593.jpg', '  10,000,000 جنيه'),
    AdsModel('https://elaanatcom.com/src/images/adsx500_1592274490.jpg', '  10,000,000 جنيه'),
    AdsModel('https://upload.3dlat.com/uploads/13629252561.jpg', '  10,000,000 جنيه'),
    AdsModel('https://shababeekdubai.com/blog/wp-content/uploads/2021/01/%D8%B4%D9%82%D9%82-%D9%85%D9%81%D8%B1%D9%88%D8%B4%D8%A9-%D9%84%D9%84%D8%A7%D9%8A%D8%AC%D8%A7%D8%B1-%D9%81%D9%8A-%D8%A3%D8%A8%D9%88%D8%B8%D8%A8%D9%8A-2.jpg', '  10,000,000 جنيه'),
    AdsModel('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToMaF8xmDH7NIkqHgyLhlp8SFaROiyXA0m1MsbAx7s1CONnIcAsCdRA89sFkfoglPTogo&usqp=CAU', '  10,000,000 جنيه'),




  ];

  static List<StoreModel> storesList=[
    StoreModel('assets/images/store1.png', 'Store1', 3,'سيارات ومركبات -القاهره-الاعلانات 32',Icons.cast_connected_rounded),
    StoreModel('assets/images/store2.png', 'One Way',4, 'عقارات ومقاولات -القاهره-الاعلانات 32',Icons.photo_camera),
    StoreModel('assets/images/store3.png', 'Store1', 5,'تليفزيونات واجهزه -القاهره-الاعلانات 32',Icons.motion_photos_on_sharp),
    StoreModel('assets/images/store4.png', 'Store1', 1,'محلات -القاهره-الاعلانات 32',Icons.send_to_mobile)
  ];



  static List<String> images = [
    'assets/images/store1.png',
    'assets/images/store2.png',
    'assets/images/store3.png',
    'assets/images/store4.png'];


  static Color primary_color = Colors.white;
  static Color accent_color = Colors.white;


  static void buildColors(BuildContext ctx) {
    primary_color = Theme
        .of(ctx)
        .primaryColor;
    accent_color = Theme
        .of(ctx)
        .accentColor;
  }
//stic Widget getAppbar(String title);


}