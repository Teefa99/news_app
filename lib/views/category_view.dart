import 'package:flutter/material.dart';
import 'package:news_app/widgets/new_list_view_builder.dart';

// ignore: must_be_immutable
class CategoryView extends StatelessWidget {
  final String category;

  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: category),
          ],
        ),
      ),
    );
  }
}
