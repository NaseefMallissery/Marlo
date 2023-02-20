import 'package:flutter/material.dart';
import 'package:marlo/controller/invite_controller/invite.dart';
import 'package:marlo/helpers/constants/app_styles.dart';
import 'package:marlo/view/invite/widget/button.dart';
import 'package:provider/provider.dart';


class InvitePage extends StatelessWidget {
 const InvitePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final InviteProvider inviteController =Provider.of<InviteProvider>(context);
    return Scaffold(
     
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 10),
              const Text(
                'Invite',
                style: AppFontstyle.mainHeading,
              ),
              const SizedBox(height: 20),
              Container(
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.greyColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Form(
                    key: inviteController.emailFormKey,
                    child: TextFormField(
                      controller: inviteController.emailcontroller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        label: Text('Business email'),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.greyColor,
                ),
                child: Consumer(
                  builder: (context, value, child) => ListTile(
                    onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>  showModalBottomSheet() ,));
                    },
                    leading: Text(inviteController.selectedItems[0]),
                    trailing: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.blueColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ContinueButtonWidget(),
    );
  }
}
