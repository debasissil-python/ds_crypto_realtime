import 'package:flutter/material.dart';
//import 'package:ds_crypto_realtime/all_crypto_screen.dart';
import 'crypto_loading_page.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CryptoLoadingPage(),

      // theme: ThemeData.light(), // Provide light theme.
      // darkTheme: ThemeData.dark(), // Provide dark theme.
      // themeMode: ThemeMode.system,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => CryptoLoadingPage(),
      //   '/first': (context) => AllCryptoScreen(),
    );
  }
}
//home: AllCryptoScreen(),
//CryptoLoadingPage(),
