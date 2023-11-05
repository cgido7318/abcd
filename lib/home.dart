import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with TickerProviderStateMixin {

  List<String> dropdownList = ['Recommend', 'Date', 'Recent Register'];
  String selectedDropdown = 'Recommend';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Text(
          "d0mi",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_outlined),
            onPressed: () {
              print('shopping cart button is clicked');
            },
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 55,
              width: 1000,
              margin: EdgeInsets.only(bottom: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 55,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    child: ListTile(
                      leading: Icon(Icons.card_giftcard_outlined),
                      title: Text("All"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: Colors.black12,
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    child: ListTile(
                      leading: Icon(Icons.card_giftcard_outlined),
                      title: Text("All"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: Colors.black12,
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    child: ListTile(
                      leading: Icon(Icons.card_giftcard_outlined),
                      title: Text("All"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: Colors.black12,
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    child: ListTile(
                      leading: Icon(Icons.card_giftcard_outlined),
                      title: Text("All"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: Colors.black12,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                DropdownButton(
                  value: selectedDropdown,
                  items: dropdownList.map((String item) {
                    return DropdownMenuItem<String>(
                      child: Text('$item'),
                      value: item,
                    );
                  }).toList(),
                  onChanged: (dynamic value) {
                    setState(() {
                      selectedDropdown = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 500,
              child: ListView(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet<void>(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            builder: (BuildContext context) {
              return Container(
                height: 300,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(child: Container()),
                      ],
                    ),
                  ],
                ),
              );
            },
          ).then((value) { setState(() { }); });
        },
        child: Icon(
          Icons.add_outlined,
        ),
      ),
    );
  }
}
