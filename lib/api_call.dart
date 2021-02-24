
import 'package:http/http.dart' as http;
import 'package:flutter_app/auto_genarated_model.dart';
class ApiService
{

  final  url="http://dummy.restapiexample.com/api/v1/employees";

  requestData()
 async {
    var responce =await  http.get(url);
       var fulldata=responce.body;
       Employe emp= employeFromJson(fulldata);

       return emp;


  }





}

final $apiService=ApiService();