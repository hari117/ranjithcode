import 'dart:convert';

Employe employeFromJson(String str) => Employe.fromJson(json.decode(str));

String employeToJson(Employe data) => json.encode(data.toJson());

class Employe {
  Employe({
    this.status,
    this.data,
    this.message,
  });

  String status;
  List<Datum> data;
  String message;

  factory Employe.fromJson(Map<String, dynamic> json) => Employe(
    status: json["status"] == null ? null : json["status"],
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message == null ? null : message,
  };
}

class Datum {
  Datum({
    this.id,
    this.employeeName,
    this.employeeSalary,
    this.employeeAge,
    this.profileImage,
  });

  int id;
  String employeeName;
  int employeeSalary;
  int employeeAge;
  String profileImage;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"] == null ? null : json["id"],
    employeeName: json["employee_name"] == null ? null : json["employee_name"],
    employeeSalary: json["employee_salary"] == null ? null : json["employee_salary"],
    employeeAge: json["employee_age"] == null ? null : json["employee_age"],
    profileImage: json["profile_image"] == null ? null : json["profile_image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "employee_name": employeeName == null ? null : employeeName,
    "employee_salary": employeeSalary == null ? null : employeeSalary,
    "employee_age": employeeAge == null ? null : employeeAge,
    "profile_image": profileImage == null ? null : profileImage,
  };
}
