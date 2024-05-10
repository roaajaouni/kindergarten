import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiService{
 static const String baseUrl='http://192.168.43.93:8000/api/';
//  getData(String endPoint) async{
//   var data;
//  try{
//    var response =await http.get(Uri.parse(baseUrl+endPoint));
//   if (response.statusCode==200){
//     data =response.body;
//     print(data);
//     return json.decode(data);
//   }
//   else {
//     return[{'message':'failed to load data'}] ;
//   }

//  }catch(er){
//   return [{'message':'failed to load data'}] ;
//  }

//  }
// ///////////////
//   Future<http.Response>postData(String endPoint,Map<String,dynamic> data) async{
//   //var data;

//  //try{
//    var  response =await http.post(Uri.parse(baseUrl+endPoint),body: jsonEncode(data));
//   if (response.statusCode==201){
//     //data =response.body;
//   print(response.body);
  
//   }
//   else {
//    // return[{'message':'failed to send  data'}] ;
//    print('error');
// }

// //  }catch(er){
// //   print(er);
// //   //return {'message':'failed to send data'} ;
 
// //  }
//  return  response;
//  }
/////////////////////////////////
postData(String endPoint, Map<String, dynamic> data) async{
   var post= await http.post(Uri.parse(baseUrl+endPoint));
   if (post.statusCode==200){
    return print(json.decode(post.body));

   }
   else{
    return [{"message": "failed to load data"}];
   }
  }


 }