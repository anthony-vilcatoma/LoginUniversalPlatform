import 'package:flutter/cupertino.dart';
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
      ),
    );
  }
}
