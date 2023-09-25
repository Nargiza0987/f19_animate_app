import 'package:f19_animate_app/page/test_page.dart';
import 'package:flutter/material.dart';
import '../components/continent_card.dart';
import '../continents/app_color.dart';
import '../continents/app_text.dart';
import '../models/continent.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: Text(
          AppText.gameTitle,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: AppColors.blue),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: AppColors.blue),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            height: 2,
            color: Colors.black,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.all(10),
                itemCount: continents.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  // final item = continents[index];
                  return ContinensCard(
                    item: continents[index],
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TestPage()));
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
