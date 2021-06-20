import 'package:dashboard_ui/Dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.blue.withOpacity(0.1),
                  Colors.blue.withOpacity(0),
                ],
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter
            )
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 40, 40, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      height: 200,
                      width: 179,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Logo.png"),
                            fit: BoxFit.contain),
                      ),
                  ),
                ),
              ),
              SizedBox(height: 75,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Manage your",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w700,
                      decorationStyle: TextDecorationStyle.wavy
                    ),
                  ),
                  Text(
                    "daily tasks",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Team and Project management with",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey[800],
                        fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "solution providing App. ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey[800],
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Material(
                elevation: 12,
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.blue.withOpacity(0.1),
                            Colors.blue.withOpacity(0),
                          ],
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter
                      )
                  ),
                  width: 220,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 12,),
                        Text(
                          "Get Started",
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_forward,size: 28,color: Colors.deepPurple,)
                      ],
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
