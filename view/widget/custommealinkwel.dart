import 'package:flutter/material.dart';
import 'package:flutter_childhood/core/constant/color.dart';



class Custominkwel extends StatelessWidget {
  final String text;
  final Image myimage;
  final  void Function() ?onTap;
  const Custominkwel({super.key, required this.text, this.onTap, required this.myimage});
  

  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap: onTap,
                           child: Container(
                                           alignment: Alignment.center,
                                           height: 100,
                                           width: 100,
                                           decoration: BoxDecoration( color: AppColor.fairuz,
                                            borderRadius: BorderRadius.circular(80)
                                            ),
                                             child:Column(
                                               children: [
                                                ClipOval(child: myimage
                                                // Image.asset(AppImageAsset.burger
                                                // ,height: 100,width: 100,fit: BoxFit.cover,)
                                                ),
                                               const SizedBox(height: 8,),
                                                 Text(text,
                                                 style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.terqaz),),
                                            
                                               ],
                                             ),
                                         ),
                         );
  }
}