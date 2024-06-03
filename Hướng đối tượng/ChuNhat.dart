class ChuNhat{
  double chieuDai;
  double chieuRong;

  // Hàm khởi tạo
  ChuNhat(this.chieuDai, this.chieuRong);

  // Phương thức tính chu vi
  double tinhChuVi(){
    return (chieuDai + chieuRong) * 2;
  }

  // Phương thức tính diện tích
  double tinhDienTich(){
    return chieuDai * chieuRong;
  }

  // Phương thức in thông tin
  void getInfor(){
    print("Chiều dài: $chieuDai");
    print("Chiều rộng: $chieuRong");
    print("Chu vi: ${tinhChuVi()}");
    print("Diện tích: ${tinhDienTich()}");
  }
}