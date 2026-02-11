import 'package:flutter/material.dart';
import 'package:flutter_firstproject/myApp/application.dart';
// import 'package:flutter_firstproject/myApp/MyApplicationSecondPage.dart';
// import 'package:flutter_firstproject/aptect_book_practice.dart/container.dart';
// import 'package:flutter_firstproject/aptect_book_practice.dart/simple_Dailogand_AlertDailog.dart';
// import 'package:flutter_firstproject/aptect_book_practice.dart/button.dart';
// import 'package:flutter_firstproject/aptect_book_practice.dart/user_input_Widget.dart';
// import 'package:flutter_firstproject/aptect_book_practice.dart/listTile.dart';
// import 'package:flutter_firstproject/aptect_book_practice.dart/tabbarandtabbarView.dart';
// import 'package:flutter_firstproject/myApp/bottomNavigationBar.dart';
// import 'package:flutter_firstproject/textinputwigdet.dart';
// import 'package:flutter_firstproject/sir_tutorial/login_form.dart';
// import 'package:flutter_firstproject/cardwigdet.dart';
// import 'package:flutter_firstproject/Container_decoration.dart';
// import 'package:flutter_firstproject/MarginAndPadding.dart';
// import 'package:flutter_firstproject/listView.dart';
// import 'package:flutter_firstproject/circleavatar.dart';
// import 'package:flutter_firstproject/costumFontInApp.dart';
// import 'package:flutter_firstproject/stylesandthemes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Saad Chauhan",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: TextTheme(
          headlineSmall: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          titleSmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        ),
      ),
      // home: ContainerDecoration(),
      // home: Expendedwidget(),
      // home: MarginAndPadding(),
      // home: Listview(),
      // home: costumFontInApp(),
      // home: stylesandthemes(),
      // home: cardwigdet(),
      // home: textinputwigdet(),
      // home: loginpage(),
      // home: MyStatefullWidget(),
      // home: MyStatefullWidget(),
      // home: defaultTabController(),
      // home: listtile(),
      // home: ButtonWidget(),
      // home: UserInputWidget(),
      // home: SimpleDailogandAlertdailog(),
      // home: MyHomePageState(),
      home: MyApplication(),
      // home: MyApplicationSecondPage(),
    );
  }
}
