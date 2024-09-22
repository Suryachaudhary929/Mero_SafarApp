import 'package:flutter/material.dart';
import 'package:merosafarapp/Mainpage/available_page.dart';

class FindPage extends StatefulWidget {
  const FindPage({super.key});

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar:
          BottomNavigationBar(
            onTap: (index){
              setState(() {
                currentIndex = index;
              });
            },
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
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
            backgroundColor:  Colors.grey),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: "Inbox",
            backgroundColor:  Color.fromARGB(255, 34, 22, 137)),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
            backgroundColor: Color.fromARGB(255, 43, 30, 166)),
      ]),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:150),
          child: Column(
            
            children: [
              Center(child: Image.asset("assets/images/surya.png",height: 300,)),
              
               Center(
                              child: Container(
                                                decoration: BoxDecoration(
                                color:Color.fromARGB(255, 29, 36, 133),
                                borderRadius: BorderRadius.circular(10)),
                                                height: 45,
                                                width: 325,
                                                child: MaterialButton(
                              onPressed: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) => FindPage()));
                              },
                              child: Text(
                                "Offer a ride",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                                                ),
                                              ),
                            ),
                            SizedBox(height: 30,),
                             Padding(
                               padding: const EdgeInsets.only(bottom: 100),
                               child: Center(
                                child: Container(
                                                  decoration: BoxDecoration(
                                  color:Color.fromARGB(255, 29, 36, 133),
                                  borderRadius: BorderRadius.circular(10)),
                                                  height: 45,
                                                  width: 325,
                                                  child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => MainPage()));
                                },
                                child: Text(
                                  "Find a ride",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                ),
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
