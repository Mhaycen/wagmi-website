import 'package:flutter/material.dart';
import 'package:wagmi/Widget/CustomText.dart';

class About extends StatelessWidget {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color.fromARGB(255, 228, 205, 73).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height * 0.9,
            width: size.width / 2 - 100,
            child: Column(
              children: [
                //About me title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "01.",
                      textsize: 20.0,
                      color: Color.fromARGB(255, 228, 205, 73),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    CustomText(
                      text: "Culture Token",
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

                //About me desc
                Wrap(
                  children: [
                    CustomText(
                      text:
                          "We are a community of Blockchain Technology enthusiastes who upon grouping in the same Telegram chat decided to put an end to this massive greedy profit wave that has hit the BSC mainnet, undervaluing small projects and demeaning the image of this technology in general  \n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                          "For us Blockchain hasn't reached the stage where people can harness the true financial freedom this technology has promised, our motives date back to the days of the CypherPunk movement where a community turned BitCoin from an idea to concrete implementation, prompted the world to make change on how money is dealt with and produced, to fight against capitalism and greedy regulations. Fast forward, their successful venture has introduced blockchain technology to the everyday person who is here to invest in projects that are promised to help shape the future, however BSC got swarmed by baseless projects that use trendy and abused big tech words to market themselves, or re-using already opened source systems and algorithms from research papers and sell them for big bags, without having the slightest idea on how to implement them, nor have a promising long-lasting future  .We as a community are devoted to present to these new commers the means and tools they need to protect themselves from scams and baseless projects, and provide through our launchpad projects that aim to put advancement in the technology.\nOur goal is to make the crypto/blockchain underground space as safe as it can be.We want the non specialists to feel that blockchain is a safe investment as much as Real-Estate and Stocks/Forex market is. We offer unlimited access to all of our investor safety utilities by simply holding 3 million W\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      letterSpacing: 0.75,
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Profile Image
          Expanded(
            child: Container(
              height: size.height / 1.5,
              width: size.width / 2 - 100,
              // color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: size.height * 0.12,
                    left: size.width * 0.120,
                    child: Card(
                      color: Color.fromARGB(255, 228, 205, 73),
                      child: Container(
                        margin: EdgeInsets.all(2.75),
                        height: size.height / 2,
                        width: size.width / 5,
                        color: Color(0xff0A192F),
                      ),
                    ),
                  ),
                  CustomImageAnimation()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomImageAnimation extends StatefulWidget {
  CustomImageAnimation({Key key}) : super(key: key);

  @override
  _CustomImageAnimationState createState() => _CustomImageAnimationState();
}

class _CustomImageAnimationState extends State<CustomImageAnimation> {
  Color customImageColor = Color.fromARGB(255, 228, 205, 73).withOpacity(0.5);
  // ignore: unused_field
  int _enterCounter = 0;
  // ignore: unused_field
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      customImageColor = Color.fromARGB(255, 228, 205, 73).withOpacity(0.5);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: Stack(
        children: [
          Container(
            height: size.height / 5,
            width: size.width / 5,
            color: Colors.black54,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("images/The-Cypherpunk-Manifesto-990x556.jpg"),
            ),
          ),
          Container(
            height: size.height / 5,
            width: size.width / 5,
            color: customImageColor,
          ),
        ],
      ),
    );
  }
}
