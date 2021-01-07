import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  static const routeName = '/auth-screen';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: deviceSize.height * 3,
        child: ListView(
          children: [
            Container(
              constraints: BoxConstraints.tight(Size.square(400)),
              height: deviceSize.height * 1,
              child: Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    child: Container(
                      //margin: const EdgeInsets.all(10.0),
                      height: deviceSize.height * .3,
                      width: deviceSize.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/event.jpg',
                          ),
                        ),
                      ),
                      constraints: BoxConstraints.expand(height: 250.0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Events',
                      style: TextStyle(
                        fontSize: 18,
                        // fontWeight:FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // height:10,),

                  Positioned(
                    left: 9.0,
                    top: 220.0,
                    right: 9,
                    child: Card(
                      //borderOnForeground: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(
                          2,
                        ),
                        margin: const EdgeInsets.all(10.0),
                        height: deviceSize.height * .4,
                        width: deviceSize.width,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                        ),
                        child: Column(children: [
                          Text(
                            '2020 Mac NT Senior Meet ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.orange,
                                size: 12,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'MISD natatorium, Mansfield, TX, USA',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.orange,
                                size: 12,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '12:00-15:00 PM',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1)),
                    child: Container(
                      alignment: Alignment.center,
                      // margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white10,
                      ),

                      height: 55,
                      width: 100,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Dec 6',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          Text('Start date',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                //  fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1)),
                    child: Container(
                      alignment: Alignment.center,
                      // margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white10,
                      ),

                      height: 50,
                      width: 100,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('122',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          Text('total events',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                //  fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1)),
                    child: Container(
                      alignment: Alignment.center,
                      // margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white10,
                      ),

                      height: 50,
                      width: 100,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Dec 2',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          Text('Reg-Deadline',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                //  fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 22,
              child: Text('Description',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: 5),
            Container(
              height: 50,
              child: Text(
                  'Curabitur urna tortor, consectetor vel velit, elefend imperdiet velit. Pellentesque ac elit.Praesent ultricies felis vitae lorem dictum, Curabitur urna totor.....',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: 2),
            Container(
              height: 20,
              child: Text('Read more',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: 10),
            Container(
              height: 20,
              child: Row(
                children: [
                  Text('Events',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '8  days',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: deviceSize.width * 90,
              //  height:deviceSize.height*2,
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: SingleChildScrollView(
                child: Row(
                  // scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)),
                      child: Container(
                        alignment: Alignment.center,
                        // margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white10,
                        ),

                        height: 80,
                        width: 150,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              height: 50,
                              width: 30,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Day',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              height: 50,
                              width: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '06 dec, 2020',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 12,
                                        color: Colors.deepOrange,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        '8',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        'Session',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)),
                      child: Container(
                        alignment: Alignment.center,
                        // margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white10,
                        ),

                        height: 80,
                        width: 150,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              height: 50,
                              width: 30,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      //fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  Text(
                                    'Day',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              height: 50,
                              width: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '07 dec, 2020',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 12,
                                        color: Colors.deepOrange,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        '6',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        'Session',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /*Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)),
                      child: Container(
                        alignment: Alignment.center,
                        // margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white10,
                        ),

                        height: 80,
                        width: 150,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              height: 50,
                              width: 30,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Day',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              height: 50,
                              width: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '06 dec, 2020',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 12,
                                        color: Colors.deepOrange,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        '8',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        'Session',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)),
                      child: Container(
                        alignment: Alignment.center,
                        // margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white10,
                        ),

                        height: 80,
                        width: 150,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              height: 50,
                              width: 30,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Day',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              height: 50,
                              width: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '06 dec, 2020',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 12,
                                        color: Colors.deepOrange,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        '8',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        'Session',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)),
                      child: Container(
                        alignment: Alignment.center,
                        // margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white10,
                        ),

                        height: 80,
                        width: 150,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              height: 50,
                              width: 30,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Day',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              height: 50,
                              width: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '06 dec, 2020',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 12,
                                        color: Colors.deepOrange,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        '8',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        'Session',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),*/
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
