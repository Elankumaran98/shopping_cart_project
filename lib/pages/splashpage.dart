import 'package:flutter/material.dart';
import 'package:shopping_cart_project/helpers/appcolors.dart';
import 'package:shopping_cart_project/helpers/iconhelper.dart';
import 'package:shopping_cart_project/widgets/iconfont.dart';

// ignore: must_be_immutable
class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({this.duration, this.goToPage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });
    return Scaffold(
      body: Container(
        color: AppColors.MAIN_COLOR,
        alignment: Alignment.center,
        child: IconFont(
          color: Colors.white,
          iconName: IconFontHelper.LOGO,
          size: 100,
        ),
      ),
    );
  }
}
