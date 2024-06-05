void kiemTraTuoi ({required num tuoi}){
  if (tuoi < 0){
    throw new FormatException("Tuổi không thể nhỏ hơn 0");
  }
  else if (!(tuoi is int)){
    throw new FormatException("Tuổi không thể là số thập phân");
  }
}

void main() {
  List<dynamic> ageList = [1, 3, 5, 8, 4, 20, 25, 26, -30, 15.5, 40, 65];
  for (int i = 0; i < ageList.length; i++){
    try {
      kiemTraTuoi(tuoi: ageList[i]);
    } catch (e) {
      print(e);
      print("Tuổi bị lỗi: ${ageList[i]}");
      print("Ở vị trí: ${i+1}");
    }
  }
}