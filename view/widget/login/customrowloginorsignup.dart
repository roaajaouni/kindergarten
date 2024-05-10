import 'package:flutter/material.dart';
import 'package:flutter_childhood/core/constant/color.dart';

class Customrowloginorsignup extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function ()onTap;
  const Customrowloginorsignup({super.key, required this.textone, required this.onTap, required this.texttwo});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                   textone,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: AppColor.grey),
                  ),
             const  SizedBox(width: 10,),
                  InkWell(
                      onTap: onTap,
                      child:  Text(
                       texttwo,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16,color: AppColor.terqaz),
                      )),
                ],
              );
  }
}