import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'inputs_page.dart';
import 'OptionsContainer file.dart';
import 'constantProp.dart';

class ResultAct extends StatelessWidget {
  ResultAct(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.opinion});
  final String bmiResult;
  final String resultText;
  final String opinion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "Your Result",
                  style: resultHeading,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: OptionsContainer(
              c: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: resultStatus,
                  ),
                  Text(
                    bmiResult,
                    style: resultVal,
                  ),
                  Text(
                    opinion,
                    textAlign: TextAlign.center,
                    style: resultMsg,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            child: Container(
              color: Color(0xFFEB1555),
              height: 53,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  "Recalculate",
                  style: calcStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
