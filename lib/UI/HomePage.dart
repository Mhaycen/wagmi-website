import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wagmi/Model/Method.dart';
import 'package:wagmi/UI/About.dart';
import 'package:wagmi/UI/FeatureProject.dart';
import 'package:wagmi/UI/Icons.dart';
import 'package:wagmi/UI/Work.dart';
import 'package:wagmi/Widget/AppBarTitle.dart';
import 'package:wagmi/Widget/CustomText.dart';
import 'package:wagmi/Widget/MainTiitle.dart';
import 'package:wagmi/Widget/OSImages.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:wagmi/Model/metamask.dart';
import 'package:wagmi/UI/Icons.dart';

//  class SizeConfig {
//           static MediaQueryData _mediaQueryData;
//           static double screenWidth;
//           static double screenHeight;
//           static double blockSizeHorizontal;
//           static double blockSizeVertical;

//           void init(BuildContext context) {
//            _mediaQueryData = MediaQuery.of(context);
//            screenWidth = _mediaQueryData.size.width;
//            screenHeight = _mediaQueryData.size.height;
//            blockSizeHorizontal = screenWidth / 100;
//            blockSizeVertical = screenHeight / 100;
//           }
//          }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method = Method();
  AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpaned != false
                ? setState(
                    () {
                      isExpaned = false;
                      print('setState is called');
                    },
                  )
                : {}
            : isExpaned != true
                ? setState(() {
                    print('setState is called');
                    isExpaned = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({int index, Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
        create: (context) => MetaMaskProvider()..init(),
        builder: (context, child) {
          return Scaffold(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              body: SingleChildScrollView(
                physics: ScrollPhysics(),
                primary: true,
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    //navigation Bar
                    Container(
                      height: size.height * 0.14,
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Image.asset('assets/images/cake-token.png'),
                              iconSize: 50,
                              onPressed: () {
                                method.launchURL(
                                    "https://pancakeswap.finance/swap?outputCurrency=0x9dcfc24914f3085a9ef52f75bca45c0b32dd0a7e");
                              },
                            ),
                            Spacer(),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: DefaultTabController(
                                  length: 3,
                                  child: TabBar(
                                    indicatorColor: Colors.transparent,
                                    onTap: (index) async {
                                      _scrollToIndex(index);
                                    },
                                    tabs: [
                                      Tab(
                                        child: AppBarTitle(
                                          text: 'ECOSYSTEM',
                                        ),
                                      ),
                                      Tab(
                                        child: AppBarTitle(
                                          text: 'MOTIVATION',
                                        ),
                                      ),
                                      Tab(
                                        child: AppBarTitle(
                                          text: 'ROADMAP',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Card(
                                elevation: 4.0,
                                color: Color.fromARGB(255, 228, 205, 73),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(0.85),
                                  height: size.height * 0.07,
                                  width: size.height * 0.20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xff0A192F),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  child: Consumer<MetaMaskProvider>(
                                      builder: (context, provider, child) {
                                    String text;
                                    if (provider.isConnected &&
                                        provider.isInOperatingChain) {
                                      text = provider.currentAddress;
                                    } else if (provider.isConnected &&
                                        !provider.isInOperatingChain) {
                                      text =
                                          'Wrong chain. Please connect to BSC mainnet';
                                    } else if (provider.isEnabled) {
                                      return FlatButton(
                                        hoverColor: Color(0xFF3E0449),
                                        onPressed: () => context
                                            .read<MetaMaskProvider>()
                                            .connect(),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                          ),
                                          child: Text(
                                            "Connect Wallet",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 228, 205, 73),
                                            ),
                                          ),
                                        ),
                                      );
                                    } else {
                                      text =
                                          'Please use a web3 supported browser';
                                    }
                                    return Text(text,
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                    255, 228, 205, 73)
                                                .withOpacity(1.0)));
                                    // return ShaderMask(
                                    //   shaderCallback: (bounds) =>
                                    //       const LinearGradient(

                                    //     colors: [
                                    //       Color.fromARGB(255, 228, 205, 73),
                                    //       Color.fromARGB(255, 228, 205, 73),
                                    //       Color.fromARGB(255, 228, 205, 73)
                                    //     ],
                                    //   ).createShader(bounds),
                                    //   child: Text(
                                    //     text,
                                    //     textAlign: TextAlign.center,
                                    //     overflow: TextOverflow.ellipsis,
                                    //     style: Theme.of(context)
                                    //         .textTheme
                                    //         .headline5,
                                    //   ),
                                    // );
                                  }),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        //Social Icon
                        Container(
                          width: size.width * 0.09,
                          height: size.height - 82,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  icon: FaIcon(FontAwesomeIcons.github),
                                  color: Color(0xffffA8B2D1),
                                  iconSize: 16.0,
                                  onPressed: () {
                                    method.launchURL(
                                        "https://github.com/wagamis");
                                  }),
                              IconButton(
                                  icon: FaIcon(FontAwesomeIcons.twitter),
                                  color: Color(0xffffA8B2D1),
                                  iconSize: 16.0,
                                  onPressed: () {
                                    method.launchURL(
                                        "https://twitter.com/W_a_g_m_i_Bsc");
                                  }),
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.telegram),
                                color: Color(0xffffA8B2D1),
                                onPressed: () {
                                  method.launchURL("https://t.me/W_A_G_M_I");
                                },
                                iconSize: 16.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Container(
                                  height: size.height * 0.20,
                                  width: 2,
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: size.height - 82,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: CustomScrollView(
                                controller: _autoScrollController,
                                slivers: <Widget>[
                                  SliverList(
                                      delegate: SliverChildListDelegate([
                                    //Some Things I've Built Main Project
                                    _wrapScrollTag(
                                        index: 0,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: size.height * 0.04,
                                            ),
                                            FeatureProject(
                                              imagePath:
                                                  "assets/videos/wagmi.gif",
                                              ontab: () {
                                                method.launchURL(
                                                    "https://github.com/champ96k/WhatsApp--UI-Clone");
                                              },
                                              projectDesc:
                                                  "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                                              projectTitle:
                                                  "WhatsaApp UI Clone",
                                              tech1: "Flutter",
                                              tech2: "Dart",
                                              tech3: "Flutter UI",
                                            ),
                                          ],
                                        )),

                                    SizedBox(
                                      height: 6.0,
                                    ),

                                    //About Me
                                    _wrapScrollTag(
                                      index: 1,
                                      child: About(),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),

                                    //Where I've Worked
                                    _wrapScrollTag(index: 2, child: Work()),
                                    SizedBox(
                                      height: size.height * 0.10,
                                    ),

                                    //Get In Touch
                                    _wrapScrollTag(
                                      index: 3,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: size.height * 0.68,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                100,
                                            // color: Colors.orange,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomText(
                                                  text: "0.4 What's Next?",
                                                  textsize: 16.0,
                                                  color: Color.fromARGB(
                                                      255, 228, 205, 73),
                                                  letterSpacing: 3.0,
                                                ),
                                                SizedBox(
                                                  height: 16.0,
                                                ),
                                                CustomText(
                                                  text: "",
                                                  textsize: 42.0,
                                                  color: Colors.white,
                                                  letterSpacing: 3.0,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                SizedBox(
                                                  height: 16.0,
                                                ),
                                                Wrap(
                                                  children: [
                                                    Text(
                                                      "Stay Tuned for our official launch of Poo , most advanced honeypot scam check as well as bump notifications for your holdings contracts tax changes ",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white
                                                            .withOpacity(0.4),
                                                        letterSpacing: 0.75,
                                                        fontSize: 17.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 32.0,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    method.launchURL(
                                                        "https://t.me/W_A_G_M_I");
                                                  },
                                                  child: Card(
                                                    elevation: 4.0,
                                                    color: Color.fromARGB(
                                                        255, 228, 205, 73),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.all(0.85),
                                                      height:
                                                          size.height * 0.09,
                                                      width: size.width * 0.10,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff0A192F),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          horizontal: 8.0,
                                                        ),
                                                        child: Text(
                                                          "Say Hello",
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    228,
                                                                    205,
                                                                    73),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          //Footer
                                          Container(
                                            alignment: Alignment.center,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                6,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                100,
                                            color: Colors.white,
                                            child: InkWell(
                                              child: new Text(
                                                'CA : 0x9dcfc24914f3085a9ef52f75bca45c0b32dd0a7e',
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  letterSpacing: 1.75,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                              onTap: () => launch(
                                                  'https://bscscan.com/address/0x9dcfc24914f3085a9ef52f75bca45c0b32dd0a7e#code'),
                                            ),
                                            // child: Text(
                                            //   "Contract: https://bscscan.com/address/0x9dcfc24914f3085a9ef52f75bca45c0b32dd0a7e#code",
                                            //   style: TextStyle(
                                            //     color: Colors.white
                                            //         .withOpacity(0.4),
                                            //     letterSpacing: 1.75,
                                            //     fontSize: 14.0,
                                            //   ),
                                            // ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ])),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.07,
                          height: MediaQuery.of(context).size.height - 82,
                          //color: Colors.orange,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RotatedBox(
                                quarterTurns: 45,
                                child: Text(
                                  "WAGMI - WE ALL GONNA MAKE IT",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 228, 205, 73)
                                        .withOpacity(0.6),
                                    letterSpacing: 3.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Container(
                                  height: 100,
                                  width: 2,
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ));
        });
  }
}
