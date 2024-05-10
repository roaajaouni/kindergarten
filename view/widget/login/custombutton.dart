import 'package:flutter/material.dart';
import 'package:flutter_childhood/core/constant/color.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final  void Function() ?onPressed;
  const Custombutton({super.key, required this.text, this.onPressed, });

  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                    color: AppColor.terqaz,
                    textColor: AppColor.fairuz,
                    onPressed: onPressed,

                   
                    child: Text(text,style: const TextStyle(color: AppColor.fairuz),),
                  ));
  }
}