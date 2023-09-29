import 'package:flutter/material.dart';

import '../continents/app_color.dart';

class TestPageApp extends StatelessWidget {
  const TestPageApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(
              children: [
                Icon(
                  Icons.tips_and_updates,
                  color: AppColors.red,
                ),
                Text('32'),
                Icon(
                  Icons.add_circle,
                  color: AppColors.blue,
                ),
              ],
            ),
          ),
        ),
        Text('3'),
        Row(
          children: [
            SizedBox(
              width: 80,
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.favorite,
                      color: AppColors.red,
                    );
                  }),
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ],
    );
  }
}
