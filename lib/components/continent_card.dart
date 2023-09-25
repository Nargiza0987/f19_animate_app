import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/continent.dart';

class ContinensCard extends StatelessWidget {
  const ContinensCard({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final Continent item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(height: 8),
          Text(
            item.name,
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    '/icons/continents/${item.icon}.svg',
                    color: item.color,
                  ))),
        ],
      ),
    ));
  }
}
