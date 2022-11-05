

import 'dart:convert';

GstSign gstSignFromJson(String str) => GstSign.fromJson(json.decode(str));

String gstSignToJson(GstSign data) => json.encode(data.toJson());

class GstSign {
  GstSign({
    this.gstin,
    this.gstPortalUsername,
  });

  String gstin;
  String gstPortalUsername;

  factory GstSign.fromJson(Map<String, dynamic> json) => GstSign(
    gstin: json["gstin"],
    gstPortalUsername: json["gst_portal_username"],
  );

  Map<String, dynamic> toJson() => {
    "gstin": gstin,
    "gst_portal_username": gstPortalUsername,
  };
}
