import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
            ),
            Text("Фамилия Имя Отчество", style: TextStyle(fontSize: 22,),),
            Text("+7(922)533 05 19", style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
    );
  }
}