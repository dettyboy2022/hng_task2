import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  final String fullName;
  final String slackUsername;
  final String githubHandle;
  final String bio;
  final String skills;
  final String education;

  const EditPage({
    Key? key,
    required this.fullName,
    required this.slackUsername,
    required this.githubHandle,
    required this.bio,
    required this.skills,
    required this.education,
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

  @override
  void initState() {
    super.initState();
    fullNameController.text = widget.fullName;
    slackUsernameController.text = widget.slackUsername;
    githubHandleController.text = widget.githubHandle;
    bioController.text = widget.bio;
    skillsController.text = widget.skills;
    educationController.text = widget.education;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black26,
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
                decoration: const InputDecoration(
                    labelText: 'Full Name', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: slackUsernameController,
                decoration: const InputDecoration(
                    labelText: 'Slack Username', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: githubHandleController,
                decoration: const InputDecoration(
                    labelText: 'GitHub Handle', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: bioController,
                maxLines: 4,
                decoration: const InputDecoration(
                    labelText: 'Bio', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: skillsController,
                decoration: const InputDecoration(
                    labelText: 'Skills', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: educationController,
                maxLines: 2,
                decoration: const InputDecoration(
                    labelText: 'Education', border: OutlineInputBorder()),
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
                  // Prepare the data to return to the previous screen
                  Map<String, String?> data = {
                    'fullName': fullNameController.text,
                    'slackUsername': slackUsernameController.text,
                    'githubHandle': githubHandleController.text,
                    'bio': bioController.text,
                    'skills': skillsController.text,
                    'education': educationController.text
                  };

                  // Close the current screen and pass the data back
                  Navigator.pop(context, data);
                },
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
