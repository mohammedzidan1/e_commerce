import 'package:back/helper/app.routs.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:const AppBarTheme(
            color: Colors.white,
         elevation: 0.0,
            titleTextStyle: TextStyle(color: Colors.black),
            iconTheme: IconThemeData(color: Colors.black),

          )),
      initialRoute: AppRouts.home,


    );
  }
}
