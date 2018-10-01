import 'package:assignment_app/raised_gradiant_button.dart';
import 'package:flutter/material.dart';
import 'package:assignment_app/form_dilog.dart';

class LoginScreen extends StatefulWidget{

  @override
  LoginScreenState createState() {
    return new LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F0090),
      body: ListView(
        scrollDirection: Axis.vertical,
        addRepaintBoundaries: true,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(1.0, 0.4),
                colors: [Color(0xFF119ED9), Color(0xFF1F0090)],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('logo.png'),
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width,
                ),
                Stack(
                  children: <Widget>[
                    Card(
                      elevation: 5.0,
                      margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child:Container(
                        height:MediaQuery.of(context).size.width*0.5,
                        child: FormDialog(),
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.width*0.535,
                        left: MediaQuery.of(context).size.width*0.22,
                        child: RaisedGradientButton(
                          height: MediaQuery.of(context).size.height*0.535,
                          width: MediaQuery.of(context).size.width*0.55,
                          child: Text('LOGIN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 27.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: (){
                            Navigator.of(context).pushNamed('profile');
                            },
                          gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.7, 0.4),
                          colors: [Color(0xFF1F0090), Color(0xFF119ED9),],
                        )
                    )
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),

    );
  }

}