// import 'dart:io';

void main(){
  // Tính 8!
  int result = 1;
  for (int i = 2; i <= 8; i++){
    result *= i;
  }
  print('8! = $result');

  // In ra cac so nguyen duong le nho hon 25
  for (int i = 1; i < 25; i += 2){
    print(i);
  }
}