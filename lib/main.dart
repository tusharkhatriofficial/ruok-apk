import 'package:flutter/material.dart';
import 'package:ruok/constants/constants.dart';
import 'package:ruok/screens/no.dart';
import 'package:ruok/screens/yes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RUOK',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xff336699),
          secondary: const Color(0xff336699),
        ),

      ),
      home: const MyHomePage(title: 'RUOK'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: custom_grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Are You",
              style: TextStyle(
              fontSize: width/10,
                color: custom_white,
            ),
            ),
            Text(
                "OKAY?",
                style: TextStyle(
                fontSize: width/5,
                  color: custom_blue,
              ),
            ),
            SizedBox(height: width/10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const YesScreen()),
                      );
                    },
                    child: const Text("Yes"),
                ),
                const SizedBox(width: 20.0,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NoScreen()),
                    );
                  },
                  child: const Text("No"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
