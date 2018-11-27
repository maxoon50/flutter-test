import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("circle"),
      ),
      body: Center(
          child: CircleImages()
      ) ,
    );
  }
}


class CircleImages extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CircleWidgets();
  }
}

class CircleWidgets extends State<CircleImages>{

  String getImage(n) {
      return n%2 == 0 ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ-FFB0UueT2CoKP2_7P-EITVYryXYqwsHYdFL8wYxKtg4JXRh":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkweUU3OsAAs5wZmlmqgBD5NFa61FExeAapeNESmWJgWipvfOSDg";
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for(var x = 0 ; x < 1000 ; x++){
      widgets.add(Container(
          height: 360.0,
          width: 160.0,
          margin: EdgeInsets.all(
              6.0
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              boxShadow:[
                new BoxShadow(
                    color: Color.fromARGB(100, 0, 0, 0),
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0)
                )
              ],
              border: Border.all(
                  width: 2.0,
                  style:BorderStyle.solid ,
                  color: Color.fromARGB(255, 0 , 0, 0)
              ),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image:  NetworkImage(getImage(x))
              )
          )
      )
      );
    }
    return Container(
        height: 360.0,

        child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(5.0),
            children: widgets
        )
    );



  }
}