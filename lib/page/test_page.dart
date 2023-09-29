import 'package:f19_animate_app/continents/app_color.dart';
import 'package:flutter/material.dart';
import '../app/test_page_app.dart';
import '../components/test_page_slider.dart';
import '../components/variants.dart';
import '../models/suroo.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.suroo});
  final List<Suroo> suroo;
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: TestPageApp(),
      ),
      body: Column(
        children: [
          TestSlider(),
          Center(
            child: Text(
              'Pekin',
              style: TextStyle(
                fontSize: 30,
                height: 1.5,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/pekin.jpg'),
              ),
            ),
          ),
          Variants(),
        ],
      ),
    );
  }
}
