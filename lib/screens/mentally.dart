import 'package:flutter/material.dart';
import 'package:ruok/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';


class MentallyScreen extends StatefulWidget {
  const MentallyScreen({Key? key}) : super(key: key);


  @override
  State<MentallyScreen> createState() => _MentallyScreenState();
}



class _MentallyScreenState extends State<MentallyScreen> {

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
                        Image.network("https://media.istockphoto.com/id/177373093/photo/indian-male-doctor.jpg?s=612x612&w=0&k=20&c=5FkfKdCYERkAg65cQtdqeO_D0JMv6vrEdPw3mX1Lkfg=",
                          height: width/2,
                        ),
                        SizedBox(height: 20.0,),
                        Text("Dr. A.K Tripathi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                        SizedBox(height: 20.0,),
                        Text("psychologist", style: TextStyle(fontSize: 15.0),),
                        SizedBox(height: 20.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: (){}, child: Text("Inform")),
                            SizedBox(width: 30.0,),
                            ElevatedButton(onPressed: _launchURLBrowser,
                                child: Text("Connect"))
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
                        Image.network("https://www.practostatic.com/consumer-home/desktop/images/1597423628/dweb_find_doctors.png",
                          height: width/2,
                        ),
                        SizedBox(height: 20.0,),
                        Text("Dr. Kanak", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                        SizedBox(height: 20.0,),
                        Text("Psychiatric Pharmacists", style: TextStyle(fontSize: 15.0),),
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


