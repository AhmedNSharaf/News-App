import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/NewsTileListViewBuilder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 6, right: 6),
        child: CustomScrollView(
          slivers: [
            NewsTileListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
