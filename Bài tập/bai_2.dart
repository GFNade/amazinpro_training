void main() {
  int count3 = 0;
  int count5 = 0;

  // Duyệt qua các số từ 1 đến 10000
  for (int i = 1; i <= 10000; i++) {
    if (i % 3 == 0) {
      count3++;
    }
    if (i % 5 == 0) {
      count5++;
    }
  }

  print('Số các chữ số chia hết cho 3 từ 1 đến 10000 là: $count3');
  print('Số các chữ số chia hết cho 5 từ 1 đến 10000 là: $count5');
}
