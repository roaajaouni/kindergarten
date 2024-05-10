import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/mother_controller/meal_controller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';
import 'package:flutter_childhood/view/widget/login/custombutton.dart';
import 'package:get/get.dart';

class MealsPage extends StatelessWidget {
  const MealsPage({super.key});

  @override
  Widget build(BuildContext context) {
 
    final FoodController foodController = Get.put(FoodController());
    return Scaffold(
      //backgroundColor: AppColor.backgroundColor,
      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: const IconThemeData.fallback(),
        // actions: [IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons,color: AppColor.grey,))],
        //  backgroundColor: AppColor.backgroundColor,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Center(
            child: Text('Meal  service',
                style: TextStyle(fontSize: 20, color: AppColor.terqaz)),
          )),
      body: SafeArea(
        child: ListView(
          children: [Container(
            //color:AppColor.babygreen ,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
               
                TextFormField(
                  
                  decoration: InputDecoration(
                      prefixIcon:const  Icon(Icons.search),
                      hintText: "Search",
                      
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColor.hintfieldColor),
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                     // fillColor:AppColor.backgroundColor
                      fillColor:Colors.white
                      
                      ),
                ),
               const  SizedBox(height: 10,),
                const Center(
                    child: Text('Choose your child \'s favorite meal ',
                        style: TextStyle(fontSize: 20, color: AppColor.grey))),
                         const  SizedBox(height: 10,),
                Container(
                    
                  decoration: BoxDecoration(
                     // color: AppColor.babyblue,
                      borderRadius: BorderRadius.circular(30)),
                    height: 510,
                    padding: const EdgeInsets.all(10),
                    child: GetBuilder<FoodController>(
                        builder: (controller) => ListView.builder(
                         
                          itemCount: foodController.foods.length,
        
                          itemBuilder: (context, i) {
                            final food = foodController.foods[i];
        
                            return Container(
        
        decoration: BoxDecoration(
                      //color: AppColor.hintfieldColor,
                      borderRadius: BorderRadius.circular(30)),
        
                                alignment: Alignment.center,
                                height: 100,
                                margin: const EdgeInsets.only(
                                  top: 15,
                                ),
                                child: ListTile(
                                
        
                                     leading:
        
                                    const CircleAvatar(
                                      radius: 30,
                                    
                                      backgroundColor: AppColor.babypurple,
                                      backgroundImage: AssetImage(AppImageAsset.home)
                                     // child: Image.asset('${food.image}')
                                     ),
        
                                  title:  Text(food.name),
        
                                  trailing: Checkbox(
                                    activeColor: AppColor.fairuz,
                                    value: food.isSelected,
                                   
                                    onChanged: (value) {
                                      foodController.toggleSelection(food);
                                    },
                                  ),
                                ));
                          },
                        ))),
                           const  SizedBox(height: 10,),
                            Custombutton(text: 'Add to the menu',
                            onPressed: () {
                              
                            },
                            )
              ],
            ),
          ),
           ] ),
      ),
    );
  }
}

// ListView.builder(
//                 itemCount:controller.listchild.length ,itemBuilder: (context, i){
//               return Container(
//                 //  decoration: BoxDecoration( color:  i % 2 == 0 ? AppColor.hintfieldColor: AppColor.iconColor,
//                 //                              borderRadius: BorderRadius.circular(30)),
//                                              alignment: Alignment.center,
//                 height: 100,
//                 margin:const EdgeInsets.only(top: 15,),
//              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(150),side:const  BorderSide(color: AppColor.hintfieldColor)),
//                 child: ListTile(onTap: () {
//                  //Get.to(()=> const ChildProfile(),);
//                 },
//                  leading:
//                   Container(

//                     height: 100,width: 80,
//                   child:
//                  Image.asset('${controller.listchild[i]['imagechild']}')),
//               title:  Text('${controller.listchild[i]['namechild']}'),
//              // subtitle: Text('${controller.listchild[i]['age']}'),
//               trailing: Checkbox(
//                 value: controller.status,
//                onChanged:controller.onchange(controller.status)

//               ),));

//              },

//              )
