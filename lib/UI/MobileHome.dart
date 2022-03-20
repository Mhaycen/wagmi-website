import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wagmi/Model/Method.dart';
import 'package:wagmi/Widget/CustomText.dart';
import 'package:wagmi/Widget/MobileProject.dart';
import 'package:wagmi/Widget/MobileWork.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
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
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0A192F),
      endDrawer: Drawer(
          elevation: 6.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  accountName: Text("WAGMI"),
                  accountEmail: Text("https://t.me/W_A_G_M_I")),
              ListTile(
                title: Text("Share"),
                leading: Icon(Icons.share),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("About"),
              ),
              Expanded(
                child: Text("Version 1.0.1"),
              )
            ],
          )),
      appBar: AppBar(
        backgroundColor: Color(0xff0A192F),
        elevation: 0.0,
        title: IconButton(
          icon: Icon(
            Icons.change_history,
            size: 32.0,
            color: Color(0xff64FFDA),
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomText(
                text: "What is",
                textsize: 16.0,
                color: Color(0xff41FBDA),
                letterSpacing: 3.0,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              CustomText(
                text: "WAGMI",
                textsize: 52.0,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w900,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomText(
                text: "",
                textsize: 42.0,
                color: Color(0xffCCD6F6).withOpacity(0.6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Wrap(
                  children: [
                    Text(
                      "/\n/**Hi I'm not writing this to sound important I just want to be clear about\n my intentions. I used to love the bsc...in the past year  I've started to hate what \nit's turning into. Anyone who was here this time last year should know what I mean\n So I made wagmi I like this term and how its gained more significance over the past year\n I don't have any huge ambitions for wagmi as I know where I'm deploying it\n However I've designed wagmi as a rare gem and community based stronghold in the sea \n of capitalist refuse which currently swarms the chain\n I have got a friend to make a telegram group for the token t.me/w_a_g_mi\n I will join if wagmi reaches 1billion market cap and say wagmi\n lol thats pretty much it ill renounce ca and lock liq forever  due to the  turbulence of\n the year thus far\n Wagmi is a 100% comunity token with no dev tax all tax will go to liq\n and with 1 billion supply\n my dream is to see 1 wagmi = 1\$ or more.\n https://t.me/W_A_G_M_I\n Wagmi\n *\n*/",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        letterSpacing: 2.75,
                        wordSpacing: 0.75,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: Color(0xff64FFDA),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(0.75),
                  height: 56.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Color(0xff0A192F),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      method.launchEmail();
                    },
                    hoverColor: Colors.green,
                    child: Text(
                      "Get In Touch",
                      style: TextStyle(
                        color: Color(0xff64FFDA),
                        letterSpacing: 2.75,
                        wordSpacing: 1.0,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),

              //About me
              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  width: size.width,
                  //color: Colors.purple,
                  child: Column(
                    children: [
                      //About me title
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "01.",
                            textsize: 20.0,
                            color: Color(0xff61F9D5),
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
                            width: MediaQuery.of(context).size.width * 0.01,
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
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                          CustomText(
                            text:
                                "For us Blockchain hasn't reached the stage where people can harness the true financial freedom this technology has promised, our motives date back to the days of the CypherPunk movement where a community turned BitCoin from an idea to concrete implementation, prompted the world to make change on how money is dealt with and produced, to fight against capitalism and greedy regulations. Fast forward, their successful venture has introduced blockchain technology to the everyday person who is here to invest in projects that are promised to help shape the future, however BSC got swarmed by baseless projects that use trendy and abused big tech words to market themselves, or re-using already opened source systems and algorithms from research papers and sell them for big bags, without having the slightest idea on how to implement them, nor have a promising long-lasting future  .We as a community are devoted to present to these new commers the means and tools they need to protect themselves from scams and baseless projects, and provide through our launchpad projects that aim to put advancement in the technology.\nOur goal is to make the crypto/blockchain underground space as safe as it can be.We want the non specialists to feel that blockchain is a safe investment as much as Real-Estate and Stocks/Forex market is. We offer unlimited access to all of our investor safety utilities by simply holding 3 million W\n\n",
                            textsize: 16.0,
                            color: Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: size.height * 0.06,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.08,
              ),

              //Image
              Center(
                child: Container(
                  height: size.height * 0.6,
                  width: size.width * 0.7,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        right: 20,
                        left: 50.0,
                        child: Card(
                          color: Color(0xff61F9D5),
                          child: Container(
                            margin: EdgeInsets.all(2.75),
                            height: size.height * 0.45,
                            width: size.width * 0.66,
                            color: Color(0xff0A192F),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.5,
                        width: size.width * 0.6,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("images/pic1.jpeg"),
                        ),
                      ),
                      Container(
                        height: size.height * 0.5,
                        width: size.width * 0.6,
                        color: Color(0xff61F9D5).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),

              //Where I've Worked title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "02.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CustomText(
                    text: "Where I've Worked",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.08,
                    height: 1.10,
                    color: Color(0xff303C55),
                  ),
                ],
              ),

              MobileWork(),

              SizedBox(
                height: size.height * 0.07,
              ),

              //Some Things I've Built title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "03.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CustomText(
                    text: "Some Things I've Built",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.04,
                    height: 1.10,
                    color: Color(0xff303C55),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic9.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic2.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic3.png",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic4.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic5.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic6.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic7.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic8.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic10.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic11.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic102.gif",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic104.png",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic105.png",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic106.png",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic107.jfif",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic108.jfif",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic109.jfif",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic110.jfif",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.42,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic101.png"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.42,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic103.png"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic111.gif"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic113.jfif"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic114.png"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic115.png"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic116.jfif"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic117.png"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic118.jpeg"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic119.jpeg"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic120.png"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic121.png"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  //height: size.aspectRatio,
                  width: size.width,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "0.4 What's Next?",
                        textsize: 16.0,
                        color: Color(0xff41FBDA),
                        letterSpacing: 3.0,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CustomText(
                        text: "Get In Touch",
                        textsize: 42.0,
                        color: Colors.white,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            "Although I'm currently looking for SDE-1 opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              letterSpacing: 0.75,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      Card(
                        elevation: 4.0,
                        color: Color(0xff64FFDA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(0.85),
                          height: size.height * 0.10,
                          width: size.width * 0.30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff0A192F),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              "Say Hello",
                              style: TextStyle(
                                color: Color(0xff64FFDA),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL("https://github.com/champ96k");
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL(
                          "https://www.linkedin.com/in/tushar-nikam-a29a97131/");
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL("https://twitter.com/champ_96k");
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchEmail();
                    },
                  )
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              //Footer
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                //color: Colors.white,
                child: Text(
                  "Designed & Built by Tushar Nikam 💙 Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.4),
                    letterSpacing: 1.75,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
