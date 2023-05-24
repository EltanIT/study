import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {

   int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Фильмы и сериалы"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => SelectTab(value),
        currentIndex: _selectedTab,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Новости'),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Фильмы'),
        BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Сериалы'),
      ]),
      
    );
  }
  
  SelectTab(int index) {
    if(_selectedTab == index) return;
    setState(() {
       _selectedTab = index;
    });
     
  }
}
