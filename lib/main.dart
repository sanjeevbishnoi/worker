import 'package:flutter/material.dart';
import 'package:worker/core/helper/ffmpeg_kit_helper.dart';

import 'presentation/page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FFmpegKitHelper.execute();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
