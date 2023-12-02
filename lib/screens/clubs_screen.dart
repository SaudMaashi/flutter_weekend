import 'package:flutter/material.dart';
import 'package:flutter_weekend/widgets/customized_card.dart';

class ClubsNews extends StatelessWidget {
  const ClubsNews({super.key});
  @override
  Widget build(BuildContext context) {
    List<CostumizedCard> cardList = [
      const CostumizedCard(
          eventName: "Git & GitHub",
          eventImage: "assets/channels4_profile.jpg",
          clubName: "KFUPMCC",
          date: "29 Nov",
          time: "7:00 PM - 9:00 PM",
          onDialog: ""),
      const CostumizedCard(
          eventName: "Chess Workshop",
          eventImage: "assets/ieclub_kfupm_logo.jpeg",
          clubName: "IE Club",
          date: "30 Nov",
          time: "6:00 PM",
          onDialog: ""),
      const CostumizedCard(
          eventName: "دورة تصوير الفيديو",
          eventImage: "assets/mediacub.jpeg",
          clubName: "Media Club",
          date: "28 Nov",
          time: "7:30 PM",
          onDialog: "")
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Clubs News"),
      ),
      body: ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (context, index) => cardList[index],
      ),
    );
  }
}
