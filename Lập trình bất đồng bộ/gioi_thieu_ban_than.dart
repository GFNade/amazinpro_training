import 'dart:async';

void gioiThieuBanThan() async {
  await Future.delayed(
    Duration(seconds: 3),
    () => {
      print("Tôi tên là Nguyễn Văn A"),
    }  
  );

  await Future.delayed(
    Duration(seconds: 5),
    () => {
      print("Năm nay tôi 22 tuổi"),
    }  
  );

  await Future.delayed(
    Duration(seconds: 2),
    () => {
      print("Tôi đến từ Hà Nội"),
    }  
  );
}

void main() {
  gioiThieuBanThan();
}