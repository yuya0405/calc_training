import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                Text("問題数を選択して「スタート」を押してください"),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: RaisedButton(
                      child: Text("スタート"),
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
}
