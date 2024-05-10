import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomContainerTextField extends StatelessWidget {
  final TextStyle mystyle;
 final String text;
 final String hinttext;
  final TextEditingController ?mycontroller;
void Function(String)? onSubmitted;
   CustomContainerTextField({super.key,  this.mycontroller, required this.text, required this.mystyle, required this.hinttext,this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 190,
                           // color: Colors.red,
                            child:  Column(
                              children: [
                              const  SizedBox(
                                  height: 20,
                                ),
                                Text(text,style: mystyle),
                              const  SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    
                                    decoration: InputDecoration(
                                      hintText: hinttext,hintStyle: const TextStyle(color: Color.fromARGB(255, 233, 230, 230)),
                                      border: InputBorder.none,
                                    
                                  ),
                                  maxLines: 2,
                                  controller: mycontroller,
                                //  onSubmitted: (value) {
                                  
                                //     if(mycontroller!.text.isNotEmpty){
                                //       print('////${mycontroller!.text}');
                                //       mycontroller!.text=value;
                                //    }
                                //  },
                                  ),
                                ),
                              ],
                            ));
  }
}