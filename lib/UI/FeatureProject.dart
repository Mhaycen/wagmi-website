import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wagmi/Widget/CustomText.dart';

class FeatureProject extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;
  final Function ontab;

  FeatureProject(
      {this.imagePath,
      this.ontab,
      this.projectDesc,
      this.projectTitle,
      this.tech1,
      this.tech2,
      this.tech3});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 0.6,
      width: size.width - 100,
      //color: Colors.tealAccent,

      child: Column(
        children: [
          Container(
            height: size.height - 100,
            width: size.width - 100,
            child: Stack(
              children: [
                //Image
                Positioned(
                  top: size.height * 0.02,
                  left: 20.0,
                  child: Container(
                    height: size.height * 0.60,
                    width: size.width * 0.4,
                    //color: Colors.redAccent,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),

                Positioned(
                  top: size.height * 0.02,
                  left: size.width * 0.42,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * .06,
                      ),
                      CustomText(
                        text: "WHAT IS",
                        textsize: 16.0,
                        color: Color(0xff41FBDA),
                        letterSpacing: 3.0,
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      CustomText(
                        text: "WAGMI",
                        textsize: 68.0,
                        color: Color.fromARGB(255, 228, 205, 73),
                        fontWeight: FontWeight.w900,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Wrap(
                        children: [
                          Text(
                            "/\n/**Hi I'm not writing this to sound important I just want to be clear about\n my intentions. I used to love the bsc...in the past year  I've started to hate what \nit's turning into. Anyone who was here this time last year should know what I mean\n So I made wagmi I like this term and how its gained more significance over the past year\n I don't have any huge ambitions for wagmi as I know where I'm deploying it\n However I've designed wagmi as a rare gem and community based stronghold in the sea \n of capitalist refuse which currently swarms the chain\n I have got a friend to make a telegram group for the token t.me/w_a_g_mi\n I will join if wagmi reaches 1billion market cap and say wagmi\n lol thats pretty much it ill renounce ca and lock liq forever  due to the  turbulence of\n the year thus far\n Wagmi is a 100% comunity token with no dev tax all tax will go to liq\n and with 1 billion supply\n my dream is to see 1 wagmi = 1\$ or more.\n https://t.me/W_A_G_M_I\n Wagmi\n *\n*/",
                            style: TextStyle(
                              color: Color.fromARGB(255, 62, 170, 76),
                              fontSize: 10.0,
                              letterSpacing: 2.40,
                              wordSpacing: 0.20,
                            ),
                          ),
                        ],
                      ),

                      // SizedBox(
                      //   height: size.height * .15,
                      // ),
                      // SizedBox(
                      //   height: size.height * 0.20,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Expanded(
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(4),
                  height: size.height * 0.03,
                  width: 320.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff0A192F),
                    border: Border.all(color: Color(0xff64FFDA)),
                    borderRadius: BorderRadius.circular(6.0),
                  ),

                  // color: Color.fromARGB(160, 48, 77, 53),
                  child: Card(
                    elevation: 4.0,
                    color: Color.fromARGB(255, 5, 5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // color: Color.fromARGB(255, 44, 43, 43),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    // shadowColor: Color(0xffffA8B2D1),
                    // elevation: 20,
                    // color: Colors.amber,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(50),
                    // ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ListTile(
                          title: Text('TOKENOMICS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffCCD6F6).withOpacity(0.6))),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Wrap(
                          children: [
                            CustomText(
                              text:
                                  "/***/\n100 Years Locked \n\n\n 1 billion supply\n\n\n Raising Floor :\n 1% of every transaction is contributed back to Liquidity and 2% of every transaction will be automatically added to the Manual Buyback and Burn wallet for manual token burns\n\n Anti-Whale :\nfunction setMaxTxAmount(uint256 maxTxAmount) external onlyOwner()\n"
                                  "{\n\n(maxTxAmount <= (40 * 10**6 * 10**9)'Max wallet should be less or euqal to 4% totalSupply \n\n...}'/**/",
                              textsize: 10.0,
                              color: Color.fromARGB(255, 62, 170, 76),
                              letterSpacing: 2.70,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // Container(
                //   width: 160.0,
                //   color: Colors.blue,
                // ),
                Container(
                  width: 160.0,
                  color: Color.fromARGB(0, 244, 67, 54),
                ),
                Container(
                  child: Card(
                    elevation: 4.0,
                    color: Color.fromARGB(190, 100, 255, 219),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // color: Color.fromARGB(255, 44, 43, 43),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    // shadowColor: Color(0xffffA8B2D1),
                    // elevation: 20,
                    // color: Colors.amber,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(50),
                    // ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(),
                      ],
                    ),
                  ),
                  width: 320.0,
                  color: Color.fromARGB(0, 43, 102, 53),
                ),
                Container(
                  width: 160.0,
                  color: Color.fromARGB(0, 244, 67, 54),
                ),
                // Container(
                //   width: 160.0,
                //   color: Color.fromARGB(0, 244, 67, 54),
                // ),
                Container(
                  margin: EdgeInsets.all(4),
                  height: size.height * 0.03,
                  width: 320.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff0A192F),
                    border: Border.all(color: Color(0xff64FFDA)),
                    borderRadius: BorderRadius.circular(6.0),
                  ),

                  // color: Color.fromARGB(160, 48, 77, 53),
                  child: Card(
                    elevation: 4.0,
                    color: Color.fromARGB(255, 5, 5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // color: Color.fromARGB(255, 44, 43, 43),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    // shadowColor: Color(0xffffA8B2D1),
                    // elevation: 20,
                    // color: Colors.amber,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(50),
                    // ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ListTile(
                          title: Text('Wolfram: IDO Launchpad',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffCCD6F6).withOpacity(0.6))),
                          subtitle: Text(
                              "OpenAI-GPT-2 Powered Audit\n\nFees: 3,000,000 W",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffCCD6F6).withOpacity(0.6))),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Wrap(
                          children: [
                            CustomText(
                              text:
                                  "\n Secure Machine Learning Driven Launchpad.NLP librairies we use preform quality control over key metrics ranging from KYC to auto-Audit, with the highest accuracy rates in the AI field",
                              textsize: 10.0,
                              color: Color.fromARGB(255, 62, 170, 76),
                              letterSpacing: 2.70,
                            ),
                            Spacer(),
                            Flexible(
                                flex: 3,
                                child: Image.asset(
                                  "images/openai-cover.png",
                                  fit: BoxFit.contain,
                                  alignment: Alignment.bottomCenter,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // Container(
                //   width: 160.0,
                //   color: Colors.blue,
                // ),
                Container(
                  width: 160.0,
                  color: Color.fromARGB(0, 244, 67, 54),
                ),
                Container(
                  child: Card(
                    elevation: 4.0,
                    color: Color.fromARGB(190, 100, 255, 219),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // color: Color.fromARGB(255, 44, 43, 43),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    // shadowColor: Color(0xffffA8B2D1),
                    // elevation: 20,
                    // color: Colors.amber,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(50),
                    // ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(),
                      ],
                    ),
                  ),
                  width: 320.0,
                  color: Color.fromARGB(0, 43, 102, 53),
                ),
                Container(
                  width: 160.0,
                  color: Color.fromARGB(0, 244, 67, 54),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  height: size.height * 0.03,
                  width: 320.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff0A192F),
                    border: Border.all(color: Color(0xff64FFDA)),
                    borderRadius: BorderRadius.circular(6.0),
                  ),

                  // color: Color.fromARGB(160, 48, 77, 53),
                  child: Card(
                    elevation: 4.0,
                    color: Color.fromARGB(255, 5, 5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // color: Color.fromARGB(255, 44, 43, 43),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    // shadowColor: Color(0xffffA8B2D1),
                    // elevation: 20,
                    // color: Colors.amber,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(50),
                    // ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ListTile(
                          title: Text('W-X: Neural Trading Platform/Bot',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffCCD6F6).withOpacity(0.6))),
                          subtitle: Text(
                              "Amazon SageMaker powered Bot\n\nFees: 3,000,000 W",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffCCD6F6).withOpacity(0.6))),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Wrap(
                          children: [
                            CustomText(
                              text:
                                  "/**/\n\n....AI powered Trading platform with an auxiallary notification bot\n. The platform runs on Amazon cloud container and its fed periodically with proccesed data sources:  Historical Global trading data (BSC API), Market Sentiment Analysis (Telegram API), Global news with Goldstein Impact Scale system(GDELT API) , all of which are prcossed by Reinforcement Learning model , implementing Neural Network Graph/Decision tree fuzzy Logic......\n\n/**/",
                              textsize: 10.0,
                              color: Color.fromARGB(255, 62, 170, 76),
                              letterSpacing: 2.70,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160.0,
                  color: Color.fromARGB(0, 244, 67, 54),
                ),
                Container(
                  child: Card(
                    elevation: 4.0,
                    color: Color.fromARGB(190, 100, 255, 219),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // color: Color.fromARGB(255, 44, 43, 43),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    // shadowColor: Color(0xffffA8B2D1),
                    // elevation: 20,
                    // color: Colors.amber,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(50),
                    // ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(),
                      ],
                    ),
                  ),
                  width: 320.0,
                  color: Color.fromARGB(0, 43, 102, 53),
                ),
                Container(
                  width: 160.0,
                  color: Color.fromARGB(0, 244, 67, 54),
                ),
                // Container(
                //   width: 160.0,
                //   color: Colors.orange,
                // ),
                Container(
                  margin: EdgeInsets.all(4),
                  height: size.height * 0.03,
                  width: 320.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff0A192F),
                    border: Border.all(color: Color(0xff64FFDA)),
                    borderRadius: BorderRadius.circular(6.0),
                  ),

                  // color: Color.fromARGB(160, 48, 77, 53),
                  child: Card(
                    elevation: 4.0,
                    color: Color.fromARGB(255, 5, 5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // color: Color.fromARGB(255, 44, 43, 43),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    // shadowColor: Color(0xffffA8B2D1),
                    // elevation: 20,
                    // color: Colors.amber,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(50),
                    // ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ListTile(
                          title: Text('Poo: Scam/HoneyPot checker',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffCCD6F6).withOpacity(0.6))),
                          subtitle: Text(
                              "Real-time updated Scam Cheker\n\nFees: 3,000,000 W",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffCCD6F6).withOpacity(0.6))),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Wrap(
                          children: [
                            CustomText(
                              text:
                                  "/**/\n\n....Scam and HoneyPot checker Utility Connected to our Sagemaker Container. Notfies you with all of your holding's contract updates in Real-Time by continuoulsy pulling data our of BSC API and query the contracts addresses in bsc for data pulls. Keeping your wallet always healthy and safe ......\n\n/**/",
                              textsize: 10.0,
                              color: Color.fromARGB(255, 62, 170, 76),
                              letterSpacing: 2.70,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
