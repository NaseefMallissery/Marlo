import 'package:flutter/material.dart';

//App height and width
class AppSizedBox {
  static const kHeight20 = SizedBox(
    height: 20,
  );
  static const kWidth15 = SizedBox(
    width: 15,
  );
}

//app colors

class AppColors {
  static const greyColor = Colors.grey;
  static const blackColor = Colors.black;
  static const lightBlackColor = Color.fromARGB(25, 0, 0, 0);
  static const Color blueColor = Color.fromARGB(255, 12, 171, 223);
  static const Color lightBlueColor = Color.fromARGB(255, 198, 235, 246);
}

//App text styles

class AppFontstyle {
  static const greyHeading = TextStyle(
    fontSize: 16,
    color: AppColors.greyColor,
    fontWeight: FontWeight.w600,
  );
  static const mainHeading = TextStyle(
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );

  static const nameStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static const subtitleStyle = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w600,
  );
  static const seeAllStyle = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.w600,
  );
}
