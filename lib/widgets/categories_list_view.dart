import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(name: 'Business', image: 'assets/images/business.jpg'),
    CategoryModel(
      name: 'Sports',
      image: 'assets/images/sports.jpg',
    ),
    CategoryModel(name: 'Science', image: 'assets/images/science.avif'),
    CategoryModel(name: 'Health', image: 'assets/images/health.avif'),
    CategoryModel(name: 'Technology', image: 'assets/images/technology.jpeg'),
    CategoryModel(
        name: 'Entertainment', image: 'assets/images/entertaiment.avif'),
    CategoryModel(name: 'General', image: 'assets/images/general.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
