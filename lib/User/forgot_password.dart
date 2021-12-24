import 'package:flutter/material.dart';
import 'package:parking/theme/bottom_bar.dart';
import '../theme/top_bar.dart';

class ForgetPasswordPage extends StatefulWidget{
  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            backgroundColor: Colors.green[200],
            elevation: 0,
            centerTitle: true,
            title: Text("Reset Password", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          child: Stack(
            children: <Widget>[
              Container(
                child: TopBar(),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height-160
                  ),
                  child: BottomBar()
              ),
              Align(
                alignment: Alignment.center,
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0,50,0,10),
                          height: 120,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image(
                              fit: BoxFit.fill,
                              image: ExactAssetImage("assets/images/parking.png"),
                            ),
                          ),
                        ),
                        Container(
                            width: double.maxFinite,
                            padding: const EdgeInsets.only(top: 30.0,right: 32,left: 32),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: TextFormField(
                                      cursorColor: Colors.black,
                                      //controller: _user_email,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                                          borderSide: BorderSide(color: Colors.red.shade200, width: 1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                                          borderSide: BorderSide(color: Colors.red.shade200),
                                        ),
                                        //labelText: 'Email',
                                        hintText: 'Email',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        prefixIcon: Container(
                                            margin: const EdgeInsets.only(left: 20, right: 15),
                                            child: Icon(
                                              Icons.email,
                                              color: Colors.black,
                                            )
                                        ),
                                      ),
                                      autofocus: false,
//                                onChanged: (text) {
//                                  setState(() {
//                                    email = text;
//                                    //you can access nameController in its scope to get
//                                    // the value of text entered as shown below
//                                    //fullName = nameController.text;
//                                  });
//                                },
                                    ),
                                  ),
                                  SizedBox(
                                      height: 30
                                  ),
                                  Container(
                                    //margin: EdgeInsets.only(top: 50),
                                    width: double.maxFinite,
                                    height: 60,
                                    child: RaisedButton(
                                      padding: const EdgeInsets.all(8.0),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(30.0),
                                      ),
                                      textColor: Colors.white,
                                      color: Colors.green[400],
                                      onPressed: (){},
                                      child: new Text("Send Reset Link",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                        ),
                                      ),

                                    ),
                                  ),

                                  SizedBox(
                                      height: 10
                                  ),
                                ]
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}