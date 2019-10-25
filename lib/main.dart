import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
          home: Scaffold(
          backgroundColor: Colors.teal,
          body:  SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/franchy.jpg'),
                    ),
                    Text(
                      'Franchy Reyes',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'FLUTTER DEVELOPER',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          color: Colors.teal.shade100,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                      width: 100.0,
                      child: Divider(
                        color: Colors.teal.shade100,
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                        title: Text(
                            '829-xxx-xxxx',
                            style: TextStyle(
                              color: Colors.teal.shade100,
                              fontFamily: 'SourceSansPro',
                              fontSize: 20.0,
                            ),
                        ),
                      )
                    ),
                    Card(
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.email,
                            color: Colors.teal,
                          ),
                          title: Text(
                            'franchyjavier@gmail.com',
                            style: TextStyle(
                              color: Colors.teal.shade100,
                              fontFamily: 'SourceSansPro',
                              fontSize: 20.0,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
          ),
        ),
    );
  }

}