import 'package:e_mart/Screens/home_screen/main_home_screen.dart';
import 'package:e_mart/Screens/signup_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../Reusable_widgets/reusable_button_container.dart';
import '../../Reusable_widgets/reusable_textfeild.dart';
import '../../utensils/app_images.dart';
import '../others_login_method.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 120,),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AppImages.logoImage,
                    fit: BoxFit.fill,)),
            ),
            SizedBox(height: 70,),
            ReusableTextFormFeild(text: 'Email', icon: Icon(Icons.email,color: Colors.amber,),),
            SizedBox(height: 10,),
            ReusableTextFormFeild(text: 'Password', icon: Icon(Icons.lock,color: Colors.amber,),),
            SizedBox(height: 40,),
            ReusableButton(text: "Sign Up", onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            },),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Wanna make Account?',
                  style: TextStyle(color: Colors.amber,fontSize: 14),),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()));
                    },
                    child: Text('SignUp',
                      style: TextStyle(color: Colors.amber,fontSize: 16,fontWeight: FontWeight.bold),))
              ],
            ),
            // OthersMethod(),
          ],
        ),
      ),
    ) ;
  }
}
