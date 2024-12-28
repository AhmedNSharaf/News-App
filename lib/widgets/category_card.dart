import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(category: category.categoryName,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 125,
          width: 220,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(category.image),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(16),
              color: Colors.amber),
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
