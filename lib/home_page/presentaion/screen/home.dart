import 'package:collageapp/constants/colors.dart';
import 'package:collageapp/data_page/presentaion/screen/second_screen.dart';
import 'package:collageapp/global/widgets/custom_appbar.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var list=['https://media.istockphoto.com/id/1464561797/photo/artificial-intelligence-processor-unit-powerful-quantum-ai-component-on-pcb-motherboard-with.jpg?s=1024x1024&w=is&k=20&c=vKnJb_tlENfrcT5jSWRugaJv-ESAlBkTcDgiNGgFPW0=',
      '',
      '',
      ''
    ];
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorsModel.baseWhite,
        floatingActionButton: InkWell(
          onTap: () {
            Navigator.of(context).pop(context);
          },
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: ColorsModel.darkRed,
            child: Text(
              'i',
              style: TextStyle(fontSize: 20, color: ColorsModel.baseWhite),
            ),
          ),
        ),

//appBar of the screen

        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(decoration: BoxDecoration(
                      color: Colors.grey[400],
                      image:DecorationImage(image: NetworkImage(list[index]))),
                    height: 200,
                    width: double.infinity,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: ColorsModel.darkRed,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const CollegeApp(),
                            ),
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Electronics',
                              style: TextStyle(color: ColorsModel.baseWhite),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: ColorsModel.baseWhite,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 50,
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

//list of boxes


}