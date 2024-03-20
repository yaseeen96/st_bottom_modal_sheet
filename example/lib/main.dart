import 'package:flutter/material.dart';
import 'package:st_bottom_modal_sheet/st_bottom_modal_sheet.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
            child: STBottomModalSheet(
          child: Text("hello"),
        )),
      ),
    );
  }
}
