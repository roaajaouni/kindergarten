import 'package:flutter/material.dart';
import 'package:flutter_childhood/core/constant/color.dart';

class CustomCartTextField extends StatelessWidget {
  final String hintText;
 
 final IconData  iconData;
  final TextEditingController ?mycontroller ;
  //void Function(String)? onSubmitted;

  const CustomCartTextField({super.key, required this.hintText, required this.iconData, this.mycontroller, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        margin:const EdgeInsets.only(top: 15,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60),side:const  BorderSide(color: AppColor.terqaz)),
      
                  child: TextField(
                    
                    keyboardType: TextInputType.name,
    
                    controller: mycontroller,
    
                    // obscureText: true,
    // onSubmitted: (value) {
      
    // },
                    decoration: InputDecoration(
                      
                      hintText: hintText,
                      
                      icon: Icon(iconData, color: AppColor.fairuz),
                    ),
                  ),
                ),
    );
  }
}

