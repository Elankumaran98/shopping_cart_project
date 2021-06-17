import 'package:flutter/material.dart';
import 'package:shopping_cart_project/helpers/unitnums.dart';
import 'package:shopping_cart_project/models/category.dart';
import 'package:shopping_cart_project/models/categorypart.dart';
import 'package:shopping_cart_project/models/onboardingcontent.dart';
import 'package:shopping_cart_project/models/subcategory.dart';


import 'appcolors.dart';
import 'iconhelper.dart';

class Utils {
  static List<OnboardingContent> getOnboarding() {
    return [
      OnboardingContent(
        message: 'Products\nfrescoes, of the\nearth to your table',
        img: 'onboard1'
      ),
      OnboardingContent(
        message: 'Meat and sausages\nfresh and healthy\nto your delight',
        img: 'onboard2'
      ),
      OnboardingContent(
        message: 'Get them from\nthe comfort of your\nmobile device',
        img: 'onboard3'
      )
    ];
  }

  static List<Category> getMockedCategories() {
    return [
      Category(
        color: AppColors.MEATS,
        name: "meats",
        imgName: "cat1",
        icon: IconFontHelper.MEATS,
        subCategories: [
          SubCategory(
            color: AppColors.MEATS,
            name: "pig",
            imgName: "cat1_1",
            icon: IconFontHelper.MEATS,
            price: 5.0,
            parts: [
              CategoryPart(
                name: 'Jamon',
                imgName: 'cat1_1_p1',
                isSelected: false
              ),
              CategoryPart(
                name: 'Legs',
                imgName: 'cat1_1_p2',
                isSelected: false
              ),
              CategoryPart(
                name: 'Bacon',
                imgName: 'cat1_1_p3',
                isSelected: false
              ),
              CategoryPart(
                name: 'Lomo',
                imgName: 'cat1_1_p4',
                isSelected: false
              ),
              CategoryPart(
                name: 'Ribs',
                imgName: 'cat1_1_p5',
                isSelected: false
              ),
              CategoryPart(
                name: 'Cloth',
                imgName: 'cat1_1_p6',
                isSelected: false
              )
            ]
          ),
          SubCategory(
            name: "Cow",
            imgName: "cat1_2",
            icon: IconFontHelper.MEATS,
            color: AppColors.MEATS,
            price: 10.0,
            parts: [
              CategoryPart(
                name: 'Rib',
                imgName: 'cat1_3_p1',
                isSelected: false
              ),
              CategoryPart(
                name: 'Ribeye',
                imgName: 'cat1_3_p2',
                isSelected: false
              ),
              CategoryPart(
                name: 'Sirloin',
                imgName: 'cat1_3_p3',
                isSelected: false
              ),
              CategoryPart(
                name: 'Tail',
                imgName: 'cat1_3_p4',
                isSelected: false
              ),
            ]
          ),
          SubCategory(
            name: "Chicken",
            imgName: "cat1_3",
            icon: IconFontHelper.MEATS,
            color: AppColors.MEATS,
            price: 8.0,
            parts: [
              CategoryPart(
                name: 'Wings',
                imgName: 'cat1_2_p1',
                isSelected: false
              ),
              CategoryPart(
                name: 'Poultry breast',
                imgName: 'cat1_2_p2',
                isSelected: false
              ),
              CategoryPart(
                name: 'Thigh',
                imgName: 'cat1_2_p3',
                isSelected: false
              ),
              CategoryPart(
                name: 'Legs',
                imgName: 'cat1_2_p4',
                isSelected: false
              ),
              CategoryPart(
                name: 'Hearts',
                imgName: 'cat1_2_p5',
                isSelected: false
              ),
            ]
          ),
          SubCategory(
            name: "Turkey",
            imgName: "cat1_4",
            icon: IconFontHelper.MEATS,
            color: AppColors.MEATS,
            price: 12.0,
            parts: [
              CategoryPart(
                name: 'Poultry breast',
                imgName: 'cat1_4_p1',
                isSelected: false
              ),
              CategoryPart(
                name: 'Thigh',
                imgName: 'cat1_4_p2',
                isSelected: false
              ),
              CategoryPart(
                name: 'Alas',
                imgName: 'cat1_4_p3',
                isSelected: false
              )
            ]
          ),
          SubCategory(
            name: "Goat",
            imgName: "cat1_5",
            icon: IconFontHelper.MEATS,
            color: AppColors.MEATS,
            price: 10.0,
            parts: [
              CategoryPart(
                name: 'Chops',
                imgName: 'cat1_5_p1',
                isSelected: false
              ),
              CategoryPart(
                name: 'Lomo',
                imgName: 'cat1_5_p2',
                isSelected: false
              ),
              CategoryPart(
                name: 'Leg',
                imgName: 'cat1_5_p3',
                isSelected: false
              )
            ]
          ),
        ]
      ),
      Category(
        color: AppColors.FRUITS,
        name: "Frutas",
        imgName: "cat2",
        icon: IconFontHelper.FRUITS,
        subCategories: []
      ),
      Category(
        color: AppColors.VEGS,
        name: "Vegetables",
        imgName: "cat3",
        icon: IconFontHelper.VEGS,
        subCategories: []
      ),
      Category(
        color: AppColors.SEEDS,
        name: "Seeds",
        imgName: "cat4",
        icon: IconFontHelper.SEEDS,
        subCategories: []
      ),
      Category(
        color: AppColors.PASTRIES,
        name: "Sweet",
        imgName: "cat5",
        icon: IconFontHelper.PASTRIES,
        subCategories: []
      ),
      Category(
        color: AppColors.SPICES,
        name: "Species",
        imgName: "cat6",
        icon: IconFontHelper.SPICES,
        subCategories: []
      )
    ];
  }

  static String weightUnitToString(WeightUnits unit) {
    switch(unit) {
      case WeightUnits.Kg:
        return 'kg.';
      default:
        return '000g.';
    }
  }

  static String deviceSuffix(BuildContext context) {
    String deviceSuffix = '';
    TargetPlatform platform = Theme.of(context).platform;
    switch(platform) {
      case TargetPlatform.android:
        deviceSuffix = '_android';
        break;
      case TargetPlatform.iOS:
        deviceSuffix = '_ios';
        break;
      default: 
        deviceSuffix = '';
        break;
    }

    return deviceSuffix;
  }
}