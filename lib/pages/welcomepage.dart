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
              child: Image.asset(
                '/assets/imgs/of_main_bg.png',
                fit: BoxFit.cover,
              ),
            )),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        color: AppColors.MAIN_COLOR,
                        alignment: Alignment.center,
                        child: IconFont(iconName: IconFontHelper.MAIN_LOGO),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
