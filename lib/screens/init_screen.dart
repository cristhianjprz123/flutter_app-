import 'package:flutter/material.dart';
import 'package:workflow/screens/home/home_screen.dart';


const Color inActiveIconColor = Color.fromARGB(128, 178, 228, 15);
const Color activeIconColor = Color(0xFF1C199B);

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  static String routeName = "/";

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  int currentSelectedIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final pages = [
    const HomeScreen(),
    const Center(
      child: Text('Scanner'),
    ),
    const Center(
      child: Text('History'),
    ),
    const Center(
      child: Text('Settings'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentSelectedIndex,
        selectedItemColor: activeIconColor,
        unselectedItemColor: inActiveIconColor,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: updateCurrentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Scanner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
