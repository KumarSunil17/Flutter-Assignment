import 'package:flutter/material.dart';

class FormDialog extends StatefulWidget{
  @override
  FormDialogState createState() {
    return new FormDialogState();
  }
}

class FormDialogState extends State<FormDialog> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obsecureText = true;

  _toggle(){
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.mail_outline, size: 30.0,),
                Flexible(
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.55,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black
                      ),
                      controller: usernameController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter a Username",
                          hintStyle: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 10.0)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.7,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black38,
                    width: 1.0,
                  )
              ),
            ),
            Row(
              children: <Widget>[
                Icon(Icons.lock, size: 30.0,),
                Flexible(
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.55,
                    child: TextField(
                      obscureText: _obsecureText,
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black54
                      ),
                      controller: passwordController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Pasword",
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 10.0)
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: _toggle,
                  child: _obsecureText ?
                  Image(
                    image: AssetImage('show_password.png'),
                    width: 25.0,
                    height: 25.0,
                    color: Colors.black54,) :
                  Image(
                    image: AssetImage('hide_password.png'),
                    width: 25.0,
                    height: 25.0,
                    color: Colors.black54,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}