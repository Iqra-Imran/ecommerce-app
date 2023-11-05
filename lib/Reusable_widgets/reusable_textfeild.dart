import 'package:flutter/material.dart';

class ReusableTextFormFeild extends StatelessWidget {
  String text;
  Icon icon;
   ReusableTextFormFeild({super.key,required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 13),
      child: TextFormField(
        style: TextStyle(fontSize: 10,height: 0),
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: Colors.amber),
          prefixIcon: icon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,),
            borderRadius: BorderRadius.circular(35),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide(color: Colors.grey)
          )

        ),
      ),
    );
  }
}
