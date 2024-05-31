// import 'dart:io';

void main() {
  List<int> list = [5, 9, 4, 3, 18, 8, 9];
  // Tinh trung binh cong cua List
  double average = list.reduce((a, b) => a + b) / list.length;
  print('Trung bình cộng của List là: $average');

  // Sap xep List
  list.sort();
  print('List sau khi sắp xếp là: $list');
}
