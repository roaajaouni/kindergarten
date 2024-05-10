import 'package:flutter/material.dart';
import 'package:flutter_childhood/core/constant/color.dart';

class Customtextfield extends StatelessWidget {
  final String hintText;
 
  final IconData iconData;
  final TextEditingController ?mycontroller;
   final String? Function(String?)? valid;

  const Customtextfield({Key?key,
  required this.hintText,
  
  required this.iconData,
   required this.mycontroller, required this.valid})
  :super(key:key);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColor.terqaz,width: 5),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      
                      validator:valid ,
                      controller: mycontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration:  InputDecoration(
                          //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          icon: Icon(iconData, color: AppColor.fairuz),
                          hintText: hintText),
                    ),
                  ),
                ),
              );
  }
}
