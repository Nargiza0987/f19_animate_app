import 'package:f19_animate_app/continents/app_color.dart';
import 'package:flutter/material.dart';

class Variants extends StatelessWidget {
  const Variants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 2),
          itemBuilder: (context, i) {
            return Card(
              color: AppColors.grey,
              child: InkWell(
                onTap: () {},
                child: Center(child: Text(i.toString())),
              ),
            );
          }),
    );
  }
}
