import 'dart:async';

Stream<int> createNumberStream({required int delayTime,required int maxNumber}) {
  return Stream.periodic(
    Duration(seconds: delayTime),
    createNumber
  ).take(maxNumber);
}

int createNumber(int value) {
  return value + 1;
}

void handleNumberStream(Stream<int> stream) {
  stream.listen((number) {
    if (number % 3 == 0) {
      print(number);
    }
  });
}

void main() async {
  var numberStream = createNumberStream(delayTime: 3, maxNumber: 100);
  handleNumberStream(numberStream);
}