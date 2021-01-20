import 'package:calc_training/screens/testScreen.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<DropdownMenuItem<int>> _menuItems = List();
  int _numberOfQuestions = 0;

  @override
  void initState() {
    super.initState();
    setMenuItems();
    _numberOfQuestions = _menuItems[0].value;
  }

  void setMenuItems() {
    // Cascade Notationを利用してadd
    _menuItems
      ..add(DropdownMenuItem(value: 10, child: Text(10.toString()),))
      ..add(DropdownMenuItem(value: 20, child: Text(20.toString()),))
      ..add(DropdownMenuItem(value: 30, child: Text(30.toString()),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/images/image_title.png"),
                SizedBox(height: 16.0,),
                const Text("問題数を選択して「スタート」を押してください"),
                SizedBox(height: 50.0,),
                DropdownButton(
                  items: _menuItems,
                  value: _numberOfQuestions,
                  onChanged: (selectedValue){
                    setState(() {
                      _numberOfQuestions = selectedValue;
                    });
                  }
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: RaisedButton.icon(
                      color: Colors.blue,
                      onPressed: () => startTestScreen(context),
                      label: Text("スタート"),
                      icon: Icon(Icons.skip_next),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  startTestScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TestScreen(
        numberOfQuestions: _numberOfQuestions)
    ));
  }

}
