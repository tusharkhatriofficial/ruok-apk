import 'package:flutter/material.dart';
import 'package:ruok/constants/constants.dart';
import 'package:ruok/screens/mentally.dart';
import 'package:ruok/screens/physically.dart';

class NoScreen extends StatefulWidget {
  const NoScreen({Key? key}) : super(key: key);

  @override
  State<NoScreen> createState() => _NoScreenState();
}

class _NoScreenState extends State<NoScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: custom_grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "I'm not",
            style: TextStyle(
              fontSize: width/10,
              color: custom_white,
            ),
          ),
          Text(
            "Okay!",
            style: TextStyle(
              fontSize: width/10,
              color: custom_blue,
            ),
          ),

          SizedBox(height: 20.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MentallyScreen()),
                  );
                },
                child: const Text("Mentally"),
              ),
              SizedBox(width: 20.0,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PhysicallyScreen()),
                  );
                },
                child: const Text("Physically"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
