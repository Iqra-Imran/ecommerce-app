import 'package:e_mart/utensils/app_images.dart';
import 'package:flutter/material.dart';

class OthersMethod extends StatelessWidget {
  const OthersMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Or Sign in with",style: TextStyle(color: Colors.black),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                  onPressed: (){},
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image(image: AppImages.logoImage,)),
            ],
          ),
        ],
      ),
    );
  }
}
