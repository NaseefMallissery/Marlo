class UserResponse {
  UserResponse({
    required this.errorFlag,
    required this.message,
    required this.data1,
  });
  late final String errorFlag;
  late final String message;
  late final Data data1;

  UserResponse.fromJson(Map<String, dynamic> json) {
    errorFlag = json['error_flag'];
    message = json['message'];
    data1 = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['error_flag'] = errorFlag;
    data['message'] = message;
    data['data'] = data1.toJson();
    return data;
  }
}

class Data {
  Data({
    required this.contacts,
    required this.invites,
  });
  late final List<Contacts> contacts;
  late final List<Invites> invites;

  Data.fromJson(Map<String, dynamic> json) {
    contacts =
        List.from(json['contacts']).map((e) => Contacts.fromJson(e)).toList();
    invites =
        List.from(json['invites']).map((e) => Invites.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['contacts'] = contacts.map((e) => e.toJson()).toList();
    data['invites'] = invites.map((e) => e.toJson()).toList();
    return data;
  }
}

class Contacts {
  Contacts({
    required this.contactId,
    required this.email,
    this.firstname,
    this.lastname,
    this.mobile,
    this.dob,
    this.contactAddressLine_1,
    this.contactAddressLine_2,
    this.city,
    required this.isactive,
    required this.role,
    required this.roleName,
  });
  late final String contactId;
  late final String email;
  late final String? firstname;
  late final String? lastname;
  late final String? mobile;
  late final String? dob;
  late final String? contactAddressLine_1;
  late final String? contactAddressLine_2;
  late final String? city;

  late final bool isactive;
  late final int role;
  late final String roleName;

  Contacts.fromJson(Map<String, dynamic> json) {
    contactId = json['contact_id'];
    email = json['email'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    mobile = json['mobile'];
    dob = null;
    contactAddressLine_1 = null;
    contactAddressLine_2 = null;
    city = null;

    isactive = json['isactive'];
    role = json['role'];
    roleName = json['role_name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['contact_id'] = contactId;
    data['email'] = email;
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['mobile'] = mobile;
    data['dob'] = dob;
    data['contact_address_line_1'] = contactAddressLine_1;
    data['contact_address_line_2'] = contactAddressLine_2;
    data['city'] = city;

    data['isactive'] = isactive;
    data['role'] = role;
    data['role_name'] = roleName;
    return data;
  }
}

class Invites {
  Invites({
    required this.inviteId,
    required this.email,
    required this.configName,
  });
  late final String inviteId;
  late final String email;
  late final String configName;

  Invites.fromJson(Map<String, dynamic> json) {
    inviteId = json['invite_id'];
    email = json['email'];
    configName = json['config_name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['invite_id'] = inviteId;
    data['email'] = email;
    data['config_name'] = configName;
    return data;
  }
}

class AddResponse {
  AddResponse({
    required this.errorFlag,
    required this.message,
  });

  String errorFlag;
  String message;

  factory AddResponse.fromJson(Map<String, dynamic> json) => AddResponse(
        errorFlag: json["error_flag"],
        message: json["message"],
      );
}
