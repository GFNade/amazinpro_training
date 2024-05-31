void main() {
  var classInformation = {
    "id": 12,
    "name": "Báo Flutter 1.2",
    "description": "Lớp học lập trình Flutter, hot line: 0349582808"
  };
  // Trích xuất giá trị của khóa "description"
  String description = classInformation["description"] as String;

  // Tìm vị trí của từ "hot line: " trong chuỗi
  int hotlineIndex = description.indexOf("hot line: ");
  if (hotlineIndex != -1) {
    // Tính vị trí bắt đầu của số hotline
    int startIndex = hotlineIndex + "hot line: ".length;
    // Trích xuất phần còn lại của chuỗi từ vị trí bắt đầu của số hotline
    String hotline = description.substring(startIndex).trim();
    
    print("Số hotline là: $hotline");
  } else {
    print("Không tìm thấy số hotline");
  }
}
