import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mongez_app/controller/products_controller.dart';
import 'package:mongez_app/model/store_model.dart';
import 'package:mongez_app/widget/CategoryItem.dart';
import 'package:mongez_app/widget/ads_item_widget.dart';
import 'package:mongez_app/widget/app_drawer.dart';
import 'package:mongez_app/widget/bottom_navigation.dart';
import 'package:mongez_app/widget/store_widget.dart';

import '../cons.dart';

class MainPageScreen extends StatefulWidget {
  static String route = '/main';

  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _tabController;
  ProductController _productController = Get.find();
  int index = 0;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              buildAppBar(context),
            ];
          },
          body: TabBarView(
            children: [
              buildAdsGrid(),
              buildCatGrid(),
              buildStoreList(),
              Text('1'),
            ],
            controller: _tabController,
          ),
        ),
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SliverAppBar(
        backgroundColor: Colors.white,
        expandedHeight: MediaQuery.of(context).size.height * 0.3,
        pinned: false,
        floating: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_important_rounded,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
              icon: Icon(
                Icons.drag_indicator,
                color: Colors.black,
              )),
        ],
        flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.all(5),
            background: LayoutBuilder(
              builder: (ctx, cons) => GetBuilder<ProductController>(
                builder: (_) => Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            padding: EdgeInsets.all(2),
                            height: cons.maxHeight * 0.19,
                            color: Colors.white,
                            child: RichText(
                              text: TextSpan(
                                //   style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'السوق',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 20)),
                                  TextSpan(
                                      text: ' المفتوح!',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 18)),
                                ],
                              ),
                            )),
                      ),
                    ),
                    Expanded(flex: 1, child: buildSearchAppbarContainer()),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        child: TabBar(
                          onTap: (index) {
                            _productController.changeSelectedTab(index);
                            _productController.update();
                          },
                          isScrollable: true,
                          controller: _tabController,
                          indicatorColor: Cons.accent_color,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: Colors.black,
                          labelStyle: TextStyle(fontSize: 20),
                          indicatorPadding: EdgeInsets.only(bottom: 3),
                          tabs: [
                            Tab(
                              child: Text(
                                'الاعلانات',
                                style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        _productController.selectedTabIndex == 0
                                            ? Cons.accent_color
                                            : Colors.black),
                              ),
                            ),
                            Tab(
                              child: Text('الاقسام',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color:
                                          _productController.selectedTabIndex ==
                                                  1
                                              ? Cons.accent_color
                                              : Colors.black)),
                            ),
                            Tab(
                              child: Text('متاجر',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color:
                                          _productController.selectedTabIndex ==
                                                  2
                                              ? Cons.accent_color
                                              : Colors.black)),
                            ),
                            Tab(
                              child: Text('شوهد',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color:
                                          _productController.selectedTabIndex ==
                                                  3
                                              ? Cons.accent_color
                                              : Colors.black)),
                            ),
                          ],
                        ),
                      ),
                    )

                    //           Hero(
                    //   tag: 'product.id',
                    //   child: Image.asset('assets/images/store1.png',fit: BoxFit.cover,),
                    // ),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  buildAdsGrid() {
    return Container(
      margin: EdgeInsets.all(5),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'عقارات للبيع',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Cons.accent_color),
                child: Center(
                  child: Text(
                    'المزيد',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                //  scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    childAspectRatio: 8 / 9,
                    crossAxisCount: 3),
                itemCount: Cons.adsList.length,
                itemBuilder: (ctx, inx) {
                  return AdsItemWidget(Cons.adsList[inx]);
                }),
          ),
        ],
      ),
    );
  }

  buildCatGrid() {
    return GridView.builder(
        shrinkWrap: true,
        //  scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            childAspectRatio: 8 / 9,
            crossAxisCount: 2),
        itemCount: Cons.categoriesList.length,
        itemBuilder: (ctx, inx) {
          return CategoryItem(Cons.categoriesList[inx]);
        });
  }

  buildStoreList() {
    return Container(
      // margin: EdgeInsets.all(5),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
            width: double.infinity,
            child: RaisedButton(
              color: Cons.accent_color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: Text(
                ' +  أضف متجرك الان',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
          buildSearchContainer(),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                //  scrollDirection: Axis.vertical,
                itemCount: Cons.storesList.length,
                itemBuilder: (ctx, inx) {
                  return StoreWidget(Cons.storesList[inx]);
                }),
          ),
        ],
      ),
    );
  }

  buildSearchContainer() {
    return Container(
      color: Colors.grey.shade50,
      height: 70,
      padding: EdgeInsets.all(10),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              hintText: '  ابحث عن متاجر ',
              suffixIcon: Icon(Icons.search)),
        ),
      ),
    );
  }

  buildSearchAppbarContainer() {
    return Container(
      color: Colors.grey.shade50,
      height: 60,
      padding: EdgeInsets.all(10),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            hintText: '  ابحث عن متاجر ',
            prefixIcon: Icon(Icons.search),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(6), // Image radius
                  child: Image.asset(
                    'assets/images/store1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
