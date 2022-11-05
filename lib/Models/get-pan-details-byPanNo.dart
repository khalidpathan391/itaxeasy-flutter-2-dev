

import 'dart:convert';

PanDetails panDetailsFromJson(String str) => PanDetails.fromJson(json.decode(str));

String panDetailsToJson(PanDetails data) => json.encode(data.toJson());

class PanDetails {
  PanDetails({
    this.status,
    this.company,
  });

  String status;
  Company company;

  factory PanDetails.fromJson(Map<String, dynamic> json) => PanDetails(
    status: json["status"],
    company: Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "company": company.toJson(),
  };
}

class Company {
  Company({
    this.entity,
    this.pan,
    this.firstName,
    this.lastName,
    this.fullName,
    this.aadhaarSeedingStatus,
    this.status,
    this.category,
    this.lastUpdated,
  });

  String entity;
  String pan;
  String firstName;
  String lastName;
  String fullName;
  String aadhaarSeedingStatus;
  String status;
  String category;
  String lastUpdated;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    entity: json["@entity"],
    pan: json["pan"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    fullName: json["full_name"],
    aadhaarSeedingStatus: json["aadhaar_seeding_status"],
    status: json["status"],
    category: json["category"],
    lastUpdated: json["last_updated"],
  );

  Map<String, dynamic> toJson() => {
    "@entity": entity,
    "pan": pan,
    "first_name": firstName,
    "last_name": lastName,
    "full_name": fullName,
    "aadhaar_seeding_status": aadhaarSeedingStatus,
    "status": status,
    "category": category,
    "last_updated": lastUpdated,
  };
}
