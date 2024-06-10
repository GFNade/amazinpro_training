import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/home_page.dart';
import 'viewmodel/score_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ScoreViewModel(),
      child: MaterialApp(
        title: 'Tính điểm trung bình',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
