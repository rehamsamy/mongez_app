import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mongez_app/controller/products_controller.dart';

import '../cons.dart';

class BottomNav extends StatelessWidget {
  ProductController _productController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (_) =>
          Container(
            height: 65,
            child: BottomAppBar(
              color: Cons.primary_color,
              child: new Theme(
                data: Theme.of(context).copyWith(
                    canvasColor: Colors.white,
                    primaryColor: Colors.red,
                    textTheme: Theme
                        .of(context)
                        .textTheme
                        .copyWith(
                        caption: new TextStyle(color: Colors.yellow))),
                // sets the inactive color of the `BottomNavigationBar`
                child: new BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _productController.selectedTabIndex,
                  selectedItemColor: Cons.primary_color,
                  onTap: (ind) {
                    _productController.changeSelectedTab(ind);
                    _productController.update();
                    print('.....   ' +
                        _productController.selectedTabIndex.toString());
                  },
                  items: [
                    new BottomNavigationBarItem(
                        icon: new Icon(
                          Icons.home , color: checkBottomColor(0,context),),
                        title: new Text('الرئيسيه'.tr,
                            style: TextStyle(color: checkBottomColor(0,context),))
                    ),
                    new BottomNavigationBarItem(
                      icon: new Icon(
                          Icons.message_rounded, color: checkBottomColor(1,context)),
                      title: new Text('دردشاتي'.tr,
                          style: TextStyle(color: checkBottomColor(1,context))),
                    ),
                    new BottomNavigationBarItem(
                      icon: new Icon(Icons.add_alert_sharp, color: checkBottomColor(2,context)),
                      title: new Text('اضف اعلان'.tr,
                          style: TextStyle(color: checkBottomColor(2,context))),
                    ),
                    new BottomNavigationBarItem(
                      icon: new Icon(Icons.send_to_mobile, color: checkBottomColor(3,context)),
                      title: new Text('اعلناتي'.tr,
                          style: TextStyle(color: checkBottomColor(3,context))),
                    ),
                    new BottomNavigationBarItem(
                      icon: new Icon(Icons.person, color: checkBottomColor(4,context)),
                      title: new Text('حسابي'.tr,
                          style: TextStyle(color: checkBottomColor(4,context))),
                    ),
                  ],
                ),
              ),

              shape: CircularNotchedRectangle(),
              clipBehavior: Clip.antiAlias,
              notchMargin: 6.0,
            ),
          ),
    );
  }

  checkBottomColor(int index,BuildContext context){
    return _productController.selectedTabIndex==index?Theme.of(context).primaryColor:Colors.black;
  }

}