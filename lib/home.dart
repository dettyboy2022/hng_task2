import 'package:flutter/material.dart';

import 'editpage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String fullName = 'Omotosho Charles Ayomide';
  String slackUsername = 'BoB';
  String githubHandle = 'DettyBoy2022';
  String bio =
      'Flutter developer with a knack for crafting elegant and functional mobile applications. Proficient in Dart and Flutter framework, adept at UI/UX design, and experienced in integrating APIs for seamless app performance. Eager to contribute innovative solutions to enhance user experiences in the mobile space.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile App CV'),
        actions: [
          IconButton(
            onPressed: () async {
              Map<String, String?> result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(
                    fullName: fullName,
                    slackUsername: slackUsername,
                    githubHandle: githubHandle,
                    bio: bio,
                  ),
                ),
              );

              if (result.isNotEmpty) {
                setState(() {
                  fullName = result['fullName']!;
                  slackUsername = result['slackUsername']!;
                  githubHandle = result['githubHandle']!;
                  bio = result['bio']!;
                });
              }
            },
            icon: const Icon(Icons.edit),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/profilepic.jpg'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text('Full Name: $fullName'),
            const SizedBox(
              height: 5,
            ),
            Text('Slack Username: $slackUsername'),
            const SizedBox(
              height: 5,
            ),
            Text('GitHub Handle: $githubHandle'),
            const Divider(),
            Text('Bio: $bio'),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const Text('Skills: Flutter, Dart, Firebase, HTML, CSS, Javascript')
          ],
        ),
      ),
    );
  }
}


