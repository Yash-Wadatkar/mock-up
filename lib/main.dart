import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import this for orientation lock
import 'package:recipto/screens/mockup_screen/mock_up_screen.dart';

void main() {
  /// Lock the app to portrait mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MockUpScreen(),
    );
  }
}
