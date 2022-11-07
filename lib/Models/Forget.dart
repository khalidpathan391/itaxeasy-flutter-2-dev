class Forget {
  String email;

  Forget({
    this.email,
  });

  Map<String, dynamic> toJson() {
    return {
      "email": email,
    };
  }
}
