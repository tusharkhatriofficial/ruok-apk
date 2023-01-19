import 'package:flutter/material.dart';
import 'package:ruok/constants/constants.dart';

class YesScreen extends StatefulWidget {
  const YesScreen({Key? key}) : super(key: key);

  @override
  State<YesScreen> createState() => _YesScreenState();
}

class _YesScreenState extends State<YesScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController _a = TextEditingController();
    TextEditingController _b = TextEditingController();
    TextEditingController _c = TextEditingController();
    TextEditingController _d = TextEditingController();
    TextEditingController _e = TextEditingController();

    String showHealthStatus(){
      String result = "";
      if((int.parse(_a.text)>85 && int.parse(_a.text)<125) && (int.parse(_b.text)>55 && int.parse(_b.text)<85) && (int.parse(_c.text)>10 && int.parse(_c.text)<20) && (int.parse(_d.text)>55 && int.parse(_d.text)<105) && (int.parse(_e.text)>97 && int.parse(_e.text)<99))
      {
        result = "You look pretty fit today.";
      }else{
        result = "You do not look fine today. We suggest having a checkup.";
      }
      return result;
    }

    return Scaffold(
      backgroundColor: custom_grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Basic Checkup",
            style: TextStyle(
                fontSize: width / 10,
                color: custom_blue,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Upper Blood presssure',
                      hintText: 'Upper Blood presssure'),
                  controller: _a,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Lower Blood presssure',
                      hintText: 'Lower Blood presssure'),
                  controller: _b,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Breathing per minute',
                      hintText: 'Breathing per minute'),
                  controller: _c,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Pulse',
                      hintText: 'Pulse'),
                  controller: _d,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Temperature(F)',
                      hintText: 'Temperature(F)'),
                  controller: _e,
                ),
                Container(
                    padding: EdgeInsets.only(left: 150.0, top: 40.0),
                    child: ElevatedButton(
                      child: Text('Check'),
                      onPressed: () {
                        //TODO: DO Something
                        showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                          title: const Text(""),
                          content: Text(showHealthStatus()),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Container(
                                color: custom_blue,
                                padding: const EdgeInsets.all(14),
                                child: const Text("okay", style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                        );
                      },
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
