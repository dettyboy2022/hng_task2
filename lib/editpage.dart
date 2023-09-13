import 'package:flutter/material.dart';


class EditPage extends StatefulWidget {
  final String fullName;
  final String slackUsername;
  final String githubHandle;
  final String bio;

  const EditPage({
    Key? key,
    required this.fullName,
    required this.slackUsername,
    required this.githubHandle,
    required this.bio,
  }) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackUsernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fullNameController.text = widget.fullName;
    slackUsernameController.text = widget.slackUsername;
    githubHandleController.text = widget.githubHandle;
    bioController.text = widget.bio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit CV'),
        actions: [
          IconButton(
            onPressed: () {
              // Prepare the data to return to the previous screen
              Map<String, String?> data = {
                'fullName': fullNameController.text,
                'slackUsername': slackUsernameController.text,
                'githubHandle': githubHandleController.text,
                'bio': bioController.text,
              };

              // Close the current screen and pass the data back
              Navigator.pop(context, data);
            },
            icon: const Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: fullNameController,
              decoration: const InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: slackUsernameController,
              decoration: const InputDecoration(labelText: 'Slack Username'),
            ),
            TextField(
              controller: githubHandleController,
              decoration: const InputDecoration(labelText: 'GitHub Handle'),
            ),
            TextField(
              controller: bioController,
              maxLines: 4,
              decoration: const InputDecoration(labelText: 'Bio'),
            ),
          ],
        ),
      ),
    );
  }
}