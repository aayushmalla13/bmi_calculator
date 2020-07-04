import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            )),
            Expanded(
              flex: 6,
              child: ReusableCard(
                colour: kActivecardcolor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          resultText.toUpperCase(),
                          style: kresultTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        interpretation,
                        style: kbodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: BottomButton(
                        buttonTitle: 'RE-CALCULATE',
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
