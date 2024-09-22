import 'package:flutter/material.dart';
import 'package:merosafarapp/Call/Call_page.dart';
import 'package:merosafarapp/Google/googlemap_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "Search",
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,
                ),
                label: "My ride",
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                ),
                label: "Inbox",
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile",
                backgroundColor: Colors.grey),
          ]),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Available rides",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
           
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Container(
                  height: 248,
                  width: 400,
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                     
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/images/r.jpeg"),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Mariya Bebier",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "10.00 BGN",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.thumb_up),
                              Icon(Icons.message),
                              Icon(Icons.handshake),
                              Icon(Icons.settings),
                              Icon(Icons.phone),
                              Text(
                                "2 seats left",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 4),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Oboristhto 12,zhk krasna polyana,Sofia"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "|",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 32, 9, 94),
                                    border: Border.all(color: Colors.black)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("National shoso142,zhk Ixtok,Sofia"),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.car_rental),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Black",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Luxrious Car"),
                            Text("NH7304LH"),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleMapPage()));
                              },
                              color: Colors.grey.shade300,
                              child: Text("See ride",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 14, 6, 69),
                                      fontWeight: FontWeight.bold)),
                            ),
                            MaterialButton(
                              onPressed: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleMapPage()));
                              },
                              color: const Color.fromARGB(255, 4, 14, 70),
                              child: Text(
                                "Send request",
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Container(
                  height: 248,
                  width: 400,
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/images/h.jpeg"),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Salina Gomaleeg",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "10.00 BGN",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.thumb_up),
                              Icon(Icons.message),
                              Icon(Icons.handshake),
                              Icon(Icons.settings),
                              Icon(Icons.phone),
                              Text(
                                "2 seats left",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 4),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Brazil 12,zhk krasna polyana,Sofia"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "|",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 32, 9, 94),
                                    border: Border.all(color: Colors.black)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Brazil shoso142,zhk Ixtok,Sofia"),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.car_rental_outlined,color: Colors.brown,),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Brown",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Luxrious Car"),
                            Text("NH7324LH"),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.grey.shade300,
                              child: Text("See ride",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 14, 6, 69),
                                      fontWeight: FontWeight.bold)),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>CallPage()));
                              },
                              color: const Color.fromARGB(255, 4, 14, 70),
                              child: Text(
                                "Send request",
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
              SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Container(
            height: 248,
            width: 400,
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/chata.jpg"),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Meroleene mirdha",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "10.00 BGN",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.thumb_up),
                        Icon(Icons.message),
                        Icon(Icons.handshake),
                        Icon(Icons.settings),
                        Icon(Icons.phone),
                        Text(
                          "2 seats left",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 4),
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(color: Colors.black)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Vertigo Business Tower,zhk Borovo,Sofia"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "|",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 32, 9, 94),
                              border: Border.all(color: Colors.black)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("National Palace of culture,zhk Lozo,Sofia"),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.car_repair,color: Colors.green,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("green",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Zip Car"),
                      Text("NH7304LH"),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.grey.shade300,
                        child: Text("See ride",
                            style: TextStyle(
                                color: Color.fromARGB(255, 14, 6, 69),
                                fontWeight: FontWeight.bold)),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: const Color.fromARGB(255, 4, 14, 70),
                        child: Text(
                          "Send request",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
            ],
          ),
        ),
      )

      
      
    );
  }
}
