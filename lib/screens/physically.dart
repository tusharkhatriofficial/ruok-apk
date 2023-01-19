import 'package:flutter/material.dart';
import 'package:ruok/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class PhysicallyScreen extends StatefulWidget {
  const PhysicallyScreen({Key? key}) : super(key: key);

  @override
  State<PhysicallyScreen> createState() => _MentallyScreenState();
}

class _MentallyScreenState extends State<PhysicallyScreen> {

  _launchURLBrowser() async {
    final url = "https://meet.jit.si/bransari";
    if(await canLaunch(url)){
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: custom_grey,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      children: [
                        Image.network("https://img.freepik.com/free-photo/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background_662251-2960.jpg?w=2000",
                          height: width/2,
                        ),
                        SizedBox(height: 20.0,),
                        Text("Dr. Lochan Chugh", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                        SizedBox(height: 20.0,),
                        Text("Dermatologists", style: TextStyle(fontSize: 15.0),),
                        SizedBox(height: 20.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: (){}, child: Text("Inform")),
                            SizedBox(width: 30.0,),
                            ElevatedButton(onPressed: _launchURLBrowser, child: Text("Connect"))
                          ],
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      children: [
                        Image.network("https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?w=2000",
                          height: width/2,
                        ),
                        SizedBox(height: 20.0,),
                        Text("Dr. Kashish Agarwal", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                        SizedBox(height: 20.0,),
                        Text("Ophthalmologists", style: TextStyle(fontSize: 15.0),),
                        SizedBox(height: 20.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: (){}, child: Text("Inform")),
                            SizedBox(width: 30.0,),
                            ElevatedButton(onPressed: _launchURLBrowser, child: Text("Connect"))
                          ],
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
