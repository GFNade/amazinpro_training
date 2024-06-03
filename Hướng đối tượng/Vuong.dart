import 'ChuNhat.dart';

class Vuong extends ChuNhat{
  // Hàm khởi tạo
  Vuong(double canh) : super(canh, canh);

  // Phương thức in thông tin
  void getInfor(){
    print("Cạnh: $chieuDai");
    print("Chu vi: ${tinhChuVi()}");
    print("Diện tích: ${tinhDienTich()}");
  }
}