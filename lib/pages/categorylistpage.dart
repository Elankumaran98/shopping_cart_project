import 'package:flutter/material.dart';
import 'package:shopping_cart_project/helpers/utils.dart';
import 'package:shopping_cart_project/models/category.dart';
import 'package:shopping_cart_project/widgets/categorycard.dart';

// ignore: must_be_immutable
class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Select a Category :",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return CategoryCard();
                    }))
          ],
        ),
      ),
    );
  }
}
