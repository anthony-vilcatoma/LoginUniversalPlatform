import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Text("Login",
                style: TextStyle(fontFamily: 'GreatVibes', fontSize: 40)),
            SizedBox(height: 20.0),
            Container(
              width: 300,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Username',
                        fillColor: Color.fromRGBO(226, 226, 226, 1),
                        filled: true),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        fillColor: Color.fromRGBO(226, 226, 226, 1),
                        filled: true),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(313, 45),
                  backgroundColor: Color.fromARGB(239, 88, 26, 235)),
            ),
            SizedBox(height: 20.0),
            Text(
              "Forgot password?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text("Sign up Form",
                style: TextStyle(
                  color: Colors.purple,
                  decoration: TextDecoration.underline,
                ))
          ],
        )),
      ),
    );
  }
}
