import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  late final iconImgPath;
  late final String categoryName;

  CategoryCard({
    required this.iconImgPath,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image(image: AssetImage(iconImgPath), height: 50),
              Text(categoryName)
            ],
          ),
        ),
      ),
    );
  }
}
