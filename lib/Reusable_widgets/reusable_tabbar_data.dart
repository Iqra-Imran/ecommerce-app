import 'package:e_mart/Reusable_widgets/single_product_widget.dart';
import 'package:flutter/cupertino.dart';

import '../data/home_page_product_details.dart';
import '../model/product_model.dart';

class ReusableTabBar extends StatelessWidget {
  final List<ProductModel> productData;
  ReusableTabBar({required this.productData});


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        primary: true,
        itemCount: sigleProductData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context,index){
          var data = productData[index];
          return SingleProductWidget(
            onPressed: () {},
            productName: data.productName,
            productImage: data.productImage,
            productModel: data.productModel,
            productOldPrice: data.productOldPrice,
            productPrice: data.productPrice,
          );
        }
    ) ;
  }
}
