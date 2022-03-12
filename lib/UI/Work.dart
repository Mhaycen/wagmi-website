import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wagmi/Widget/CustomText.dart';
import 'package:wagmi/Widget/Workbox.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1.4,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "02.",
                textsize: 20.0,
                color: Color.fromARGB(255, 228, 205, 73),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: "Roadmap",
                textsize: 26.0,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: size.width * 0.01,
              ),
              Container(
                width: size.width / 4,
                height: 1.10,
                color: Color(0xff303C55),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.07,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: size.height * 1.2,
                    //color: Colors.indigo,
                    child: Stack(
                      children: [
                        Center(
                          child: VerticalDivider(
                            color: Color.fromARGB(255, 228, 205, 73),
                            thickness: 1.75,
                            width: 10,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 228, 205, 73),
                                child: FaIcon(
                                    FontAwesomeIcons.arrowAltCircleRight,
                                    color: Color.fromARGB(255, 2, 2, 2)),
                              ),
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 228, 205, 73),
                                child: FaIcon(
                                    FontAwesomeIcons.arrowAltCircleRight,
                                    color: Color.fromARGB(255, 2, 2, 2)),
                              ),
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 228, 205, 73),
                                child: FaIcon(
                                    FontAwesomeIcons.arrowAltCircleRight,
                                    color: Color.fromARGB(255, 2, 2, 2)),
                              ),
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 228, 205, 73),
                                child: FaIcon(
                                    FontAwesomeIcons.arrowAltCircleRight,
                                    color: Color.fromARGB(255, 2, 2, 2)),
                              ),
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 228, 205, 73),
                                child: FaIcon(
                                    FontAwesomeIcons.arrowAltCircleRight,
                                    color: Color.fromARGB(255, 2, 2, 2)),
                              ),
                            ],
                          )),
                        )
                      ],
                    )),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: size.height * 1.2,
                    child: WorkBox(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
