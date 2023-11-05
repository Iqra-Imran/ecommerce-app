import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ReusableButton({super.key,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 300,
        child: Align(alignment: Alignment.center,child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(35),
        ),
      ),
    );
  }
}
