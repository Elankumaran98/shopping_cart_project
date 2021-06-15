import 'package:flutter/material.dart';
import 'package:shopping_cart_project/helpers/appcolors.dart';
import 'package:shopping_cart_project/helpers/iconhelper.dart';
import 'package:shopping_cart_project/widgets/iconfont.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset('assets/imgs/of_main_bg.png',
                        fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: ClipOval(
                          child: Container(
                            width: 180,
                            height: 180,
                            color: AppColors.MAIN_COLOR,
                            alignment: Alignment.center,
                            child: IconFont(
                                iconName: IconFontHelper.MAIN_LOGO,
                                color: Colors.white,
                                size: 130),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Text('Welcome',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 40),
                      Text('Fresh Products.\nHealthy On time ',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      SizedBox(height: 40),
                    ],
                  ),
                )
              ],
            )));
  }
}
