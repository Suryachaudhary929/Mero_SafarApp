import 'package:flutter/material.dart';
import 'package:merosafarapp/Homepage/homepage.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location usage",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Please allow us to use your location to see where are the other compoolers on the map.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)
                      ),
                    SizedBox(height: 50,),
                         Image.asset("assets/images/Location.jpg",fit: BoxFit.cover,),
                         SizedBox(height: 80,),
                    
                      Center(
                        child: Container(
                                          decoration: BoxDecoration(
                          color:Colors.red.shade700,
                          borderRadius: BorderRadius.circular(10)),
                                          height: 45,
                                          width: 325,
                                          child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        child: Text(
                          "Enable Location",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                                          ),
                                        ),
                      ),
            ]
          ),
        )
      )
    );
  }
}