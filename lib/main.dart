// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medguide/auth/login.dart';
import 'package:medguide/auth/register.dart';
import 'package:medguide/components/default_appbar.dart';
import 'package:medguide/components/default_drawer.dart';
import 'package:medguide/components/default_image_slider.dart';
import 'package:medguide/components/default_searchbar.dart';
import 'util.dart';
import 'theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Poppins", "Syne");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MedGuide',
      theme: Provider.of<ThemeProvider>(context).themeData.copyWith(
            textTheme: textTheme,
          ),
      home: const Homepage(),
      initialRoute: '/',
      routes: {
        '/home': (context) => const Homepage(),
        '/register': (context) => const Register(),
        '/login': (context) => const Login(),
      },
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const DefaultDrawer(),
      appBar: const DefaultAppBar(),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Container(
        padding: EdgeInsets.only(top: height * 0.005),
        child: Center(
          child: Column(
            children: [
              DefaultSearchbar(),
              const DefaultSliderElements(),
              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
