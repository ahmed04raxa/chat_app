import 'package:chatapp_ui/domain/constants/app_colors.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static customImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }

  static customText({
    required String text,
    required double fontSize,
    String? fontFamily,
    FontWeight? fontWeight,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily ?? "regular",
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textDarkMode
                : AppColors.textLightMode),
      ),
    );
  }

  static customButton({
    required String text,
    required VoidCallback callback,
    Color? buttonColor,
  }) {
    return SizedBox(
      height: 52,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonLightMode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "bold",
          ),
        ),
      ),
    );
  }

  static customTextField({
    required TextEditingController controller,
    required String text,
    required TextInputType textInputType,
    required BuildContext context,
    required IconData iconData,
  }) {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.containerDarkMode
            : AppColors.containerLightMode,
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          prefixIcon: Icon(iconData, color: AppColors.iconLight),
          hintText: text,
          hintStyle: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.hintTextDarkMode
                : AppColors.hintTextLightMode,
            fontSize: 14,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
