import 'package:flutter/material.dart';
import 'package:shopping_cart_project/helpers/iconhelper.dart';
import 'package:shopping_cart_project/widgets/iconfont.dart';

// ignore: must_be_immutable
class MainAppBar extends StatefulWidget {
  Color themecolor;
  bool showProfilePic;

  MainAppBar({this.themecolor, this.showProfilePic});

  @override
  _MainAppBarState createState() => _MainAppBarState();

  // ignore: non_constant_identifier_names
  Size get PreferredSize => new Size.fromHeight(80);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: IconFont(
          iconName: IconFontHelper.LOGO,
          color: widget.themecolor,
          size: 40,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: widget.themecolor),
      actions: [
        Opacity(
          opacity: widget.showProfilePic ? 1 : 0,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset('assets/imgs/me.jpg'),
            ),
          ),
        )
      ],
    );
  }
}
