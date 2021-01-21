import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  final numberOfQuestions;

  TestScreen({@required this.numberOfQuestions});
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //スコア表示部分
            _scorePart(),
            //問題表示部分
            _questionPart(),
            //電卓ボタン部分
            _calcButtons(),
            //答え合わせボタン
            _answerCheckButton(),
            //戻るボタン
            _backButton(),
          ],
        )
      ),
    );
  }

  //スコア表示部分
  Widget _scorePart() {

  }

  //問題表示部分
  Widget _questionPart() {

  }

  //電卓ボタン部分
  Widget _calcButtons() {

  }

  //答え合わせボタン
  Widget _answerCheckButton() {

  }

  //戻るボタン
  Widget _backButton() {

  }
}
