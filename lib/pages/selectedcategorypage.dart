import 'package:flutter/material.dart';
import 'package:shopping_cart_project/models/category.dart';
import 'package:shopping_cart_project/pages/detailspage.dart';
import 'package:shopping_cart_project/widgets/categoryicon.dart';

// ignore: must_be_immutable
class SelectedCategoryPage extends StatelessWidget {
  Category selectedCategory;

  SelectedCategoryPage({this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                  color: this.selectedCategory.color,
                  iconName: this.selectedCategory.icon,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(this.selectedCategory.name,
                    style: TextStyle(
                        color: this.selectedCategory.color, fontSize: 20))
              ],
            ),
            SizedBox(height: 30,),
            Expanded(child: GridView.count(crossAxisCount: 2,
            children: [List.generate(this.selectedCategory.subCategories.length, (index) {
              return GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage()));
              },);
            })],))
          ],
        ),
      ),
    );
  }
}
