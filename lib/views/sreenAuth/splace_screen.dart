import 'package:flutter/material.dart';
import 'package:mvc_apps/views/sreenAuth/auth_widgets.dart';
import 'package:mvc_apps/views/sreenAuth/login_screen.dart';
import 'package:mvc_apps/views/sreenAuth/register_screen.dart';
import 'package:mvc_apps/views/utils/colors.dart';
import 'package:mvc_apps/views/utils/sizes.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  Widget build(BuildContext context) {
    var view = AuthWidget(context: context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: bgColorAllScreen,
        ),
        child: Column(
          children: [
            SizedBox(height: AppSize(context: context).getHegiht / 3

            ),
            SizedBox(
              child: Image.network("https://cdn-icons-png.flaticon.com/128/300/300221.png",
              width: 50,),
            ),
            SizedBox(height: AppSize(context: context).getHegiht / 20
            ),
            view.appTextView("PixelPro Digital", fontSize: bold1FontSize),
            SizedBox(height: AppSize(context: context).getHegiht / 40),
            view.appButtonView("Login", onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            }),
            SizedBox(height: AppSize(context: context).getHegiht / 40),
            view.appButtonView("Sign Up", onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterScreen()),
              );
            }),
            SizedBox(height: AppSize(context: context).getHegiht / 5),
            view.appTextView("Continue as a guest", fontSize: normalFontSize),

          ],
        ),
      ),
    );
  }
}
