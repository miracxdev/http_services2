import 'package:flutter/material.dart';
import 'package:http_services2/ui/home_screen/controller/home_screen_controller.dart';
import 'package:http_services2/ui/home_screen/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(
     MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_)=> HomeController())
      
     ],
     child: const MyApp(),
     )
  );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen(),
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
    );
  }
}