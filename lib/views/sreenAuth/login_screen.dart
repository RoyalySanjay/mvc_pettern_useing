import 'package:flutter/material.dart';
import 'package:mvc_apps/views/sreenAuth/auth_widgets.dart';
import 'package:mvc_apps/views/sreenAuth/register_screen.dart';
import 'package:mvc_apps/views/utils/sizes.dart';

import '../utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    view.appTextView("Welcome ",color: Colors.white,fontSize: boldFontSize),
                    view.appTextView("Glad to see you!", fontSize: bold1FontSize,color: Colors.white),
                  ],
                ),
              ),

              SizedBox(height: AppSize(context: context).getHegiht/30,),
              view.textFiledView(TextEditingController(), "Email Adderss"),
              view.textFiledView(TextEditingController(), "Password"),

              Align(
                alignment: Alignment.centerRight,
                child: view.appTextView("Forgot Password?"),
              ),
              SizedBox(
                height: AppSize(context: context).getHegiht / 26,
              ),

              view.appButtonView("Login", onPressed: () {}),

              SizedBox(
                height: AppSize(context: context).getHegiht / 26,
              ),

              view.dividerWithText('Or Login with'),
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
                  view.appTextView("Already have an account?",fontSize: 16,color: Colors.black),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterScreen()),
                      );
                    },
                      child: view.appTextView("Sign Up Now")),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
