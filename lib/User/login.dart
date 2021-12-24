import 'package:flutter/material.dart';
import 'package:parking/User/registration.dart';
import 'package:parking/theme/bottom_bar.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import '../theme/top_bar.dart';
import 'dashboard.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LocalAuthentication auth = LocalAuthentication();
  bool? _canCheckBiometrics;
  List<BiometricType>? _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then((bool isSupported) {
      _checkBiometrics();
    });
  }

  Future<void> _checkBiometrics() async {
    late bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometrics = false;
      print(e);
    }
    if (!mounted) {
      return;
    }
    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
    if (canCheckBiometrics) {
      _getAvailableBiometrics();
    }
  }

  Future<void> _getAvailableBiometrics() async {
    late List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      availableBiometrics = <BiometricType>[];
      print(e);
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
    print('Available BioMetrics: $_availableBiometrics');
  }

  Future<void> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
          localizedReason:
              'Scan your fingerprint (or face or whatever) to authenticate',
          useErrorDialogs: true,
          stickyAuth: true,
          biometricOnly: true);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
    _cancelAuthentication();
  }

  Future<void> _cancelAuthentication() async {
    await auth.stopAuthentication();
    setState(() => _isAuthenticating = false);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            backgroundColor: Colors.green.shade200,
            elevation: 0,
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
              // Container(
              //     margin: EdgeInsets.only(
              //         top: MediaQuery.of(context).size.height-160
              //     ),
              //     child: BottomBar()
              // ),
              Align(
                alignment: Alignment.center,
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
                          height: 120,
                          width: 120,
                          color: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image(
                              fit: BoxFit.fill,
                              image:
                                  ExactAssetImage("assets/images/parking.png"),
                            ),
                          ),
                        ),
                        Container(
                            width: double.maxFinite,
                            padding: const EdgeInsets.only(
                                top: 30.0, right: 32, left: 32),
                            child: Column(children: <Widget>[
                              Container(
                                child: TextFormField(
                                  cursorColor: Colors.black,
                                  //controller: _user_email,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0)),
                                      borderSide: BorderSide(
                                          color: Colors.red.shade200, width: 1),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0)),
                                      borderSide: BorderSide(
                                          color: Colors.red.shade200),
                                    ),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(
                                      color: Colors.grey[500],
                                    ),
                                    prefixIcon: Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 15),
                                        child: Icon(
                                          Icons.email,
                                          color: Colors.black,
                                        )),
                                  ),
                                  autofocus: false,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                  child: TextField(
                                //controller: _user_password,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35.0)),
                                    borderSide: BorderSide(
                                        color: Colors.red.shade200, width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35.0)),
                                    borderSide:
                                        BorderSide(color: Colors.red.shade200),
                                  ),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    color: Colors.grey[500],
                                  ),
                                  prefixIcon: Container(
                                      margin: const EdgeInsets.only(
                                          left: 20, right: 15),
                                      child: Icon(
                                        Icons.vpn_key,
                                        color: Colors.black,
                                      )),
                                ),
                                autofocus: false,
                                obscureText: true,
                                onChanged: (text) {
                                  setState(() {
                                    //password = text;
                                    //you can access nameController in its scope to get
                                    // the value of text entered as shown below
                                    //fullName = nameController.text;
                                  });
                                },
                              )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  //padding: EdgeInsets.only(top: 5,right: 35),
                                  alignment: Alignment.centerRight,
                                  width: double.maxFinite,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  new ForgetPasswordPage()));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        'Forget Password?',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.green.shade600),
                                      ),
                                    ),
                                  )),
                              SizedBox(height: 15),
                              Container(
                                //margin: EdgeInsets.only(top: 50),
                                width: double.maxFinite,
                                height: 60,
                                child: RaisedButton(
                                  padding: EdgeInsets.all(8.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  textColor: Colors.white,
                                  color: Colors.green.shade400,
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                new DashboardPage()));
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              _isAuthenticating
                                  ? CircularProgressIndicator(
                                      color: Colors.green.shade400,
                                      strokeWidth: 2,
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        _authenticateWithBiometrics();
                                      },
                                      child: Container(
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: Colors.green[200],
                                          border: Border.all(color: Colors.green.shade900,width: 1),
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Login with Fingerprint",
                                            style: TextStyle(
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                              SizedBox(height: 20),
                              InkWell(
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "CREATE ACCOUNT",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              new RegistrationPage()));
                                },
                              ),
                              SizedBox(height: 5),
                            ])),
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
