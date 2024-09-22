// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: _Cardname.length,
        itemBuilder: ((context, index) {
          return Card(
            semanticContainer: true,
            shape: Border.all(color: Colors.white),
            elevation: 20,
            color:Colors.white,
            child: ListTile(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              leading: Image.asset(_Cardname[index].image,fit: BoxFit.fill,),
                  
              trailing: Text(
                _Cardname[index].text,
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              title: Text(
                _Cardname[index].number,
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontSize: 11,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        }));
  }
}

List<Item> _Cardname = [
  Item(number: "******6472", text: "7.50BGN", image: 'assets/images/visa.png'),
  Item(number: "******6173", text: "10.50BGN", image: 'assets/images/visa.png'),
  Item(
      number: "******7712", text: "3.50BGN", image: 'assets/images/1689.jpg'),
  Item(
      number: "******3272", text: "5.50BGN", image: 'assets/images/visa.png'),
  Item(
      number: "******2472", text: "9.50BGN", image: 'assets/images/visa.png'),
  Item(
      number: "******1272", text: "1.50BGN", image: 'assets/images/visa.png'),
];

class Item {
  String number;
  String text;
  String image;
  Item({
    required this.number,
    required this.text,
    required this.image,
  });
}
