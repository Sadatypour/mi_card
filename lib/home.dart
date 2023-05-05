import 'package:flutter/material.dart';
import 'package:mi_card/const.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcolor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/azam.jpg"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "AZAM SADAT   SADATYPOUR",
              style: TextStyle(
                  color: Colors.pink.shade700,
                  fontFamily: "pacifico",
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "F L U T T E R     D E V E L O P E R",
              style: TextStyle(
                color: Colors.pink.shade300,
              ),
            ),
            SizedBox(
              height: 30,
              width: 160.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            textfield(text: "0910***732", icon: Icons.send_to_mobile),
            textfield(text: "azam.s.s.0160@gmail.com", icon: Icons.email)
          ],
        ),
      ),
    );
  }
}

class textfield extends StatelessWidget {
  final String text;
  final icon;

  const textfield({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pink.shade50, borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(13.0),
      padding: EdgeInsets.all(9.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: bcolor,
          ),
          SizedBox(
            width: 50,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.pink.shade300,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "pacifico"),
          )
        ],
      ),
    );
  }
}
