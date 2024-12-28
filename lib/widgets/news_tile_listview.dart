import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/article_model.dart';
import 'package:flutter_application_1/widgets/NewsTile.dart';


class NewsTileListView extends StatelessWidget {
  final List<ArticleModel> articles ;

  const NewsTileListView({super.key,required this.articles});


  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: NewsTile(
                    articleModel: articles[index],
                  ),
                );
              },
            ),
          );
    /*
    SliverList 
    مشروحة بالتفصيل فى ريكورد ف النوتة بتاعت الفون بتاريخ 6 نوفمبر 2024 الساعة 2:13 صباحا
    */
  }
}
