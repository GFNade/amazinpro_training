// import 'dart:io';

void main() {
  int sum = 0;
  print('Cac so chan tu 1 den 15 la:');
  for (int i = 1; i<=15; i++){
    sum += i;
    if (i%2 == 0){
      print(i);
    }
  }
  print('Tong cac so tu 1 den 15 la: $sum');
}