class User {
  final String firstName;
  final String lastName;
  final String age;
  final String ok;
  final String oko;

  const User({
     this.firstName,
     this.lastName,
     this.age,
     this.ok,
     this.oko,
  });

  User copy({
    String firstName,
    String lastName,
    String age,
    String ok,
    String oko,
  }) =>
      User(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        age: age ?? this.age,
        ok: ok ?? this.ok,
        oko: oko ?? this.oko,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          ok == other.ok &&
          oko == other.oko &&
          age == other.age;

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode ^ age.hashCode  ^ ok.hashCode ^ oko.hashCode;
}
