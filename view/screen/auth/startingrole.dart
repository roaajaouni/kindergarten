import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/auth/startingcontroller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';
import 'package:get/get.dart';

class Startingrole extends StatelessWidget{
  const Startingrole({super.key});
  @override
  Widget build(BuildContext context) {
    StartingcontrollerImp controller=Get.put( StartingcontrollerImp());
  return Scaffold(
 backgroundColor:Colors.white,
    body: SafeArea(
      child:  Container(
      //color:AppColor.backgroundColor,
      color: Colors.white,
        padding: const EdgeInsets.all(10),
        //margin: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
              const SizedBox(height:75),
            //Image.asset('images/OIP (3).jpg'
            
        //height: 150,
        //),
        const SizedBox(height:50),
              const Text('Which best describes you ?',
              style: TextStyle(
                fontSize: 27,
              fontWeight: FontWeight.bold,
              color: AppColor.grey),),
             const  SizedBox(height:50),
             InkWell(
              onTap: ()=>{ 
               
                 },
               child: Container( 
                height: 50,
               
               width: 1000,
               alignment: Alignment.center,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: AppColor.terqaz,),
                child:const Text('PARENTS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColor.grey),),),
             ),
               const SizedBox(height:25),
             const Text(
              'OR',
             style: TextStyle(
              fontSize: 20,
             fontWeight: FontWeight.bold,
             color: AppColor.grey),),
             const SizedBox(height:25),
          InkWell(
            onTap: ()=>{
              controller.gototeacherlogin()
              },
            child: Container(
              
               height: 50,
           
            width: 1000,alignment: Alignment.center,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: AppColor.terqaz,),

                child:const Text(
                  'TEACHER',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColor.grey),),),
          ),
              const SizedBox(height:100),
            Image.asset(
                    AppImageAsset.starting,
                    height:200 ,
                  ),
          
            ]
              )
            
                
               
            
              
            ),
          ),
      ),
      
    );
 
  }
  
}