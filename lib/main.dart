import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.teal,
      body: MyCard(),
    ),
  ));
}

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/a.jpg'),
            ),
            Text(
              'Amit Mishra',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(color: Colors.white),
            ),
            Container(
            padding: EdgeInsets.fromLTRB(10, 4, 1, 4),
              color: Colors.white,
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(35,20,35,10),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.phone_in_talk_rounded,size: 30,),
                  SizedBox(
                    width: 20,
                  ),
                  Text('+91 8368747244'),
                ],
              ),

              
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 4, 1, 4),
              color: Colors.white,
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(35,10,35,20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Icon(Icons.mail_outline_sharp,size: 30,),
                  SizedBox(
                    width: 20,
                  ),
                  Text('amitmishra0323@gmial.com'),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
