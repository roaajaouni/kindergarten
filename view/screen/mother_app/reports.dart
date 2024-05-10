import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/mother_controller/reportscontroller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';

import 'package:get/get.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ReportscontrollerImp controller=Get.put(ReportscontrollerImp()); 
    return Scaffold(
     // backgroundColor: AppColor.backgroundColor,
      backgroundColor: Colors.white,
      body:controller.listreports.isEmpty
            ? Container(
             // color: AppColor.backgroundColor,
              color: Colors.white,
              padding:const  EdgeInsets.all(15),
            margin: const EdgeInsets.all(10),
              child: Column(
                
                children: [
                   Image.asset(
                  AppImageAsset.magic,
                  height: 200,
                  
                ),
                 const SizedBox(height: 50,),
const Center(
                  child: Text('   Hi !  ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: AppColor.terqaz),),),
                
                const   SizedBox(height: 50,),
                   const Center(
                  child: Text('    No reports added yet ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: AppColor.terqaz),),
                ),
               const  SizedBox(height: 200,),
                SizedBox(width: 300,
                   child: MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        color: AppColor.terqaz,
                        textColor: AppColor.fairuz,
                        onPressed: (){
                          controller.gotochildprofile();
                        },
                 
                       
                        child:const Text('Back'),
                      ),
                 )
                ],
              )
            )
            : 
Container(
        //color: AppColor.backgroundColor,
        color: Colors.white,
         margin: const EdgeInsets.only(top: 50),
         child: Column(
            children: [
         
         const  Text('The reports',style:TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: AppColor.grey) ,),

            
             Container(
              color: Colors.white,
              margin: const EdgeInsets.all(5),
             height: 500,
              padding: const EdgeInsets.all(15),
              child: GetBuilder<ReportscontrollerImp>(
                init:ReportscontrollerImp() ,
                builder: (controller){
                return ListView.builder(
                itemCount:controller.listreports.length ,itemBuilder: (context, i){
              return Card(
                margin:const EdgeInsets.only(top: 15,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(150),side:const  BorderSide(color: AppColor.terqaz)),
                child: ListTile(
                  onTap: () {
                    controller.gotoreportdetail();
                // controller.getReportData();
                },
                  //leading:
                  // Container(height: 100,width: 80,
                // child: Image.asset(listchild[i]['image'])),
              title:  Text('${controller.listreports[i]['reportname']}'),
              //subtitle: Text('${controller.listreports[i]['age']}')
            ),);
              
             },
             
       
             );
              })),
             const SizedBox(height: 50,),
          SizedBox(width: 300,
                   child: MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        color: AppColor.terqaz,
                        textColor: AppColor.fairuz,
                        onPressed: (){
                          controller.gotochildprofile();
                        },
                 
                       
                        child:const Text('Back'),
                      ),
                 )
          
          
           ],
         ),
    ));
  }
}