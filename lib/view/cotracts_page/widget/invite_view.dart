import 'package:flutter/material.dart';
import 'package:marlo/controller/contract_controller/contract_provider.dart';
import 'package:marlo/helpers/constants/app_styles.dart';
import 'package:provider/provider.dart';




class InvitedListTileWidget extends StatelessWidget {
  const InvitedListTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ContactsProvider controller=Provider.of<ContactsProvider>(context);
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          final data = controller.detailsList[0].data1.invites[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.blueColor,
                  ),
                  child: Center(
                    child: Text(
                      "${data.email.substring(0, 1).toUpperCase()} ",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  data.email,
                  style: AppFontstyle.nameStyle,
                ),
                subtitle: Text(data.configName),
              ),
            ),
          );
        },
      ),
    );
  }
}
