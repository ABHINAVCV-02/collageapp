import 'package:collageapp/constants/colors.dart';
import 'package:collageapp/global/widgets/custom_appbar.dart';
import 'package:collageapp/home_page/presentaion/screen/home.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorsModel.baseWhite,

//appBar of the screen

        appBar: const CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//x icon for naviagtion to homepage

              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const HomePage()),
                    ),
                  );
                },
                child: const Text(
                  'X',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: ColorsModel.baseBlack),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),

//centered  main title for app

              Center(
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'College App',
                        style: _textSpan(22),
                      ),
                      TextSpan(
                        text: '\nVersion V1.1',
                        style: _textSpan(17),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//textspan style

  TextStyle _textSpan(double fontsize) {
    return TextStyle(
      fontSize: fontsize,
      fontWeight: FontWeight.w400,
      color: ColorsModel.baseBlack,
    );
  }
}