import 'hoc_sinh.dart';

void main(){
  var hocsinh = HocSinh("HS001", "Nguyễn Văn A", "01/01/2000", "0123456789", 8.5, 7.5, 9.0);
  hocsinh.inThongTin();
  print("Điểm trung bình: ${hocsinh.tinhDiemTrungBinh()}");
  print("Xếp loại: ${hocsinh.xepLoai()}");
}