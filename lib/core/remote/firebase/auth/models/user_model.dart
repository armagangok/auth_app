class RenewedUser {
  final String? id;
  final String? email;

  RenewedUser({
    required this.id,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {"userID": id};
  }
}
