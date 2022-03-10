import 'package:flutter/material.dart';
import 'package:wagmi/Widget/work_custom_data.dart';

class WorkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "Community Stronghold, System set up ",
          subTitle:
              "Building a strong community of developers and marketers, getting partnership with telegram for exclusive acces to their API. Building the Amazon-BSC Pipeline.",
          duration: "March 2022",
        ),
        WorkCustomData(
          title: "Poo Launch",
          subTitle:
              "Getting our cloud containers ready, for real-time flow of data. Finishing up latest git pull requests",
          duration: "Late March",
        ),
        WorkCustomData(
          title: "Mainstream Listings Partnership",
          subTitle:
              "Making our Amazon Data Lake open sourced for research use. Finalising Parternship with Coingecko, where we help provide access to our Telegram Chat Data",
          duration: "April 2022",
        ),
        WorkCustomData(
          title: "W-X Platform",
          subTitle: "Launch App on our Website as well as Play Store/App Store",
          duration: "April 2022",
        ),
        WorkCustomData(
          title: "Deliver Solidity MasterClasses courses",
          subTitle:
              "Opening our Solidity courses made by dev members of our community ",
          duration: "April 2022",
        ),
      ],
    );
  }
}
