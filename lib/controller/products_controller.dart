import 'package:get/state_manager.dart';

class ProductController extends GetxController{
  int selectedTabIndex=0;


  void   changeSelectedTab(int index){
    selectedTabIndex=index;
    update();
  }
}