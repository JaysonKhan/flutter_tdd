import 'package:flutter/material.dart';
import 'package:flutter_tdd/feature/number_trivia/presentation/pages/number_triva_page.dart';
import 'package:flutter_tdd/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TDD APP",
      home: const NumberTrivaPage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE0E0E0),
        ),
      ),
    );
  }
}
