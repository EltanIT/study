import 'package:flutter/material.dart';
import 'package:study/leaning_widgets/stack_and_listView.dart';
import 'package:study/themovied/auth/auth_widgets.dart';
import 'package:study/themovied/main_screen/Main_screen_widgets.dart';
import 'package:study/themovied/widget_colors.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: auth_widgets(),
      ),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors_widgets.mainDarkColor
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors_widgets.mainDarkColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey
        )
      ),
      routes: {
        "/auth" : (context) => auth_widgets(),
        "/main_screen" : (context) => MainScreenWidget(),
      },
      initialRoute: '/auth',
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return Scaffold(body: Text("ошибочка!"),);
        });
      },
    );
  }
}
