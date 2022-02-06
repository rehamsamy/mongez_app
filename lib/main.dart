import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mongez_app/controller/products_controller.dart';
import 'package:mongez_app/screen/MyHomePage.dart';

import 'cons.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
ProductController productController=Get.put(ProductController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Cons.buildColors(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 213, 177, 57),
        unselectedWidgetColor: Color.fromARGB(255, 123, 196, 229),
        // rgba(228,190,55,255)
        accentColor: Color.fromARGB(255, 123, 196, 229),
        canvasColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home:  MainPageScreen(),
    );
  }
}
