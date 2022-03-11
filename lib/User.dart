class User {
  // {"id":3478,"name":"The Hon. Usha Guneta","email":"guneta_usha_the_hon@ernser-quigley.name","gender":"male","status":"active"}

  late int id;
  late String name;
  late String email;
  late String gender;
  late String status;

  User.fromJson(Map<String, dynamic> json){
    id = json["id"];
    name = json["name"];
    email = json["email"];
    gender = json["gender"];
    status = json["status"];
  }
}
