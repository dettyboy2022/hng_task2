import 'package:flutter/material.dart';
// import 'edit_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CVHomePage(),
    );
  }
}

class CVHomePage extends StatefulWidget {
  @override
  _CVHomePageState createState() => _CVHomePageState();
}

class _CVHomePageState extends State<CVHomePage> {
  
  String fullName = 'John Doe';
  String slackUsername = 'john_doe';
  String githubHandle = 'johndoe';
  String bio = 'Flutter Developer';

  void navigateToEditPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditPage(this)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: navigateToEditPage,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text('Full Name: $fullName'),
          Text('Slack Username: $slackUsername'),
          Text('GitHub Handle: $githubHandle'),
          Text('Bio: $bio'),
        ],
      ),
    );
  }
}




// edit_page.dart
// import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  final _CVHomePageState parent;

  EditPage(this.parent);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackUsernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit CV'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              widget.parent.setState(() {
                widget.parent.fullName = fullNameController.text;
                widget.parent.slackUsername = slackUsernameController.text;
                widget.parent.githubHandle = githubHandleController.text;
                widget.parent.bio = bioController.text;
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: fullNameController..text = widget.parent.fullName,
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: slackUsernameController..text = widget.parent.slackUsername,
              decoration: InputDecoration(labelText: 'Slack Username'),
            ),
            TextField(
              controller: githubHandleController..text = widget.parent.githubHandle,
              decoration: InputDecoration(labelText: 'GitHub Handle'),
            ),
            TextField(
              controller: bioController..text = widget.parent.bio,
              decoration: InputDecoration(labelText: 'Bio'),
            ),
          ],
        ),
      ),
    );
  }
}