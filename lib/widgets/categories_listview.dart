import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.avif', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/general.avif', categoryName: 'General'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        // `physics` defines the scrolling behavior of the ListView.
        // `BouncingScrollPhysics` gives a bounce effect when scrolling
        // reaches the start or end of the list, mainly seen on iOS.
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
