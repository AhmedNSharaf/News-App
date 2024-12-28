import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articleModel.image != null
                ? Image.network(
                    articleModel.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.grey[300],
                      child: const Icon(Icons.broken_image, size: 50),
                    ),
                  )
                : Image.asset(
                    'assets/science.avif',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(height: 12),
          Text(
            articleModel.title ?? 'No Title Available',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            articleModel.subTitle ?? 'No Subtitle Available',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
