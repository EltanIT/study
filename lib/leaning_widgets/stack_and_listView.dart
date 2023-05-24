import 'package:flutter/material.dart';

class stackList extends StatefulWidget {
  const stackList({super.key});

  @override
  State<stackList> createState() => _stackListState();
}

class _stackListState extends State<stackList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        addAutomaticKeepAlives: true,
        itemBuilder: (BuildContext context, int index) {
          return textField(text: index.toString());
        });
  }
}

class textField extends StatefulWidget {
  final String text;
  const textField({
    super.key,
    required this.text,
  });

  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField> with AutomaticKeepAliveClientMixin {
  late final TextEditingController controller;

  @override
  void initState() {

    super.initState();
    controller: TextEditingController(text: widget.text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          child: TextField(
        controller: controller,
      )),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
