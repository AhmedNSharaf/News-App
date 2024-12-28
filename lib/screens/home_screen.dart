import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/NewsTileListViewBuilder.dart';
import 'package:flutter_application_1/widgets/categories_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        // i will make the title in row to separate tow words and decorate each word alone .
        title: const Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(bottom: 12.0, left: 10, right: 6),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsTileListViewBuilder(category: 'general',),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 16,
        //     ),
        //     Expanded(child: NewsTileListView()),
        //   ],
        // ),
      ),
    );
  }
}

