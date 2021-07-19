import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

//  void _incrementCounter() {
  //  setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    //  _counter++;
   // });
  //}
  int _selectedPage = 0;
  final List<Widget> pageList = [
    LandingPage(),
    SearchPage(),
    ScanPage(),
    NewCratePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Storage Manager'),
      ),
      body: IndexedStack(
        index: _selectedPage,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search Item'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            title: Text('Scan Code'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            title: Text('Add New'),
          )
        ],
          currentIndex: _selectedPage,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
      )
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}

//Actual displayed home page
class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context){
    //super.build(context);

    return Scaffold(
      body: Center(
        child: Text(
          'home page',
        ),
      ),
    );
  }
}

//Search by item page
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text(
          'search page',
        ),
      ),
    );
  }
}

//Scan QR code page
class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text(
          'scan page',
        ),
      ),
    );
  }
}

//Store a new Item page
class NewCratePage extends StatefulWidget {
  @override
  _NewCratePageState createState() => _NewCratePageState();
}

class _NewCratePageState extends State<NewCratePage> {
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text(
          'new crate',
        ),
      ),
    );
  }
}