import 'package:chatapp_ui/domain/constants/app_colors.dart';
import 'package:chatapp_ui/repository/widgets/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(CupertinoIcons.back)),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              context: context,
              text: "Enter Your Phone Number",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "bold",
              color: AppColors.textLightMode,
            ),
            SizedBox(height: 10,),
            UiHelper.customText(
              context: context,
              text: "Please confirm your country code and enter",
              fontSize: 14,
            ),
            UiHelper.customText(
              context: context,
              text: "your phone number",
              fontSize: 14,
            ),
            SizedBox(height: 20,),
            UiHelper.customTextField(
              context: context,
              controller: phoneController,
              text: "Phone Number",
              textInputType: TextInputType.phone,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(text: "Continue", callback: (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
