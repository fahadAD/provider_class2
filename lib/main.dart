import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class2/provider.dart';
import 'package:provider_class2/slider.dart';

import 'Authentication/authProvider.dart';
import 'Authentication/register.dart';
import 'Favourite/favoutite_page.dart';
import 'ThemeChanger/dart_theme.dart';
import 'ThemeChanger/theme_changerProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
 ChangeNotifierProvider(create: (context) => AllSliders(),),
 ChangeNotifierProvider(create: (context) => AllFavouriteItems(),),
 ChangeNotifierProvider(create: (context) => ThemeChangerProvider(),),
 ChangeNotifierProvider(create: (context) => AuthProvider(),),
    ],
   child: Builder(builder: (context) {
     final themeChanger=Provider.of<ThemeChangerProvider>(context);
     return MaterialApp(
       themeMode: themeChanger.thememode,
       theme: ThemeData(
         brightness: Brightness.light,
           appBarTheme: AppBarTheme(color: Colors.red)
       ),
       darkTheme: ThemeData(
         brightness: Brightness.dark,
         iconTheme: IconThemeData(color: Colors.pink),
         appBarTheme: AppBarTheme(color: Colors.lightGreen)
       ),

       debugShowCheckedModeBanner: false,
       home: Register(),
     );
   },)
    );
  }
}
