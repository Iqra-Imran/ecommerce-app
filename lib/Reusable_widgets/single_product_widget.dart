import 'package:flutter/material.dart';

class SingleProductWidget extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productModel;
  final double productPrice;
  final double productOldPrice;
  final VoidCallback onPressed;

  SingleProductWidget({
    required this.productName,
    required this.productImage,
    required this.productModel,
    required this.productPrice,
    required this.productOldPrice,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container(
              width: double.infinity,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image:AssetImage(productImage),
                  fit: BoxFit.cover,

                ),
              ),
              child: IconButton(onPressed: () {},
                  icon: Icon(Icons.favorite, size: 30, color: Colors.amber,)),
            )
            ),
            Expanded(
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text(productModel,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.amber,
                        ),
                      ),
                      Row(
                        children: [
                          Text("\$ $productPrice",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text("\$ $productOldPrice",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
