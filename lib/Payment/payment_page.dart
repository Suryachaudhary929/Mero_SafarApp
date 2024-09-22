import 'package:flutter/material.dart';
import 'package:merosafarapp/Items/item_page.dart';
import 'package:merosafarapp/Listview/listview_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        clipBehavior: Clip.antiAlias,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        bottomOpacity: 1.0,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
        ),
        title: Text(
          "Payment",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontStyle: FontStyle.normal),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cards",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: 350,
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
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 5, 1, 27),
                        Color.fromARGB(255, 1, 1, 40),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "VISA",
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic),
                            ),
                            Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 1),
                                      blurRadius: 2,
                                      spreadRadius: 1,
                                      color: Colors.black87,
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "1234",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "5678",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "1864",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "6542",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 130),
                            child: Text("Card Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                          ),
                          Text("Expiry",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text("Flutter Developer",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          Text("12/12",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      Expanded(
                        child: Text(
                          "VISA",
                          style: TextStyle(
                              fontSize: 87,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          offset: Offset(0, 1),
                          blurRadius: 4,
                          spreadRadius: 3,
                        ),
                      ],
                      border: Border.all(color: Color.fromARGB(255, 5, 5, 57))),
                  child: InkWell(
                     onTap: (){
                     
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 9, 2, 47),
                          size: 15,
                        ),
                        Text(
                          "Add Card",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 2, 10, 58),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListViewPage(),
                ItemPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
