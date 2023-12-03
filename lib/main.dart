import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_cart/cart_provider.dart';
import 'package:shoping_cart/product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.blue,
          appBarTheme: const AppBarTheme(
            color: Colors.blue,
          ),
        ),
        home: const ProductListScreen(),
      ),
    );
  }
}
