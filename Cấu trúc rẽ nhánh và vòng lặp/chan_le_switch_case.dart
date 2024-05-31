import 'dart:io';

void main() {
  print('Nhập một số nguyên:');
  String? input = stdin.readLineSync();

  // Kiểm tra xem input có phải là null hoặc không phải là số hay không
  if (input != null && int.tryParse(input) != null) {
    int number = int.parse(input);

    switch (number % 2) {
      case 0:
        print('$number là số chẵn');
        break;
      case 1:
        print('$number là số lẻ');
        break;
    }
  } else {
    print('Vui lòng nhập một số nguyên hợp lệ.');
  }
}