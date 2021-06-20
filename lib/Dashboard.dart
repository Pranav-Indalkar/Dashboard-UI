import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(90, 50, 220, 1),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black38.withOpacity(0.4),
                  Colors.black38.withOpacity(0),
                ],
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu,color: Colors.white,size: 30,),
                  Material(
                    color: Colors.white,
                    shape: CircleBorder(),
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/profile.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      )
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hii Ghulam",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        decorationStyle: TextDecorationStyle.wavy
                    ),
                  ),
                  Text(
                    "6 tasks are pending",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.blueGrey[200],
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
              child: Material(
                color: Color.fromRGBO(100, 90, 210, 1),
                elevation: 12,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 140,
                  width: size.width,
                  padding: EdgeInsets.all(20),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mobile App Design",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Text(
                        "Mike and Anna",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blueGrey[200],
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height:15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Material(
                                color: Colors.white,
                                shape: CircleBorder(),
                                child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/img_10.jpeg"),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    )
                                ),
                              ),
                              SizedBox(width: 5,),
                              Material(
                                color: Colors.white,
                                shape: CircleBorder(),
                                child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/img_15.jpeg"),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    )
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Now",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.blueGrey[300],
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:2 ,horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Monthly Review",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Material(
                    color: Colors.cyanAccent,
                    shape: CircleBorder(),
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(Icons.event,color: Colors.white,size: 26,),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 18),
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: 300,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Material(
                            color: Color.fromRGBO(100, 90, 210, 1),
                            elevation: 12,
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: (size.width - 54)/2,
                              height: 160,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "22",
                                    style: TextStyle(
                                        fontSize: 38,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Done",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.blueGrey[200],
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Material(
                            color: Color.fromRGBO(100, 90, 210, 1),
                            elevation: 12,
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: (size.width - 54)/2,
                              height: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        fontSize: 38,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Ongoing",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.blueGrey[200],
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Material(
                            color: Color.fromRGBO(100, 90, 210, 1),
                            elevation: 12,
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: (size.width - 54)/2,
                              height: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "7",
                                    style: TextStyle(
                                        fontSize: 38,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "In Progress",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.blueGrey[200],
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Material(
                            color: Color.fromRGBO(100, 90, 210, 1),
                            elevation: 12,
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: (size.width - 54)/2,
                              height: 160,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: 38,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Waiting for review",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.blueGrey[200],
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.home,color: Colors.blue[600],),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.chat_bubble,color: Colors.grey[500]),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.person,color: Colors.grey[500]),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.notifications,color: Colors.grey[500]),
                  onPressed: (){},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
