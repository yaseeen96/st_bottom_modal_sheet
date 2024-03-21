import 'package:flutter/material.dart';
import 'package:st_bottom_modal_sheet/st_bottom_sheet_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: STBottomSheetButton(
          sheetBackgroundColor: Colors.white,
          contentHeight: 150,
          content: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text("Logout from this Device"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text("Logout from all devices"),
                ),
              ),
            ],
          ),
          child: const Text(
            "Logout",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )),
      ),
    );
  }
}
