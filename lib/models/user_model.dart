class UserModel {
  int? id;
  String? name;
  String? email;
  String? username;
  String? profilePhotoUrl;
  String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.profilePhotoUrl,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePhotoUrl = json['profile_photo_path'] ?? json['profile_photo_url'];
    token = json['access_token'];
  }

  // factory UserModel.fromJSon(Map<String, dynamic> json) => UserModel(
  //       id: json['id'],
  //       name: json['name'],
  //       email: json['email'],
  //       username: json['username'],
  //       profilePhotoUrl: json['profile_photo_url]'],
  //       token: json['access_token'],
  //     );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilePhotoUrl,
      'access_token': token,
    };
  }
}
