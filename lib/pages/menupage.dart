import 'package:flutter/material.dart';
import 'package:shopping_cart_project/helpers/appcolors.dart';
import 'package:shopping_cart_project/helpers/iconhelper.dart';
import 'package:shopping_cart_project/helpers/utils.dart';
import 'package:shopping_cart_project/models/menucontent.dart';
import 'package:shopping_cart_project/pages/categorylistpage.dart';
import 'package:shopping_cart_project/widgets/iconfont.dart';
import 'package:shopping_cart_project/widgets/mainappbar.dart';
import 'package:shopping_cart_project/widgets/themebutton.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<MenuContent> _content = Utils.getMenu();
  int pageIndex = 0;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: missing_required_param
        appBar: PreferredSize(
          child: MainAppBar(),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                  child: PageView(
                controller: _controller,
                onPageChanged: (int page) {
                  setState(() {
                    pageIndex = page;
                  });
                },
                children: List.generate(
                    _content.length,
                    (index) => Container(
                        padding: EdgeInsets.all(40),
                        margin: EdgeInsets.only(
                            left: 40, right: 40, top: 40, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.MAIN_COLOR.withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: Offset.zero)
                            ]),
                        child: Column(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: IconFont(
                                        color: AppColors.MAIN_COLOR,
                                        iconName: IconFontHelper.LOGO,
                                        size: 40),
                                  ),
                                  Image.asset(
                                      'assets/imgs/${_content[index].img}.png'),
                                  SizedBox(height: 40),
                                  Text(_content[index].message,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: AppColors.MAIN_COLOR,
                                          fontSize: 25))
                                ],
                              ),
                            ),
                            Visibility(
                              visible: index == _content.length - 1,
                              child: ThemeButton(
                                onClick: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryListPage()));
                                },
                                labal: 'Login Now!',
                                color: AppColors.DARK_GREEN,
                                highlight: AppColors.DARKER_GREEN,
                              ),
                            )
                          ],
                        ))),
              )),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      _content.length,
                      (index) => GestureDetector(
                            onTap: () {
                              _controller.animateTo(
                                  MediaQuery.of(context).size.width * index,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.MAIN_COLOR,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      width: 6,
                                      color: pageIndex == index
                                          ? AppColors.LIGHTER_GREEN
                                          : Theme.of(context).canvasColor)),
                            ),
                          ))),
              SizedBox(height: 20),
              ThemeButton(
                  onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoryListPage()));
                  },
                  labal: 'Saltar Menu')
            ],
          ),
        ));
  }
}
