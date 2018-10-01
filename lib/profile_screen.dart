import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget{

  _print(String s, String t) {
    return Column(
      children: <Widget>[
        Text(s,style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 30.0
          ),
        ),
        Text(t,style: TextStyle(
            color: Colors.white,
            fontSize: 15.0
        ),),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFF119ED9),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  child: Image(image:AssetImage('logo.png')),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.5906,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(1.0, 0.0),
                      colors: [Color(0xFF119ED9), Color(0xFF1F0090)],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          _print('12', 'posts'),
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Scott Colon',
                                  style: TextStyle(
                                      fontSize: 50.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              Text('Photographer',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                         Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                               _print('23', 'Followers'),
                               SizedBox(
                                 height: MediaQuery.of(context).size.height*0.08,
                               ),
                               _print('56', 'Following'),
                           ],
                         ),
                         Column(
                           children: <Widget>[
                             Container(
                               width: MediaQuery.of(context).size.width*0.7,
                               padding: EdgeInsets.all(16.0),
                               child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                                 style: TextStyle( fontSize: 16.0,
                                   color: Colors.white,),
                               ),
                             ),
                           ],
                         ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),


            Positioned(
              top:MediaQuery.of(context).size.height*0.265,
              left: MediaQuery.of(context).size.width*0.1,
              child:FloatingActionButton(
                onPressed: (){

                },
                elevation: 10.0,
                backgroundColor: Color(0xFF1F0090),
                child: Icon(Icons.add,color: Colors.white,size: 50.0,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

