import 'package:e_mart/Reusable_widgets/reusable_button_container.dart';
import 'package:e_mart/Reusable_widgets/reusable_textfeild.dart';
import 'package:e_mart/Screens/home_screen/main_home_screen.dart';
import 'package:e_mart/Screens/login_screen/login_screen.dart';
import 'package:e_mart/svg_images/svg_images.dart';
import 'package:e_mart/utensils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Reusable_widgets/reusable_app_logo_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
Widget BottomPart({required Widget? child,required VoidCallback? onPressed}){
 return  Padding(
   padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
   child: MaterialButton(onPressed: onPressed,
     shape: OutlineInputBorder(
       borderSide: BorderSide(width: 0.5),borderRadius: BorderRadius.circular(5),
     ),
     child: child,
   ),
 );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AppImages.logoImage,
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            ReusableTextFormFeild(
              text: 'First Name',
              icon: Icon(
                Icons.person,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ReusableTextFormFeild(
              text: 'Last Name',
              icon: Icon(
                Icons.person,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ReusableTextFormFeild(
              text: 'Email',
              icon: Icon(
                Icons.email,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ReusableTextFormFeild(
              text: 'Password',
              icon: Icon(
                Icons.lock,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ReusableTextFormFeild(
              text: 'Confirm Password',
              icon: Icon(
                Icons.lock,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ReusableButton(text: "Sign Up", onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            },),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Already have account?',
                  style: TextStyle(color: Colors.amber, fontSize: 14),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            SizedBox(height: 5,),
            Text('Or Signin with'),
            SizedBox(height: 5,),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     BottomPart(
            //       onPressed: (){},
            //       child: SvgPicture.asset(SvgImages.google,width: 45,),),
            //     BottomPart(
            //       onPressed: (){},
            //       child: SvgPicture.asset(SvgImages.facebook,width: 45,),),
            //     BottomPart(
            //       onPressed: (){},
            //       child: SvgPicture.asset(SvgImages.twitter,width: 45,),),
            //   ],
            // ),

          ],
        ),
      ),
    );
  }
}
