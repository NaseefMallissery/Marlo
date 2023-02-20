import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marlo/helpers/constants/app_styles.dart';
import 'package:provider/provider.dart';

class ContinueButtonWidget extends StatelessWidget {
  const ContinueButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller=Provider.of(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () {
          if (controller.emailFormKey.currentState!.validate()) {
            controller.inviteMember();
           Navigator.pop(context);
          } else {
            Fluttertoast.showToast(
              msg: 'All field is required',
              toastLength: Toast.LENGTH_LONG,
            );
          }
        },
        child: Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          shadowColor: AppColors.blueColor,
          elevation: 5,
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.blueColor,
            ),
            child: const Center(
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
