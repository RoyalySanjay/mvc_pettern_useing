import 'package:flutter/material.dart';
import 'package:mvc_apps/views/sreenAuth/auth_widgets.dart';
import 'package:mvc_apps/views/utils/sizes.dart';

import '../utils/colors.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var view = AuthWidget(context: context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: bgColorAllScreen,
          ),
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              SizedBox(
                height: AppSize(context: context).getHegiht / 16,
              ),
              Center(
                child: Column(
                  children: [
                    view.appTextView("Create Account",color: Colors.white,fontSize: boldFontSize),
                    view.appTextView("to get started now!", fontSize: bold1FontSize,color: Colors.white),
                  ],
                ),
              ),

              SizedBox(height: AppSize(context: context).getHegiht/30,),
              view.textFiledView(TextEditingController(), "Email Adderss"),
              view.textFiledView(TextEditingController(), "Password"),
              view.textFiledView(TextEditingController(), "Comfrom Password"),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: view.appNormalTextView("Forgot Password?"),
              // ),
              SizedBox(
                height: AppSize(context: context).getHegiht / 26,
              ),

              view.appButtonView("Sign Up", onPressed: () {}),

              SizedBox(
                height: AppSize(context: context).getHegiht / 26,
              ),

                 view.dividerWithText('Or Sign Up with'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    view.card("https://cdn-icons-png.flaticon.com/128/300/300221.png", onPressed: (){}),
                    view.card("https://cdn-icons-png.flaticon.com/128/4922/4922978.png", onPressed: (){}),
                  ],
                ),
               SizedBox(height: AppSize(context: context).getHegiht/10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  view.appTextView("Already have an account?",fontSize: normalFontSize,color: blackcolor),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                      child: view.appTextView("Login Now")),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
