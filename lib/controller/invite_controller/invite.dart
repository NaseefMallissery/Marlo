import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marlo/controller/service/services.dart';
import 'package:marlo/model/get_model.dart';

class InviteProvider extends ChangeNotifier {
  bool isSelected = false;
  List<String> types = [
    'Admin',
    'Approver',
    'Preparer',
    'Viewer',
    'Employee',
  ];
  List<String> selectedItems = ['Admin'];
  TextEditingController emailcontroller = TextEditingController();
  GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();

  Future<void> inviteMember() async {
    AddResponse? response = await Services.addUser(
      emailcontroller.text.trim(),
      (types.indexOf(selectedItems[0]) + 1),
    );
    notifyListeners();

    Fluttertoast.showToast(
      msg: response!.message.toString(),
      toastLength: Toast.LENGTH_LONG,
    );
  }
}
