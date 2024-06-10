import 'package:flutter/foundation.dart';
import '../model/score_model.dart';

class ScoreViewModel extends ChangeNotifier {
  ScoreModel? _score;
  double? _average;
  String _evaluation = '';
  String _errorMessage = '';

  double? get average => _average;
  String get evaluation => _evaluation;
  String get errorMessage => _errorMessage;

  void setScores({required double math,required double literature,required double english}) {
    try {
      _validateScore(score:math);
      _validateScore(score:literature);
      _validateScore(score:english);

      _score = ScoreModel(math: math, literature: literature, english: english);
      _average = _score?.average;
      _evaluation = _getEvaluation(_average);
      _errorMessage = '';
    } catch (e) {
      _errorMessage = e.toString();
      _average = null;
      _evaluation = '';
    }
    notifyListeners();
  }

  void _validateScore({required double score}) {
    if (score < 0 || score > 10) {
      throw Exception('Điểm phải nằm trong khoảng từ 0 đến 10.');
    }
  }

  String _getEvaluation(double? average) {
    if (average == null) {
      return 'Vui lòng nhập đủ điểm các môn.';
    } else if (average >= 8) {
      return 'Giỏi';
    } else if (average >= 6.5) {
      return 'Khá';
    } else if (average >= 5) {
      return 'Trung bình';
    } else {
      return 'Yếu';
    }
  }
}
