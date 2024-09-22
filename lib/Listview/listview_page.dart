// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
     
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Payment History",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
       MaterialButton(onPressed: (){
        // Navigator.push(context, MaterialPageRoute(builder: (Context)=>GoogleMapPage()));
       },
       child: Row(
        children: [
          Text("Latest",style: TextStyle(fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 2, 7, 38)),),
          Icon(Icons.arrow_drop_down_outlined,color: const Color.fromARGB(255, 2, 8, 41),),
         
          
        ],
       ), 
       ),
      ], 
    );
  }
}


