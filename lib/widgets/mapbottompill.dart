import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_cart_project/helpers/appcolors.dart';
import 'package:shopping_cart_project/helpers/iconhelper.dart';
import 'package:shopping_cart_project/widgets/categoryicon.dart';

class MapBottomPill extends StatelessWidget {
  const MapBottomPill({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset.zero)
          ]),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipOval(
                      child: Image.asset('assets/imgs/cat1_1.png',
                          width: 60, height: 60, fit: BoxFit.cover),
                    ),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: CategoryIcon(
                          color: AppColors.MEATS,
                          iconName: IconFontHelper.MEATS,
                          size: 20,
                          padding: 5,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pork Meat",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text("Sale by Rs"),
                        Text(
                          "2km away",
                          style: TextStyle(color: AppColors.MEATS),
                        )
                      ],
                    )),
                    Icon(
                      Icons.location_pin,
                      color: AppColors.MEATS,
                      size: 50,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/imgs/farmer.jpeg'),
                              fit: BoxFit.cover),
                          border: Border.all(color: AppColors.MEATS, width: 4)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kumaran",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
