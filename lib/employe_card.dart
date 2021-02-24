
import 'package:flutter/material.dart';

class EMPCARD extends StatelessWidget {

  int id;
  String employeeName;
  int employeeAge;
  int employeeSalary;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(" $id "),
          Text(employeeName),
          Text("$employeeAge"),
          Text("$employeeSalary")
        ],
      ),
    );
  }

  EMPCARD(this.id, this.employeeName, this.employeeAge, this.employeeSalary);
}
