import 'package:flutter/material.dart';

import 'constants/text.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  String fullName = 'Omotosho Charles Ayomide';

  String slackUsername = 'BoB';

  String githubHandle = 'DettyBoy2022';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.grey.shade800,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profilepic.jpg'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CustomText(
            text: 'Full Name: $fullName',
          ),
          const SizedBox(
            height: 7,
          ),
          CustomText(text: 'Slack Username: $slackUsername'),
          const SizedBox(
            height: 7,
          ),
          CustomText(text: 'GitHub Handle: $githubHandle'),
          const SizedBox(
            height: 7,
          ),
          const Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              CustomText(text: ' : Lagos, Nigeria'),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          const Row(
            children: [
              Icon(
                Icons.mail,
                color: Colors.white,
              ),
              CustomText(text: ' : charlesayomide@hotmail.com')
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          const Row(
            children: [
              Icon(
                Icons.phone,
                color: Colors.white,
              ),
              CustomText(text: ' : +2349020551592')
            ],
          ),
        ],
      ),
    );
  }
}
