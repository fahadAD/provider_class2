import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authProvider.dart';
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emaiController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    return Consumer<AuthProvider>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(title: Text("Register")),
        floatingActionButton: FloatingActionButton(onPressed: () {
            value.sigbhup(emaiController.text, passwordController.text);
        },child:value.loding? CircularProgressIndicator():Icon(Icons.app_registration),),
        body: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextFormField(
                controller: emaiController,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),hintText: "Email"),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),hintText: "Password"),
              ),
            ),

          ],
        ),
      );
    },);
  }
}
