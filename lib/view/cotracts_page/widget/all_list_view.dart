import 'package:flutter/material.dart';
import 'package:marlo/controller/contract_controller/contract_provider.dart';
import 'package:marlo/helpers/constants/app_styles.dart';
import 'package:provider/provider.dart';


class AllListViewWidget extends StatelessWidget {
  const AllListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ContactsProvider controller=Provider.of<ContactsProvider>(context);
    return SizedBox(
      height: 170,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          final data = controller.detailsList[0].data1.contacts[index];
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
                      "${data.firstname!.substring(0, 1).toUpperCase()} ${data.lastname!.substring(0, 1).toUpperCase()}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  "${data.firstname} ${data.lastname}",
                  style: AppFontstyle.nameStyle,
                ),
                subtitle: Text(data.isactive ? 'Active' : 'Inactive'),
                trailing: Text(data.roleName),
              ),
            ),
          );
        },
      ),
    );
  }
}
