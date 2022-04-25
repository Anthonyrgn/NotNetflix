import 'package:flutter/material.dart';
import 'package:my_netflix_flutter/repositories/data_repository.dart';
import 'package:my_netflix_flutter/ui/screens/home_screen.dart';
import 'package:my_netflix_flutter/ui/screens/loading_screen.dart';
import 'package:provider/provider.dart';

void main() {
    runApp(ChangeNotifierProvider(create: (context) => DataRepository(),
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Not Netflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoadingScreen(),
    );
  }
}

