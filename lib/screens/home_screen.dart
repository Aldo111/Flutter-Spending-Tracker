import 'package:flutter/material.dart';
import 'package:minimal_grocery/constants/app_colors.dart';
import 'package:minimal_grocery/models/spending_category_model.dart';
import 'package:minimal_grocery/widgets/price_text.dart';
import 'package:minimal_grocery/widgets/search_bar.dart';
import 'package:minimal_grocery/widgets/spending_category.dart';

class HomeScreen extends StatelessWidget {
  static const categoryModels = [
    SpendingCategoryModel(
      'GROCERIES',
      'assets/image1.png',
      28,
      AppColors.categoryColor1,
    ),
    SpendingCategoryModel(
      'FOOD',
      'assets/image2.png',
      28,
      AppColors.categoryColor2,
    ),
    SpendingCategoryModel(
      'BEAUTY',
      'assets/image3.png',
      28,
      AppColors.categoryColor3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Container(
            height: 180,
            child: Stack(children: [
              Container(
                color: Theme.of(context).accentColor,
                height: 150,
                padding: EdgeInsets.only(left: 36, top: 12),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome back,',
                        style: Theme.of(context).textTheme.headline2),
                    Text('Azarro The Dev!',
                        style: Theme.of(context).textTheme.headline1),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Spending\ntoday',
                              style:
                                  TextStyle(color: AppColors.primaryWhiteColor),
                            ),
                            SizedBox(width: 32),
                            PriceText(
                              price: 100,
                              color: AppColors.primaryWhiteColor,
                            ),
                          ],
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        decoration: BoxDecoration(
                            color: AppColors.secondaryAccent,
                            borderRadius: BorderRadius.circular(32)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: AppColors.secondaryAccent),
                        // Wrap the IconButton in a Material widget for the
                        // IconButton's splash to render above the container.
                        child: Material(
                          borderRadius: BorderRadius.circular(32),
                          type: MaterialType.transparency,
                          // Hard Edge makes sure the splash is clipped at the border of this
                          // Material widget, which is circular due to the radius above.
                          clipBehavior: Clip.hardEdge,
                          child: IconButton(
                            padding: EdgeInsets.all(16),
                            color: AppColors.primaryWhiteColor,
                            iconSize: 32,
                            icon: Icon(
                              Icons.calendar_today,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ]),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 24),
            child: SearchBar(),
          ),
          Expanded(
            child: ListView(children: [
              for (var model in categoryModels)
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36.0, vertical: 16),
                    child: SpendingCategory(model))
            ]),
          ),
        ],
      ),
    );
  }
}
