import 'package:flutter/material.dart';
import 'package:shopping_cart_project/helpers/appcolors.dart';

// ignore: must_be_immutable
class MapUserBadge extends StatelessWidget {
  bool isSelected;
  MapUserBadge({this.isSelected});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      decoration: BoxDecoration(
          color: this.isSelected ? AppColors.MAIN_COLOR : Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset.zero)
          ]),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage('assets/imgs/me.jpg'), fit: BoxFit.cover),
                border: Border.all(
                    color:
                        this.isSelected ? Colors.white : AppColors.MAIN_COLOR,
                    width: 1)),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Elankumaran.S",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: this.isSelected ? Colors.white : Colors.grey)),
              Text(
                "My Location",
                style: TextStyle(
                    color:
                        this.isSelected ? Colors.white : AppColors.MAIN_COLOR),
              )
            ],
          )),
          Icon(
            Icons.location_pin,
            color: this.isSelected ? Colors.white : AppColors.MAIN_COLOR,
            size: 40,
          )
        ],
      ),
    );
  }
}
