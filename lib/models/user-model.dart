class UserModel {
  String? email;
  String? username;
  String? uid;
  int? exp;
  String? picture;

  UserModel(
      {this.email,
      this.username,
      this.uid,
      this.exp,
      this.picture});
  factory UserModel.fromMap(map){
    return UserModel(
      email: map['email'],
      username: map['username'],
      uid:map['uid'],
      exp: map['exp'],
      picture: map['picture']
    );
  }
}
