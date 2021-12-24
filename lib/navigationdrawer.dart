import 'package:flutter/material.dart';
import 'package:parking/User/my_booking.dart';
import 'package:parking/theme/common.dart';
import 'package:parking/user/login.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: Colors.green[600],
            padding: EdgeInsets.all(50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(
                fit: BoxFit.fill,
                image: ExactAssetImage("assets/images/parking.png"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.verified_user, color: Colors.red[300],),
            title: Text('Profile', style: TextStyle(color: Colors.grey[700],fontSize: 16, letterSpacing: 0.3),),
            onTap: () => {
              Navigator.of(context).pop(),
              //Navigator.push( context, MaterialPageRoute( builder: (context) => new EditProfilePage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.book_sharp, color: Colors.red[300],),
            title: Text('My Booking', style: TextStyle(color: Colors.grey[700],fontSize: 16, letterSpacing: 0.3),),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push( context, MaterialPageRoute( builder: (context) => new MyBooking()))
            },
          ),
          ListTile(
            leading: Icon(Icons.payment, color: Colors.red[300],),
            title: Text('Payment History', style: TextStyle(color: Colors.grey[700],fontSize: 16, letterSpacing: 0.3),),
            onTap: () => {
              Navigator.of(context).pop(),
              //Navigator.push( context, MaterialPageRoute( builder: (context) => new PaymentHistory()))
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.red[300],),
            title: Text('Contact Us', style: TextStyle(color: Colors.grey[700],fontSize: 16, letterSpacing: 0.3),),
            onTap: () => {
              Navigator.of(context).pop(),
              //Navigator.push( context, MaterialPageRoute( builder: (context) => new ContactUs()))
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.red[300],),
            title: Text('About Us', style: TextStyle(color: Colors.grey[700],fontSize: 16, letterSpacing: 0.3),),
            onTap: () => {
              Navigator.of(context).pop(),
              //Navigator.push( context, MaterialPageRoute( builder: (context) => new AboutUs()))
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.red[300],),
            title: Text('Logout', style: TextStyle(color: Colors.grey[700],fontSize: 16, letterSpacing: 0.3),),
            onTap: () => {
              Navigator.of(context).pop(),
              logout_out(context)
            },
          ),
        ],
      ),
    );
  }

  logout_out(context){
    showMyDialog(context);
  }

  Future<void> showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Attention!', style: TextStyle(color:Colors.red[900], fontWeight: FontWeight.w600),),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure, you want to logout?', style: TextStyle(color:Colors.grey[700], fontWeight: FontWeight.w400),),
//                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('No, wait!', style: TextStyle(color:Colors.red[900]),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Yes, Logout!', style: TextStyle(color:Colors.red[900]),),
              onPressed: () {
                Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => new LoginPage()), );
              },
            ),
          ],
        );
      },
    );
  }

}
