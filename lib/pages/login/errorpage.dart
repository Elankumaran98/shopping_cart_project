import 'package:flutter/material.dart';
import 'package:shopping_cart_project/helpers/appcolors.dart';

class ErrorPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Icon(Icons.error),
          Text(
            "Something went WRONG!",
            style: TextStyle(
                color: AppColors.MAIN_COLOR, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}