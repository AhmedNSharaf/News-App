import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/article_model.dart';
import 'package:flutter_application_1/services/news_services.dart';
import 'package:flutter_application_1/widgets/news_tile_listview.dart';

class NewsTileListViewBuilder extends StatefulWidget {
  const NewsTileListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsTileListViewBuilder> createState() =>
      _NewsTileListViewBuilderState();
}

class _NewsTileListViewBuilderState extends State<NewsTileListViewBuilder> {
  late Future<List<ArticleModel>> future;

  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getTopHeadLines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Text('Oops, there was an error. Try later'),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.amber,
              ),
            ),
          );
        }
      },
    );
  }
}
