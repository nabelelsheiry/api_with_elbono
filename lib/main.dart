import 'package:api_with_elbono/core/features/home/views/home_view.dart';
import 'package:api_with_elbono/core/features/home/views/root_view.dart';
import 'package:api_with_elbono/core/features/product/views/product_view.dart';
import 'package:api_with_elbono/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp
    ]
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductView(),
    );
  }
}
