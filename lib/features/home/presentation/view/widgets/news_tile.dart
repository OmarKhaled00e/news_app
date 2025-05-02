import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:news_app/features/home/data/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: article.image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder:
                  (context, url) => CustomLoadingIndicator(), // أو شريط تحميل
              errorWidget:
                  (context, url, error) =>
                      Image.asset('assets/sports.jpg', fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 12),
          Text(
            article.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Text(
            article.description ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
