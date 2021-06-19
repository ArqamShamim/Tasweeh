import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tasweeh1/components/reusable_cards.dart';
import 'package:tasweeh1/components/buttons.dart';
import 'package:tasweeh1/components/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vibration/vibration.dart';

class OneTapTasweeh extends StatefulWidget {
  @override
  _OneTapTasweehState createState() => _OneTapTasweehState();
}

class _OneTapTasweehState extends State<OneTapTasweeh> {
  int counter = 0;
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ReusableCard(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Vibration',
                  style: TextStyle(
                    fontFamily: 'Itim',
                    fontSize: 40.0,
                  ),
                ),
                Switch(
                    value: status,
                    onChanged: (value) {
                      setState(() {
                        status = value;
                      });
                    })
              ],
            )),
          ),
          Expanded(
            child: ReusableCard(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundActionButton(
                    icon: FontAwesomeIcons.minus,
                    onPress: () {
                      setState(() {
                        if (status) {
                          Vibration.vibrate(amplitude: 30, duration: 100);
                        }
                        counter--;
                      });
                    },
                  ),
                  RoundActionButton(
                    icon: Icons.autorenew_rounded,
                    onPress: () {
                      setState(() {
                        counter = 0;
                        if (status) {
                          Vibration.vibrate(amplitude: 30, duration: 100);
                        }
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableCard(
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$counter',
                    style: kCounterNumber,
                  ),
                  Text(
                    'Counter',
                    style: TextStyle(
                      fontFamily: 'Itim',
                      fontSize: 40.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  counter++;
                  if (status) {
                    Vibration.vibrate(amplitude: 30, duration: 100);
                  }
                });
              },
              child: ReusableCard(
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RoundActionButton(
                      icon: FontAwesomeIcons.plus,
                      onPress: () {
                        setState(() {
                          counter++;
                          if (status) {
                            Vibration.vibrate(amplitude: 30, duration: 100);
                          }
                        });
                      },
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 30.0),
                      child: Text(
                        'Tap here to increase the counter by 1.',
                        style: TextStyle(
                          fontFamily: 'Itim',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          'Tasweeh',
          style: TextStyle(
              fontFamily: 'Courgette',
              fontSize: 30.0,
              color: Color(0xFF98DDCA)),
        ),
      ),
    );
  }
}
