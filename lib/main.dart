import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Easy Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool currentColor = false;
  bool currentColor2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Text(
                "Desenvolvimento mobile",
                style:
                    TextStyle(color: currentColor ? Colors.red : Colors.blue),
              ),
              onTap: () {
                setState(() {
                  currentColor = !currentColor;
                });
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                      "You choosed ${currentColor ? 'red' : 'blue'} for the text"),
                  behavior: SnackBarBehavior.floating,
                ));
              },
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              child: Text(
                "Desenvolvimento mobile",
                style: TextStyle(
                    color: currentColor2 ? Colors.black : Colors.pink),
              ),
              onTap: () {
                setState(() {
                  currentColor2 = !currentColor2;
                });
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                      "You choosed ${currentColor2 ? 'black' : 'pink'} for the text"),
                  behavior: SnackBarBehavior.floating,
                ));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Trabalho de Desenvolvimento Mobile"),
            behavior: SnackBarBehavior.floating,
          ));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
