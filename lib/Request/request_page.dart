import 'package:flutter/material.dart';
import 'package:merosafarapp/Payment/payment_page.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: 1200,
            height: 810,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/map.jpg"),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: Container(
                        height: 359,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 7, 6, 61),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.done,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              "You finished your ride",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text("Review your driver"),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              width: 210,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 17, 4, 60)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundImage: AssetImage(
                                          "assets/images/chata.jpg"),
                                    ),
                                    Text("Partima chaudhary"),
                                    Icon(
                                      Icons.thumb_up,
                                      size: 20,
                                      color: Color.fromARGB(255, 17, 4, 60),
                                    ),
                                    Icon(
                                      Icons.thumb_down,
                                      size: 20,
                                      color: Color.fromARGB(255, 17, 4, 60),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text("Review passengers"),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              width: 210,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 17, 4, 60)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundImage: AssetImage(
                                          "assets/images/r.jpeg"),
                                    ),
                                    Text("Jenifier Dimtrova"),
                                    Icon(
                                      Icons.thumb_up,
                                      size: 20,
                                      color: Color.fromARGB(255, 17, 4, 60),
                                    ),
                                    Icon(
                                      Icons.thumb_down,
                                      size: 20,
                                      color: Color.fromARGB(255, 17, 4, 60),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              width: 210,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 17, 4, 60)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundImage: AssetImage(
                                          "assets/images/h.jpeg"),
                                    ),
                                    Text("Salina Goorgiov"),
                                    Icon(
                                      Icons.thumb_up,
                                      size: 20,
                                      color: Color.fromARGB(255, 17, 4, 60),
                                    ),
                                    Icon(
                                      Icons.thumb_down,
                                      size: 20,
                                      color: Color.fromARGB(255, 17, 4, 60),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
                              },
                              elevation: 0,
                              child: Text("Skip"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
