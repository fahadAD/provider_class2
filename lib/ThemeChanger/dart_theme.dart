import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class2/ThemeChanger/theme_changerProvider.dart';
 class ThemeChangeScreen extends StatelessWidget {
   const ThemeChangeScreen({super.key});

   @override
   Widget build(BuildContext context) {
     final themeChanger=Provider.of<ThemeChangerProvider>(context);
     return Scaffold(
       appBar: AppBar(title: Text("Theme Change Screen"),
        ),
       body: Column(
         children: [
     RadioListTile<ThemeMode>(
       title: Text("Light mode"),
         value:  ThemeMode.light,
         groupValue: themeChanger.thememode,
         onChanged: (value) {
           return themeChanger.setTheme(themeChanger);
         },
     ),
           RadioListTile<ThemeMode>(
             title: Text("Dark mode"),
             value:  ThemeMode.dark,
             groupValue: themeChanger.thememode,
             onChanged: themeChanger.setTheme,
           ),
           RadioListTile<ThemeMode>(
             title: Text("System mode"),
             value:  ThemeMode.system,
             groupValue: themeChanger.thememode,
             onChanged: themeChanger.setTheme,
           ),
           Icon(Icons.add),
           Text("data"),


         ],
       ),
     );
   }
 }
