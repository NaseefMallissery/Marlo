import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marlo/controller/service/services.dart';
import 'package:marlo/model/get_model.dart';

class ContactsProvider extends ChangeNotifier {
  ContactsProvider() {
    fetchDetails();
  }

  List<UserResponse> detailsList = [];

  // Future<void> fetchDetails() async {
  //   log("fetch data");
  //   UserResponse? response = await Services.getData(ApiEndpoints.token);
  //   if (response!.errorFlag == "SUCCESS") {
  //     log('successs');
  //     detailsList.add(response);
  //     notifyListeners();
  //     log("response ${detailsList[0].data.contacts}");
  //   } else {
  //     Fluttertoast.showToast(
  //       msg: response.message.toString(),
  //       toastLength: Toast.LENGTH_LONG,
  //     );
  //   }
  // }
void fetchDetails() async {
    log("fetch data");
    // UserResponse? response = await Services.getData(ApiEndpoints.token);
    await Services.getData().then(
      (value) {
        if (value != null) {
          log('successs');
          detailsList.add(value);
          notifyListeners();
          log("response ${detailsList[0].data1.contacts}");
        } else {
          Fluttertoast.showToast(
            msg: value!.message,
            toastLength: Toast.LENGTH_LONG,
          );
          notifyListeners();
        }
      },
    );
  }
}
