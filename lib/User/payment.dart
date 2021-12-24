import 'package:flutter/material.dart';
import 'package:parking/User/booking_confirmation.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFFAF5F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAF5F7),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.chevron_left,
            color: Colors.green.shade700,
            size: 35,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Payment",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.pinkAccent.shade700,
              fontSize: 25,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(right: 25, left: 25),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                const Text(
                  'Payable Amount',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '₹50.00',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                        ),
                        const Text(
                          'Continue payment with',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 5, top: 15, bottom: 15, right: 20),
                          child: const Image(
                              fit: BoxFit.fill,
                              //color: AppColors.header_background,
                              image: ExactAssetImage(
                                'assets/images/paypal.png',
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 60,
                  child: RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.green.shade400,
                    onPressed: () {},
                    child: const Text(
                      "Pay By Paypal",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'OR',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Pay using Debit or Credit card',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      borderSide: BorderSide(color: Colors.green, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    //labelText: 'Email',
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  autofocus: false,
                  onChanged: (text) {
                    setState(() {
                      //email = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      borderSide: BorderSide(color: Colors.green, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    //labelText: 'Email',
                    hintText: '16 Digits Card Number',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  autofocus: false,
                  onChanged: (text) {
                    setState(() {
                      //email = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      borderSide: BorderSide(color: Colors.green, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    //labelText: 'Email',
                    hintText: 'Expiry Date',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  autofocus: false,
                  onChanged: (text) {
                    setState(() {
                      //email = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      borderSide: BorderSide(color: Colors.green, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    //labelText: 'Email',
                    hintText: 'CVV',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  autofocus: false,
                  onChanged: (text) {
                    setState(() {
                      //email = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  //margin: EdgeInsets.only(top: 50),
                  width: double.maxFinite,
                  height: 60,
                  child: RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.green.shade400,
                    onPressed: () => {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConfirmBooking(),
                          maintainState: false,
                        ),
                      ),
                    },
                    child: Text(
                      "Pay Now",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
