import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
class AuthProvider extends ChangeNotifier{
bool loding=false;
 setLoding(bool valueses){
   loding=valueses;
   notifyListeners();
 }
 Future<void> sigbhup(String email,String passwo) async {
   setLoding(true);
   try{
 var response=await http.post(Uri.parse("https://reqres.in/api/login"),
     body: {
       "email": email,
       "password": passwo
 });
 if(response.statusCode==200){
   setLoding(false);
       print("Success");
 }else{
   setLoding(false);
   print("Failed");
 }
   }catch(e){
     setLoding(false);
     print("Failed"+e.toString());
   }
 }
}