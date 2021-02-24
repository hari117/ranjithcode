import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:flutter_app/api_call.dart';
import 'package:flutter_app/employe_card.dart';
import 'package:flutter_app/auto_genarated_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6Ilg1ZVhrNHh5b2pORnVtMWtsMll0djhkbE5QNC1jNTdkTzZRR1RWQndhTmsifQ.eyJleHAiOjE2MTQxODQ0NDcsIm5iZiI6MTYxNDE4MDg0NywidmVyIjoiMS4wIiwiaXNzIjoiaHR0cHM6Ly9kb3hjcHJhbmlrYWwuYjJjbG9naW4uY29tLzk5OWM3ZTVlLTdmMWUtNGVkMy1hYzczLTQxYWYwODQ5YTcxOC92Mi4wLyIsInN1YiI6ImVmMjNkYjE4LWMyYzktNGY4Ni1hZjY0LWQwOTA4ZDY4NDhjMiIsImF1ZCI6IjhmZWViNjI1LTZmNWUtNGM5Ny1hY2FlLWNmYzg0ZjBmMzAwMSIsImFjciI6ImIyY18xX3NpZ251cHNpZ2luMSIsImlhdCI6MTYxNDE4MDg0NywiYXV0aF90aW1lIjoxNjE0MTgwODQ1LCJlbWFpbHMiOlsiZGlsaXBza3I5NUBnbWFpbC5jb20iXSwiYXRfaGFzaCI6Ik14Yzd1SHNJY1pBV0dCUDJidllOZGcifQ.TI7DgPELA2pX0aXXX-RRulXqXqRYoIn0KLtgL2R-txUiMVanHdmVRBkbbbenA1HP4km2NAxMQjVp5aJeXHJP_c1igUlXYp7_aTHjZzTZvf4xZ1edbO6K_whahiax6iluyTSLrxT0-ms__6WD1kKS3NDx7QZcZ8LfWnRa75MXm0AwY1caRKGLi_6xNANvb6EgKwV_eV0ZeKrPRnJvyBHN42KcAJkapqtyFrWPRNwDSl-m7PHihBFmA3VqORdZBk81cFbyrWiW8pei0si_7PbW4X1hoD5eHgx5M5PGKooiK4UectzOxiF46-IXA7I7cJr-fAgVGj1mencfuWvvho3izg";

  Employe employe;

  @override
  void initState()  {
    call();
  }

  call()async{
    employe = await $apiService.requestData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView.separated(
        itemBuilder: (context, index) {
          return EMPCARD(
              employe.data[index].id,
              employe.data[index].employeeName,
              employe.data[index].employeeAge,
              employe.data[index].employeeSalary);
        },
        itemCount: employe.data.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            color: Colors.red,
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => callJWT,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  callJWT() {
    Map<String, String> a = {"name": "hari"};
    print(a["name"]);

    // print("button called");
    // Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    // decodedToken.map((key, value) {
    //   List a=decodedToken["emails"];
    //   print(a[0]);
    // });
  }
}
