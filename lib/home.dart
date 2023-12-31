import 'package:flutter/material.dart';
import 'package:hng_task2/constants/text.dart';
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
  String skills = 'Flutter, Dart, Firebase, HTML, CSS, JavaScript';
  String education =
      'Federal University Oye-Ekiti: Agricultural Economics and Extension';
  String experience =
      '''- Circle Dodge Systems: Mobile App Developer\n   . Developed and maintained mobile applications for clients, ensuring seamless user experiences.
   . Collaborated with cross-functional teams to design, develop, and deploy new features.
   . Conducted code reviews and provided mentorship to junior developers.

- Freelance Developer: Web & Mobile Developer\n   . Led the design team in creating intuitive and visually appealing user interfaces.
   . Conducted user research and usability testing to refine product designs.
  . Collaborated with developers to implement designs and iterate on user feedback.
''';
  String projects =
      ''' - E-commerce App.\n   .  A simple E-commerce App to help users get items available from the app.

- Movie Ticketing App\n   .   A movie ticketign App to help you select movie available and book time ,date and cinema experience you want.

- LiveScore UI Design App\n   .   UI design for a sports App.
       ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: const Text(
          'Mobile App CV',
          style: TextStyle(color: Colors.white),
        ),
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
                      skills: skills,
                      education: education,
                      experience: experience,
                      projects: projects),
                ),
              );

              if (result.isNotEmpty) {
                setState(() {
                  fullName = result['fullName']!;
                  slackUsername = result['slackUsername']!;
                  githubHandle = result['githubHandle']!;
                  bio = result['bio']!;
                  skills = result['skills']!;
                  education = result['education']!;
                  experience = result['experience']!;
                  projects = result['projects']!;
                });
              }
            },
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
              ),
              const Divider(),
              const Text(
                'Bio :',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              CustomText(text: bio),
              const SizedBox(
                height: 7,
              ),
              const Divider(),
              const Text(
                'Skills :',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              CustomText(text: skills),
              const Divider(),
              const Text(
                'Education :',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              CustomText(text: education),
              const Divider(),
              const Text(
                'Experience :',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              CustomText(text: experience),
              const Divider(),
              const Text(
                'Projects :',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              CustomText(text: projects),
            ],
          ),
        ),
      ),
    );
  }
}
