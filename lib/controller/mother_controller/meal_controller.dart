// import 'package:flutter_childhood/core/constant/imageasset.dart';
// import 'package:get/get.dart';

// abstract class MealController extends GetxController{

// }
// class MealControllerImp extends MealController{
//  dynamic listchild=[
//   {'namechild':"sadek",'age':'4','imagechild':AppImageAsset.onBoardingImageTwo},
//   {'namechild':"sadek",'age':'4','imagechild':AppImageAsset.logo},
//   {'namechild':"sadek",'age':'4','imagechild':AppImageAsset.logo},
//   {'namechild':"sadek",'age':'4','imagechild':AppImageAsset.logo},
  

//  ];
 
 
 
//   bool status =false;

//   onMealSelected(val){
//     status=val;
//     update();
//   }
// }
import 'package:flutter_childhood/core/constant/imageasset.dart';
import 'package:get/get.dart';
class Food {
final String image;
  final String name;

  bool isSelected;

  Food( {required this.image,required this.name, this.isSelected = false});
}

class FoodController extends GetxController {
  final List<Food> _foods = [
    Food(name: 'Pizza',image:AppImageAsset.logo),
    Food(name: 'Burger',image:AppImageAsset.home),
    Food(name: 'Pasta',image:AppImageAsset.onBoardingImageThree),
    Food(name: 'Sushi',image:AppImageAsset.logo),
     Food(name: 'Pizza',image:AppImageAsset.logo),
    Food(name: 'Burger',image:AppImageAsset.home),
    Food(name: 'Pasta',image:AppImageAsset.onBoardingImageThree),
    Food(name: 'Sushi',image:AppImageAsset.logo),
  ];
  List<Food> selectedMeals =[];

  List<Food> get foods => _foods;

  void toggleSelection(Food food) {
    food.isSelected = !food.isSelected;
    selectedMeals.add(food);


    update();
  }
}


//List foods = List.generate(length, (index){ Food.formJson(response.body[index])})