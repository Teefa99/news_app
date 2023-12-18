import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:url_launcher/url_launcher.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articlesModel,
  });
  final ArticlesModel articlesModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var url = Uri.parse(articlesModel.newsUrl);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw Exception('Could not launch $url');
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articlesModel.image ??
                    'https://thumbs.dreamstime.com/b/news-woodn-dice-depicting-letters-bundle-small-newspapers-leaning-left-dice-34802664.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            articlesModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articlesModel.subTitle ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
      ),
    );
  }
}
