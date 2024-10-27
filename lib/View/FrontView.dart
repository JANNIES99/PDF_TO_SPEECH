import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: ["pdf"],
    );
    if (result != null && result.files.single.path != null) {
      final file = result.files.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "PDF-TO-SPEECH",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Select the pdf Document"),
              const SizedBox(
                height: 15,
              ),
              Text("Select the pdf Document"),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () async {},
                child: const Text("Pick PDF"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
