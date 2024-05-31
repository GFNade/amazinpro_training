void main() {
  // Khai báo và khởi tạo Map chứa thông tin người dùng
  Map<String, String> userInfo = {
    "first_name": "Nguyễn",
    "last_name": "Văn A",
    "email": "nguyenvana@example.com",
    "phone": "0123456789"
  };

  // Lấy và in ra thông tin người dùng
  String firstName = userInfo["first_name"] ?? "Không có";
  String lastName = userInfo["last_name"] ?? "Không có";
  String email = userInfo["email"] ?? "Không có";
  String phone = userInfo["phone"] ?? "Không có";

  print("Họ: $firstName");
  print("Tên: $lastName");
  print("Email: $email");
  print("Số điện thoại: $phone");
}
