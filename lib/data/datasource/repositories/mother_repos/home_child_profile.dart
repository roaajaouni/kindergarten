// import 'package:flutter_childhood/core/api/api_service.dart';
// import 'package:flutter_childhood/data/model/mother_model/home_child_model.dart';

// class ChildRepository {
//   ApiService apiService = ApiService();

//   Future<List<Child>> getChildren() async {
//     List<Child> children = [];//تحوي عناصر اليست مودلة
//     final response = await apiService.getData("getchilds");
//     response.forEach((element) {
//       children .add(Child.fromJson(element));
//     });
//     return children;
//   }
// }