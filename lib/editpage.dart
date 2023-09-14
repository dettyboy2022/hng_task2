import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  final String fullName;
  final String slackUsername;
  final String githubHandle;
  final String bio;
  final String skills;
  final String education;
  final String experience;
  final String projects;

  const EditPage({
    Key? key,
    required this.fullName,
    required this.slackUsername,
    required this.githubHandle,
    required this.bio,
    required this.skills,
    required this.education,
    required this.experience,
    required this.projects,
  }) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackUsernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController educationController = TextEditingController();
  TextEditingController experienceController = TextEditingController();
  TextEditingController projectsController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fullNameController.text = widget.fullName;
    slackUsernameController.text = widget.slackUsername;
    githubHandleController.text = widget.githubHandle;
    bioController.text = widget.bio;
    skillsController.text = widget.skills;
    educationController.text = widget.education;
    experienceController.text = widget.experience;
    projectsController.text = widget.projects;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Edit CV',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: fullNameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Full Name',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: slackUsernameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Slack Username',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: githubHandleController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'GitHub Handle',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: bioController,
                style: const TextStyle(color: Colors.white),
                maxLines: 4,
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Bio',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: skillsController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Skills',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: educationController,
                style: const TextStyle(color: Colors.white),
                maxLines: 2,
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Education',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: experienceController,
                maxLines: null,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Experience',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: projectsController,
                maxLines: null,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Projects',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {
                  Map<String, String?> data = {
                    'fullName': fullNameController.text,
                    'slackUsername': slackUsernameController.text,
                    'githubHandle': githubHandleController.text,
                    'bio': bioController.text,
                    'skills': skillsController.text,
                    'education': educationController.text,
                    'experience': experienceController.text,
                    'projects': projectsController.text
                  };

                  Navigator.pop(context, data);
                },
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
