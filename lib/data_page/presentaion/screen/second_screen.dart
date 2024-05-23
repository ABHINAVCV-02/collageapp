import 'package:collageapp/constants/colors.dart';
import 'package:collageapp/constants/links.dart';
import 'package:collageapp/global/widgets/custom_appbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../functions/website_call.dart';

class CollegeApp extends StatelessWidget {
  const CollegeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorsModel.baseWhite,

//appBar of the screen

        appBar: const CustomAppBar(),
        body: _body(context),
      ),
    );
  }

//body of the screen

  SingleChildScrollView _body(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
//heading boxes

          Container(
            height: 50,
            width: double.infinity,
            color: ColorsModel.darkRed,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Electronics',
                      style: TextStyle(color: ColorsModel.baseWhite),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'x',
                          style: TextStyle(
                              fontSize: 20, color: ColorsModel.baseWhite),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          _sizedBox(),
          Container(
            height: 150,
            width: double.infinity,
            color: ColorsModel.lightGrey,
          ),
          _sizedBox(),

//data part

          Text.rich(TextSpan(children: [
            TextSpan(
              text:
              'Electronics is a scientific and engineering discipline that studies and applies the principles of',
              style: _defaultStyle(),
            ),
            TextSpan(
                text: ' physics',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.physics)),
            TextSpan(
                text: ' to design, create, and operate devices that manipulate',
                style: _defaultStyle()),
            TextSpan(
                text: ' electrons',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.electron)),
            TextSpan(text: ' and other ', style: _defaultStyle()),
            TextSpan(
                text: 'electrically charged particles',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.electricCharge)),
            TextSpan(
                text: '. Electronics is a subfield of', style: _defaultStyle()),
            TextSpan(
                text: 'electrical engineering',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.electricalEngineering)),
            TextSpan(
                text: ', but it differs from it in that it focuses on using',
                style: _defaultStyle()),
            TextSpan(
                text: ' active devices  ',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.activeDevices)),
            TextSpan(text: ' such as ', style: _defaultStyle()),
            TextSpan(
                text: 'transistors',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.transistor)),
            TextSpan(
              text: ', ',
              style: _defaultStyle(),
            ),
            TextSpan(
                text: ' diodes ',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.diode)),
            TextSpan(text: ', and ', style: _defaultStyle()),
            TextSpan(
                text: 'integrated circuits ',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.integratedCircuit)),
            TextSpan(
                text: ' to control and amplify the flow of ',
                style: _defaultStyle()),
            TextSpan(
                text: ' electric current ',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.electricCurrent)),
            TextSpan(
                text:
                'and to convert it from one form to another, such as from ',
                style: _defaultStyle()),
            TextSpan(
                text: 'alternating current ',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.alternatingCurrent)),
            TextSpan(text: ' (AC) to  ', style: _defaultStyle()),
            TextSpan(
                text: 'direct current',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.directCurrent)),
            TextSpan(text: ' (DC) or from ', style: _defaultStyle()),
            TextSpan(
                text: 'analog ',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.analogSignal)),
            TextSpan(text: ' signals to ', style: _defaultStyle()),
            TextSpan(
                text: 'digital',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.digitalSignal)),
            TextSpan(
                text: ' signals. Electronics also encompasses the fields of',
                style: _defaultStyle()),
            TextSpan(
                text: ' microelectronics',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.microElectronics)),
            TextSpan(
              text: ',',
              style: _defaultStyle(),
            ),
            TextSpan(
                text: 'nanoelectronics ',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.nanoElectronics)),
            TextSpan(text: ',', style: _defaultStyle()),
            TextSpan(
                text: ' optoelectronics ',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.optoElectronics)),
            TextSpan(text: ', and  ', style: _defaultStyle()),
            TextSpan(
                text: ' quantum electronics',
                style: _customSpanStyle(),
                recognizer: _gesture(WebLinks.quantumElectronics)),
            TextSpan(
                text:
                ', which deal with the fabrication and application of electronic devices at microscopic, nanoscopic, optical, and quantum scales. ',
                style: _defaultStyle()),
          ]))
        ],
      ),
    );
  }

//default box size

  SizedBox _sizedBox() => const SizedBox(
    width: double.infinity,
    height: 10,
  );

//normal text style

  TextStyle _defaultStyle() =>
      const TextStyle(color: ColorsModel.baseBlack, fontSize: 22);

//on click function

  TapGestureRecognizer _gesture(String uri) {
    return TapGestureRecognizer()
      ..onTap = () {
        websiteCall(uri);
      };
  }

//text span style

  TextStyle _customSpanStyle() {
    return const TextStyle(
        color: ColorsModel.baseBlack,
        decoration: TextDecoration.underline,
        decorationThickness: 2,
        decorationColor: ColorsModel.baseBlack,
        fontSize: 22);
  }
}