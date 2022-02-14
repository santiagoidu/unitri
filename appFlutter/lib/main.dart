import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unitri',
      theme: ThemeData(   
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const ({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class MainPageState extends State<MainPage> {
 
  SharedPreferences sharedPreferences;

  checkLoginStatus() async {
    sharedPreferences = await sharedPreferences.getInstance();
    if(sharedPreferences.getString("token") == null){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unitri", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              sharedPreferences.clear();
              sharedPreferences.commit();
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
            },
            child: Text("Logout", style: TextStyle(color: Colors.white),),
          )
        ]
      ),
      body: Center(child: Text("Unitri")),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Unitri"),
              accountEmail: new Text("unitri@unitri.edu.com")
              ),
              new ListTile(title: new Text("Lista Unitri"),
              trailing: new Icon(Icon.list),
              onTap: () {},
              ),
              new ListTile(title: new Text("Add a Lista da unitri"),
              trailing: new Icon(Icon.add),
              onTap: () {},
              ),
              new ListTile(title: new Text("Registrar usuario da Unitri"),
              trailing: new Icon(Icon.add),
              onTap: () {},
              ),
          ],
        ),
      ),
    );
  } 
}