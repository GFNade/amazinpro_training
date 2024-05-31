import 'dart:io';

void main() {
  print('Nhập một số nguyên:');
  String? input = stdin.readLineSync();

  // Kiểm tra xem input có phải là null hoặc không phải là số hay không
  if (input != null && int.tryParse(input) != null) {
    int number = int.parse(input);

    if (number % 2 == 0) {
      print('$number là số chẵn');
    } else {
      print('$number là số lẻ');
    }
  } else {
    print('Vui lòng nhập một số nguyên hợp lệ.');
  }
}
