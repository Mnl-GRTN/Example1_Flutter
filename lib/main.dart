import 'package:flutter/material.dart';
import 'reusable.dart';

void main() {
  // Running this app
  runApp(MaterialApp(
    home: const Home(),
    theme: ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey[200],
          foregroundColor: Colors.black,
          fixedSize: const Size(80, 30),
        ),
      ),
    ),
  ));
}

class Home extends StatelessWidget {
  // All on the homescreen
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Build function and the return type is Widget
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 1'),
        backgroundColor: Color.fromARGB(255, 72, 128, 102),
      ),
      body: const SingleChildScrollView(
        child: Column( 
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('hubble.jpeg'),
                  height: 200,
                  width: 200,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: GroupButton(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: GroupButton(),
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                Text('Email :'),
                Expanded(
                  child: Center(
                    child: SizedBox(
                      width: 200,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
