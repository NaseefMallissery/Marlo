import 'package:flutter/material.dart';
import 'package:marlo/controller/bottom_controller/bottom_provider.dart';
import 'package:marlo/controller/contract_controller/contract_provider.dart';
import 'package:marlo/controller/invite_controller/invite.dart';
import 'package:provider/provider.dart';

import 'view/cotracts_page/contracts_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomProvider(),),
        ChangeNotifierProvider(create: (context) => ContactsProvider(),),
        ChangeNotifierProvider(create: (context) => InviteProvider(),)
      ],
      child: MaterialApp(
        title: 'Marlo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ContractsPage(),
      ),
    );
  }
}
