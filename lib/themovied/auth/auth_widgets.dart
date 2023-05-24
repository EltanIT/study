import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:study/themovied/main_screen/Main_screen_widgets.dart';

class auth_widgets extends StatefulWidget {
  const auth_widgets({super.key});

  @override
  State<auth_widgets> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<auth_widgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(3, 37, 65, 1),
        title: Text("Movied"),
      ),
      body: ListView(children: [
        _HeaderWidget(),
      ]),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  final textStyle = const TextStyle(fontSize: 16, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Текст (от лат. textus «ткань; сплетение, связь, сочетание») — зафиксированная на каком-либо материальном носителе человеческая мысль; в общем плане связная и полная последовательность символов",
            style: textStyle,
          ),
          TextButton(onPressed: () {}, child: Text("Регистрация")),
          SizedBox(
            height: 50,
          ),
          Text(
            "Войдите в свой аккаунт",
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          _FormWidget(),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _authLoginController = TextEditingController();
  final _authPasswordController = TextEditingController();
  String errorText = "";

  _auth(){
   final login = _authLoginController.text;
   final password = _authPasswordController.text;

   if(login == "гера"){
    setState(() {
      errorText = "";
    });
    Navigator.of(context).pushReplacementNamed('/main_screen');
   }
   else{
    setState(() {
      errorText = "неверный логин или пароль";
    });  
   }
  }

   AlertDialog alert = AlertDialog(
      title: Text("Пароль восстановится через 1 год"),
      content: Text("Ok?"),
      actions: [
        TextButton(onPressed: (){}, child: Text("Ok")),
      ],
    );

  _resetPassword(){
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  final decorationField = const InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      isCollapsed: true);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Text("Логин"),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: decorationField,
          controller: _authLoginController,
        ),
        SizedBox(
          height: 15,
        ),
        Text("Пароль"),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: decorationField,
          obscureText: true,
          controller: _authPasswordController,
        ),
        SizedBox(
          height: 15,
        ),
        Text("$errorText", style: TextStyle(color: Colors.red),),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {_auth();},
              child: Text("Войти"),
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600))),
            ),
            SizedBox(
              width: 15,
            ),
            TextButton(onPressed: () {_resetPassword();}, child: Text("Восстановить пароль"))
          ],
        )
      ],
    );
  }
}
