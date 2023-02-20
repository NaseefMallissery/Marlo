import 'package:flutter/material.dart';
import 'package:marlo/helpers/constants/app_styles.dart';
import 'package:marlo/controller/bottom_controller/bottom_provider.dart';
import 'package:provider/provider.dart';
import 'package:marlo/view/bottomPages/page1.dart';
import 'package:marlo/view/bottomPages/page2.dart';
import 'package:marlo/view/bottomPages/page3.dart';
import 'package:marlo/view/bottomPages/page4.dart';
import 'package:marlo/view/cotracts_page/contracts_page.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final List<dynamic> body = [
    const Page1(),
    const Page2(),
    const ContractsPage(),
    const Page3(),
    const Page4(),
  ];
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<BottomProvider>(context);
    int curentbodyindex = controller.currentIndexsearch();
    return Scaffold(
      body: body[curentbodyindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curentbodyindex,
        type: BottomNavigationBarType.fixed,
        onTap: ((value) => controller.newIndex(value)),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Loan',
            icon: Icon(
              Icons.attach_money,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Contracts',
            icon: Icon(
               Icons.list_alt,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.groups,
            ),
            label: 'Teams',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
            ),
            label: 'Chat',
          ),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.blueColor,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
