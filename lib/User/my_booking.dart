import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:parking/User/booking_confirmation.dart';
import 'package:parking/User/dashboard.dart';

class MyBooking extends StatefulWidget {
  const MyBooking({Key? key}) : super(key: key);

  @override
  _MyBookingState createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {

  List<dynamic> places = [
    {
      "name": "Mani Square",
      "address" : "Kolkata",
      "date": "21-12-2021",
      "time": "12:30pm",
      "price": "₹50"
    },
    {
      "name": "Axis Mall",
      "address" : "Kolkata",
      "date": "22-12-2021",
      "time": "2:30pm",
      "price": "₹60"
    },
    {
      "name": "Acropolis Mall",
      "address" : "Kolkata",
      "date": "23-12-2021",
      "time": "5:30pm",
      "price": "₹30"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF5F7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
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
          backgroundColor: Color(0xFFFAF5F7),
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Text('My Booking', style: TextStyle(
            color: Colors.pinkAccent.shade700,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Column(
            children: List.generate(places.length, (index) {
              return GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    height: 180,
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        const BoxShadow(
                            color: Colors.black,
                            spreadRadius: -2.0,
                            blurRadius: 12.0),
                      ],
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.grey.shade300,
                            Color(0xFFf5f5f5),
                            Colors.white
                          ]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: 'Name: ',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: places[index]['name'], style: TextStyle(height: 1.35, letterSpacing: 0.3,fontSize: 18,color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: 'Address: ',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: places[index]['address'], style: TextStyle(height: 1.35, letterSpacing: 0.3,fontSize: 18,color: Colors.black)),
                              ],
                            ),
                          )
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: 'Date: ',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: places[index]['date'], style: TextStyle(height: 1.35, letterSpacing: 0.3,fontSize: 18,color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: 'Time: ',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: places[index]['time'], style: TextStyle(height: 1.35, letterSpacing: 0.3,fontSize: 18,color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: RichText(
                            text: TextSpan(
                              text: 'Price: ',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: places[index]['price'], style: TextStyle(height: 1.35, letterSpacing: 0.3,fontSize: 18,color: Colors.black)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => new ConfirmBooking()));
                  }
              );
            }),
          ),
          SizedBox(
            height: 12,
          )
        ],
      ),
      /*Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.red.shade900,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.green.shade900,
                      Colors.greenAccent.shade200,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_road_outlined,
                    size: 45,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Your Booking is confirmed',
                        style: TextStyle(
                          color: Colors.pinkAccent.shade700,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Slot No: 125',
                        style: TextStyle(
                          color: Colors.pinkAccent.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              child: Center(
                child: Image.asset(
                  'assets/images/Qr.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Scan this QR code to print',
                style: TextStyle(
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),*/
    );
  }
}
