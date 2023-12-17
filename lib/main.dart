import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesgin/profile.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
          home: MyApp(),
      ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List tabs = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      backgroundImage: NetworkImage("https://zelda.nintendo.com/links-awakening/assets/img/home/hero-char.png"),
                      radius: 30,
                    ),
                    title: Text("Lazy", style: TextStyle(fontWeight: FontWeight.bold),),
                    iconColor: Colors.blueAccent,
                    subtitle: Text("@LazyLearnerSh"),
                    subtitleTextStyle: TextStyle(color: Colors.grey),
                    trailing: Icon(Icons.arrow_forward_ios),
                    tileColor: Colors.grey[300],
                    hoverColor: Colors.red,
                    focusColor: Colors.green,
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));
                    },
                    onLongPress: (){
                      print("object");
                    },
                    isThreeLine: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    backgroundImage: NetworkImage("https://ssb.wiki.gallery/images/5/53/Young_Link.png"),
                    radius: 30,
                  ),
                  title: Text("Kimdir", style: TextStyle(fontWeight: FontWeight.bold),),
                  iconColor: Colors.blueAccent,
                  subtitle: Text("@KimdirniProfili"),
                  subtitleTextStyle: TextStyle(color: Colors.grey),
                  trailing: Icon(Icons.arrow_forward_ios),
                  tileColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));
                  },
                  onLongPress: (){
                    print("object");
                  },
                  isThreeLine: true,
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    backgroundImage: NetworkImage("https://ssb.wiki.gallery/images/5/53/Young_Link.png"),
                    radius: 30,
                  ),
                  title: Text("Kimdir", style: TextStyle(fontWeight: FontWeight.bold),),
                  iconColor: Colors.blueAccent,
                  subtitle: Text("@KimdirniProfili"),
                  subtitleTextStyle: TextStyle(color: Colors.grey),
                  trailing: Icon(Icons.arrow_forward_ios),
                  tileColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));
                  },
                  onLongPress: (){
                    print("object");
                  },
                  isThreeLine: true,
                ),
                Center(
                  child: Text("Hello world 1 3 45 6", style: GoogleFonts.sunshiney(fontSize: 50, color: Colors.green, fontWeight: FontWeight.bold, letterSpacing: 1.5),),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
