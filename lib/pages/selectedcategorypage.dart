import 'package:flutter/material.dart';
import 'package:shopping_cart_project/models/category.dart';
import 'package:shopping_cart_project/pages/detailspage.dart';
import 'package:shopping_cart_project/widgets/categoryicon.dart';
import 'package:shopping_cart_project/widgets/mainappbar.dart';

// ignore: must_be_immutable
class SelectedCategoryPage extends StatelessWidget {
  Category selectedCategory;

  SelectedCategoryPage({this.selectedCategory});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                    color: this.selectedCategory.color,
                    iconName: this.selectedCategory.icon),
                SizedBox(width: 10),
                Text(this.selectedCategory.name,
                    style: TextStyle(
                        color: this.selectedCategory.color, fontSize: 20))
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                    this.selectedCategory.subCategories.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                  subCategory: this
                                      .selectedCategory
                                      .subCategories[index])));
                    },
                    child: Container(
                        child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                              'assets/imgs/' +
                                  this
                                      .selectedCategory
                                      .subCategories[index]
                                      .imgName +
                                  '.png',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100),
                        ),
                        SizedBox(height: 10),
                        Text(this.selectedCategory.subCategories[index].name,
                            style:
                                TextStyle(color: this.selectedCategory.color))
                      ],
                    )),
                  );
                }),
              ),
            )
          ],
        )));
  }
}
