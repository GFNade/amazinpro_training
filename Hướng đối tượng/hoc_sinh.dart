class HocSinh{
  String idHocSinh;
  String tenHocSinh;
  String _ngaySinh;
  String _soDienThoai;
  double diemToan;
  double diemVan;
  double diemAnh;

  // Hàm khởi tạo
  HocSinh(this.idHocSinh, this.tenHocSinh, this._ngaySinh, this._soDienThoai, this.diemToan, this.diemVan, this.diemAnh);

  // Các phương thức
  void inThongTin(){
    print("ID: $idHocSinh");
    print("Tên: $tenHocSinh");
    print("Ngày sinh: $_ngaySinh");
    print("Số điện thoại: $_soDienThoai");
    print("Điểm toán: $diemToan");
    print("Điểm văn: $diemVan");
    print("Điểm anh: $diemAnh");
  }

  // Phương thức tính điểm trung bình
  double tinhDiemTrungBinh(){
    return (diemToan + diemVan + diemAnh) / 3;
  }

  // Phương thức xếp loại học sinh
  String xepLoai()
  {
    var diemTB = this.tinhDiemTrungBinh();
    if (diemTB<5) return "Yếu";
    else if (diemTB < 6.5) return "Trung Bình";
    else if (diemTB < 8) return "Học Khá";
    else return "Học giỏi";
  }
}