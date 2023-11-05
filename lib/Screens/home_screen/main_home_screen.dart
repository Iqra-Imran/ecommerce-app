import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:e_mart/Reusable_widgets/reusable_tabbar_data.dart';
import 'package:e_mart/utensils/app_images.dart';
import 'package:flutter/material.dart';

import '../../Reusable_widgets/single_product_widget.dart';
import '../../data/home_page_product_details.dart';
import 'home_screen_full_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  AppBar buildAppBar() {
    return AppBar(
      bottom: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 20),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: Colors.black,
        labelColor: Colors.amber,
        tabs: [
          Text(
            'All',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Clothing',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            'Shoes',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Accesories',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      title: Center(
        child: Column(
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              'Shopping',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.filter)),
        IconButton(onPressed: () {}, icon: Icon(Icons.search))
      ],
    );
  }

  Widget advertisment() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 170,
        child: Carousel(
          images: [
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AppImages.animationBannerOne,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AppImages.animationBannerTwo,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AppImages.animationBannerThree,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AppImages.animationBannerFour,
                  )),
            ),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          showIndicator: false,
        ),
      ),
    );
  }

  Widget TrendingItems(
      {required String productImage,
      required String productName,
      required String productModel,
      required double productPrice}) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 10, right: 8, bottom: 15),
      height: 65,
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide.none,
                ),
                child: Image.asset(productImage),
              )),
          Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      productModel,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.amber,
                      ),
                    )
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: MaterialButton(
              color: Colors.amber,
              height: 45,
              onPressed: () {},
              elevation: 0,
              child: Text(
                "\$ $productPrice",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.7),
                side: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(children: [
          SizedBox(
            height: 10,
          ),
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              advertisment(),
              HomeScreenFullData(
                labelText: 'New Arrivals',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: GridView.builder(
                    itemCount: sigleProductData.length,
                    primary: true,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      var data = sigleProductData[index];
                      return SingleProductWidget(
                        onPressed: () {},
                        productName: data.productName,
                        productImage: data.productImage,
                        productModel: data.productModel,
                        productOldPrice: data.productOldPrice,
                        productPrice: data.productPrice,
                      );
                    }),
              ),
              Divider(
                endIndent: 10,
                indent: 10,
              ),
              HomeScreenFullData(
                labelText: "Whats Trending",
              ),
              TrendingItems(
                productName: "VTA-Bags",
                productImage: AppImages.HoddySecImage.assetName,
                productModel: "Bagpacks",
                productPrice: 45,
              ),
              TrendingItems(
                productName: "VTA-Bags",
                productImage: AppImages.shortsFiveImg.assetName,
                productModel: "Bagpacks",
                productPrice: 70,
              ),
              TrendingItems(
                productName: "VTA-Bags",
                productImage: AppImages.shoesForthImg.assetName,
                productModel: "Bagpacks",
                productPrice: 22,
              ),
              HomeScreenFullData(
                labelText: "History",
              ),
              Container(
                height: 240,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: true,
                    itemCount: sigleProductData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context, index) {
                      var data = sigleProductData[index];
                      return SingleProductWidget(
                        onPressed: () {},
                        productName: data.productName,
                        productImage: data.productImage,
                        productModel: data.productModel,
                        productOldPrice: data.productOldPrice,
                        productPrice: data.productPrice,
                      );
                    }),
              ),
            ],
          ),
          ReusableTabBar(
            productData: colothsData,
          ),
          ReusableTabBar(productData: shoesData),
          ReusableTabBar(productData: accessoriesData),
        ]),
      ),
    );
  }
}
