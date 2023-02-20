import 'package:flutter/material.dart';
import 'package:marlo/controller/invite_controller/invite.dart';
import 'package:marlo/helpers/constants/app_styles.dart';
import 'package:provider/provider.dart';

// class CustomBottomSheet extends StatelessWidget {
//   const CustomBottomSheet({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(24),
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 20),
//             Container(
//               height: 5,
//               width: 50,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(2.5),
//                 color: AppColors.lightBlueColor,
//               ),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.only(
//                     left: 15,
//                     top: 15,
//                     bottom: 20,
//                   ),
//                   child: Text(
//                     'Team roles',
//                     style: AppFontstyle.nameStyle,
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height / 2,
//                   child: ListView.builder(
//                     itemCount: controller.types.length,
//                     itemBuilder: (context, index) => Consumer(
//                       builder: (context, value, child) => Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: controller.selectedItems
//                                     .contains(controller.types[index])
//                                 ? AppColors.lightBlueColor
//                                 : Colors.white,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: ListTile(
//                             onTap: () {
//                               controller.selectedItems.clear();
//                               controller.selectedItems.add(
//                                 controller.types[index],
//                               );
//                             },
//                             textColor: controller.selectedItems
//                                     .contains(controller.types[index])
//                                 ? AppColors.blueColor
//                                 : Colors.grey,
//                             leading: Text(
//                               controller.types[index],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
showModalBottomSheet(context) {
  final InviteProvider controller = Provider.of(context);
  showBottomSheet(
      context: context,
      builder: (context) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      color: AppColors.lightBlueColor,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                          top: 15,
                          bottom: 20,
                        ),
                        child: Text(
                          'Team roles',
                          style: AppFontstyle.nameStyle,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        child: ListView.builder(
                          itemCount: controller.types.length,
                          itemBuilder: (context, index) => Consumer(
                            builder: (context, value, child) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: controller.selectedItems
                                          .contains(controller.types[index])
                                      ? AppColors.lightBlueColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListTile(
                                  onTap: () {
                                    controller.selectedItems.clear();
                                    controller.selectedItems.add(
                                      controller.types[index],
                                    );
                                  },
                                  textColor: controller.selectedItems
                                          .contains(controller.types[index])
                                      ? AppColors.blueColor
                                      : Colors.grey,
                                  leading: Text(
                                    controller.types[index],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ));
}
