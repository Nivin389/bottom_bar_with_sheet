import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111111),
      body: const Center(
        child: Text(
          "Place for your content",
          style: TextStyle(
            color: Colors.green,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      bottomNavigationBar: BottomBarWithSheet(
        selectedIndex: _selectedIndex,
        autoClose: false,
        sheetChild: Center(
          child: Text(
            "Another content",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        bottomBarTheme: BottomBarTheme(
          height: 70,
          heightClosed: 70,
          heightOpened: 300,
          backgroundColor: Colors.grey[900],
          mainButtonPosition: MainButtonPosition.left,
          selectedItemIconColor: Colors.green,
          itemIconColor: Colors.white,
          selectedItemIconSize: 20,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
            ),
          ),
        ),
        mainActionButtonTheme: MainActionButtonTheme(
          size: 55,
          color: Colors.green,
          splash: Colors.green[800],
          icon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 35,
          ),
        ),
        onSelectItem: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomBarWithSheetItem(icon: Icons.home_rounded),
          BottomBarWithSheetItem(icon: Icons.shopping_cart),
          BottomBarWithSheetItem(icon: Icons.settings),
          BottomBarWithSheetItem(icon: Icons.favorite),
          BottomBarWithSheetItem(icon: Icons.donut_large),
          BottomBarWithSheetItem(icon: Icons.bar_chart_sharp),
          BottomBarWithSheetItem(icon: Icons.backup_rounded),
          BottomBarWithSheetItem(icon: Icons.camera_alt),
        ],
      ),
    );
  }
}
