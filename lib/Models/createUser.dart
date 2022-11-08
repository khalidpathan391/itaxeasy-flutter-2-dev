// // To parse this JSON data, do
// //
// //     final CreateUser = CreateUserFromJson(jsonString);

// import 'dart:convert';

// CreateUser registerFromJson(String str) => CreateUser.fromJson(json.decode(str));

// String registerToJson(CreateUser data) => json.encode(data.toJson());

// class CreateUser {
//   CreateUser({
//     this.firstName,
//     this.lastName,
//     this.pan,
//     this.email,
//     this.password,
//     this.phone,
//     this.pincode,
//     this.state,
//     this.aadhar,
//   });

//   String firstName;
//   String lastName;
//   String pan;
//   String email;
//   String password;
//   String phone;
//   String pincode;
//   String state;
  
//   String aadhar;

//   factory CreateUser.fromJson(Map<String, dynamic> json) => CreateUser(
//         firstName: json["first_name"],
//         lastName: json["last_name"],
//         pan: json["pan"],
//         email: json["email"],
//         password: json["password"],
//         phone: json["phone"],
//         pincode: json["pincode"],
//         state: json["state"],
//         aadhar: json["aadhar"],
//       );

//   Map<String, dynamic> toJson() => {
//         "first_name": firstName,
//         "last_name": lastName,
//         "pan": pan,
//         "email": email,
//         "password": password,
//         "phone": phone,
//         "pincode": pincode,
//         "state": state,
//         "aadhar": aadhar,
//       };
// }
