import 'package:flutter/material.dart';
import 'package:merosafarapp/Request/request_page.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 1200,
              height: 800,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/map.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 300,
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
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 11, 91, 111),
                                shape: BoxShape.circle,
                                
                                boxShadow: [
                            BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            offset: Offset(0, 1),
                            blurRadius: 4,
                            spreadRadius: 3,
                            ),
                          ],
                              ),
                            ),
                          
                            Image.asset("assets/images/carr.png",height: 180,width: 140,),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 140),
                                  child: Text("Ambani arrived at the address",style: TextStyle(fontWeight: FontWeight.bold),),
                                )
                              ],
                            ),
                            
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 210),
            child: MaterialButton(onPressed: (){},
            color: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2)
        ),
        height: 100,
        minWidth: 70,
        elevation: 0,
              child: Text("Call",style: TextStyle(color: const Color.fromARGB(255, 6, 14, 60),fontWeight: FontWeight.bold),),
              
              ),
          ),
          
          Padding(
        padding: const EdgeInsets.only(top: 210),
        child: MaterialButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestPage()));
        },
        color: Color.fromARGB(255, 12, 5, 79),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2)
        ),
        height: 100,
        minWidth: 80,
        elevation: 0,
        child: Text("I'am comming",style: TextStyle(color: Color.fromARGB(255, 249, 249, 251),fontWeight: FontWeight.bold),),
        
        ),
          ),
        ],
      )
                          ],
                        
                        ),
                        
                      ),
                      
                      
                    ),
                    
                  ),
                 
                ],
              ),
              
            ),
            
          ],
        ),
      ),
    );
  }
}
