// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/models/article_model.dart';
// import 'package:flutter_application_1/services/news_services.dart';
// import 'package:flutter_application_1/widgets/NewsTile.dart';

// class NewsTileListView extends StatefulWidget {
//   const NewsTileListView({
//     super.key,
//   });

//   @override
//   State<NewsTileListView> createState() => _NewsTileListViewState();
// }

// class _NewsTileListViewState extends State<NewsTileListView> {
//   List<ArticleModel> articles = [];

//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsServices(Dio()).getGeneralNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(
//             child: CircularProgressIndicator(
//               strokeWidth: 3,
//             ),
//           ))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 16.0),
//                   child: NewsTile(
//                     articleModel: articles[index],
//                   ),
//                 );
//               },
//             ),
//           );
//     /*
//     SliverList 
//     مشروحة بالتفصيل فى ريكورد ف النوتة بتاعت الفون بتاريخ 6 نوفمبر 2024 الساعة 2:13 صباحا
//     */
//   }
// }

