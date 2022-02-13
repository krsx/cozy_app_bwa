import 'package:cozy_app/page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:cozy_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cozy_app/providers/space_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
