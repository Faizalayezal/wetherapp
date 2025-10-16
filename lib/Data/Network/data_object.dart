import 'package:wetherapp/Model/data_model.dart';


class MyDataClass {
  final List<Days> _allData = [];

  List<Days> getAllData()  {
    return  _allData;
  }

  void addData(Days data) {
    _allData.add(data);
  }
}
