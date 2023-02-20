import 'package:flutter/material.dart';
import 'package:marlo/controller/contract_controller/contract_provider.dart';
import 'package:marlo/helpers/constants/app_styles.dart';
import 'package:marlo/view/cotracts_page/widget/all_list_view.dart';
import 'package:marlo/view/invite/invite_page.dart';
import 'package:provider/provider.dart';

import 'widget/invite_view.dart';
import 'widget/see_all.dart';

class ContractsPage extends StatelessWidget {
  const ContractsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ContactsProvider controller=Provider.of<ContactsProvider>(context);
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Teams",
                  style:AppFontstyle.mainHeading
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                    ))
              ],
            ),
            AppSizedBox.kHeight20,
          Column(
        children: [
          Builder(
            builder: (context) {
              return SeeAllWidget(
                  length: controller.detailsList[0].data1.contacts.length,
                  text: 'All people');
            }
          ),
          const AllListViewWidget(),
          SeeAllWidget(
            length: controller.detailsList[0].data1.invites.length,
            text: 'Invited people',
          ),
          const InvitedListTileWidget(),
        ],
      ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => const InvitePage(),));
        },
        label: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
