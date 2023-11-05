import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenFullData extends StatelessWidget {
  // const HomeScreenFullData({super.key});
final String labelText;
  HomeScreenFullData({required this.labelText});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(labelText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),),
        Text('Show All',style: TextStyle(
          color: Colors.amber,
          fontSize: 15,
        ),)
      ],
    )
      ,);
  }
}
