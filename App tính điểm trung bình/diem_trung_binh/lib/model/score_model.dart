class ScoreModel {
  final double math;
  final double literature;
  final double english;

  ScoreModel({required this.math, required this.literature, required this.english});

  double get average => (math + literature + english) / 3;
}
