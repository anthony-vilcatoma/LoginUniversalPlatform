import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UniversalPlatform.isWeb ? WebScreen() : AndroidScreen(),
    );
  }
}

class AndroidScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}

class WebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            "https://www.nicepng.com/png/full/351-3513293_simple-branding-bank.png",
            width: 100,
            height: 100,
          ),
          SizedBox(height: 7.0),
          Text("SIMPLE",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 20.0),
          Container(
            width: 300,
            child: Column(
              children: [
                Container(
                  height: 50.0,
                  color: Colors.white,
                  child: CupertinoTextField(
                    placeholder: "Username",
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 50.0,
                  color: Colors.white,
                  child: CupertinoTextField(
                    placeholder: "Passphrase",
                    obscureText: true,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          SizedBox(
              width: 300,
              child: CupertinoButton(
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color.fromARGB(
                      255, 41, 163, 211), // Color de fondo del botón
                  onPressed: () {})),
          SizedBox(height: 20.0),
          Text("Reset your passphrase?",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
        ],
      )),
    );
  }
}
