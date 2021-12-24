import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:parking/User/payment.dart';

class ParkingDetails extends StatefulWidget {
  String headingName;

  ParkingDetails({Key? key, this.headingName = 'Mani Square'}) : super(key: key);

  @override
  _ParkingDetailsState createState() => _ParkingDetailsState();
}

class _ParkingDetailsState extends State<ParkingDetails> {
  List<bool> isBookedListA = [
    true,
    false,
    true,
    false,
    true,
  ];
  List<bool> isBookedListB = [
    true,
    false,
    true,
    false,
    true,
    true,
  ];
  List<bool> isBookedListC = [
    false,
    true,
    false,
    false,
    true,
    true,
  ];
  List<bool> isBookedListD = [
    true,
    false,
    true,
    false,
    true,
  ];

  Widget parkingLot({
    String parkingPlace = '',
    bool isBooked = false,
  }) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        color: isBooked ? Colors.red.shade200 : Colors.green.shade200,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.electric_car_outlined,
                color: isBooked
                    ? Colors.pinkAccent.shade700
                    : Colors.green.shade700,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                parkingPlace,
                style: TextStyle(
                  color: isBooked
                      ? Colors.pinkAccent.shade700
                      : Colors.green.shade700,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
          title: Text(widget.headingName, style: TextStyle(
            color: Colors.pinkAccent.shade700,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                    height: 1,
                  ),
                ),
                Text(
                  'A',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                    height: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 220,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0),
                itemCount: isBookedListA.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.2,
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    if (isBookedListA[index]) {
                      Fluttertoast.showToast(
                          msg: 'This Slot is already booked');
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentPage(),
                            maintainState: false),
                      );
                    }
                  },
                  child: parkingLot(
                    parkingPlace: 'Maddox',
                    isBooked: isBookedListA[index],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                    height: 1,
                  ),
                ),
                Text(
                  'B',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                    height: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0),
                itemCount: isBookedListB.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.2,
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    if (isBookedListB[index]) {
                      Fluttertoast.showToast(
                          msg: 'This Slot is already booked');
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentPage(),
                            maintainState: false),
                      );
                    }
                  },
                  child: parkingLot(
                    parkingPlace: 'Maddox',
                    isBooked: isBookedListB[index],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                    height: 1,
                  ),
                ),
                Text(
                  'C',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                    height: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0),
                itemCount: isBookedListC.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.2,
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    if (isBookedListC[index]) {
                      Fluttertoast.showToast(
                          msg: 'This Slot is already booked');
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentPage(),
                            maintainState: false),
                      );
                    }
                  },
                  child: parkingLot(
                    parkingPlace: 'Maddox',
                    isBooked: isBookedListC[index],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                    height: 1,
                  ),
                ),
                Text(
                  'D',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                    height: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0),
                itemCount: isBookedListD.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.2,
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    if (isBookedListD[index]) {
                      Fluttertoast.showToast(
                          msg: 'This Slot is already booked');
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentPage(),
                            maintainState: false),
                      );
                    }
                  },
                  child: parkingLot(
                    parkingPlace: 'Maddox',
                    isBooked: isBookedListD[index],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
