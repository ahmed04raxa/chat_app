import 'package:chatapp_ui/repository/screens/bottomnav/bottom_navigation_screen.dart';
import 'package:chatapp_ui/repository/widgets/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../domain/constants/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        title: UiHelper.customText(
          context: context,
          text: "Your Profile",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "bold",
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.customImage(imgUrl: "avatar_dark.png")
                : UiHelper.customImage(imgUrl: "avatar_light.png"),
            SizedBox(height: 30),
            UiHelper.customTextField(
              context: context,
              controller: firstNameController,
              text: "First Name (Required)",
              textInputType: TextInputType.name,
            ),
            SizedBox(height: 10),
            UiHelper.customTextField(
              context: context,
              controller: firstNameController,
              text: "Last Name (Optional)",
              textInputType: TextInputType.name,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        text: "Save",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomNavigationScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
