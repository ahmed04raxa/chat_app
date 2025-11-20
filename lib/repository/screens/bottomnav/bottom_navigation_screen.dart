import 'package:chatapp_ui/repository/screens/chat/chat_screen.dart';
import 'package:chatapp_ui/repository/screens/contact/contact_screen.dart';
import 'package:chatapp_ui/repository/screens/more/more_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../domain/constants/app_colors.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 1;
  List<Widget> pages = [ContactScreen(), ChatScreen(), MoreScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(children: pages, index: currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_alt),
            label: "Contact",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            label: "Chats",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.iconDarkMode
              : AppColors.iconLightMode,
        ),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
