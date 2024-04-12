class UserData {
  final String? username;
  final String? email;
  final String? phone;
  final String? address;
  final String? image;

  UserData({
    this.username,
    this.email,
    this.phone,
    this.address,
    this.image,
  });

  factory UserData.toJson() {
    return UserData(
      username: "",
      email: "",
      phone: "",
      address: "",
      image: "",
    );
  }

  factory UserData.fromJson(Map<String?, dynamic> json) {
    return UserData(
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
      image: json["image"],
    );
  }
}
