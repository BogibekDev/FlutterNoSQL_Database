class Account {
  String email;
  String phoneNumber;
  String address;

  Account(this.email, this.phoneNumber, this.address);

  Account.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        phoneNumber = json['phoneNumber'],
        address = json['address'];

  Map<String, dynamic> toJson() =>
      {'email': email, 'phoneNumber': phoneNumber, 'address': address};
}
