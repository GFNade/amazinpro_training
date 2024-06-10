import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/score_viewmodel.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mathController = TextEditingController();
    final literatureController = TextEditingController();
    final englishController = TextEditingController();
    final scoreViewModel = context.watch<ScoreViewModel>();

    void _showErrorDialog(String message) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Lỗi nhập liệu'),
          alignment: Alignment.center,
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tính điểm trung bình'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: mathController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Điểm Toán',
              ),
            ),
            TextField(
              controller: literatureController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Điểm Văn',
              ),
            ),
            TextField(
              controller: englishController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Điểm Anh',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final math = double.tryParse(mathController.text);
                final literature = double.tryParse(literatureController.text);
                final english = double.tryParse(englishController.text);

                if (math == null || literature == null || english == null) {
                  _showErrorDialog('Vui lòng nhập đủ điểm các môn.');
                } else {
                  try {
                    scoreViewModel.setScores(math:math,literature:  literature,english:  english);
                    if (scoreViewModel.errorMessage.isNotEmpty) {
                      _showErrorDialog(scoreViewModel.errorMessage);
                    }
                  } catch (e) {
                    _showErrorDialog(e.toString());
                  }
                }
              },
              child: const Text('Tính điểm trung bình'),
            ),
            const SizedBox(height: 20),
            if (scoreViewModel.average != null)
              Text(
                'Điểm trung bình: ${scoreViewModel.average!.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20),
              ),
            const SizedBox(height: 10),
            Text(
              scoreViewModel.evaluation,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
