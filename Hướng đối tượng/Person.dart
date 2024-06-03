import 'PersonSample.dart';

class Person extends PersonSample{
  String id;
  String name;
  int _birthYear;

  // Hàm khởi tạo
  Person(this.id, this.name, this._birthYear);

  // getter
  int get birthYear => _birthYear;

  // setter
  set birthYear(int value) {
    if (value > 0) {
      _birthYear = value;
    }
  }

  // Phương thức tính tuổi
  @override
  int getAge() {
    return DateTime.now().year - _birthYear;
  }

  // Phương thức in thông tin
  @override
  void getInfor() {
    print("ID: $id");
    print("Name: $name");
    print("Birth year: $_birthYear");
    print("Age: ${getAge()}");
  }
}