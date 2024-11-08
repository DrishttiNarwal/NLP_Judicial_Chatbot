import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LaymansJusticeScreen(),
      ),
    );
  }
}

class LaymansJusticeScreen extends StatefulWidget {
  @override
  _LaymansJusticeScreenState createState() => _LaymansJusticeScreenState();
}

class _LaymansJusticeScreenState extends State<LaymansJusticeScreen> {
  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 320,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0, 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Menu section with kebab icon
              GestureDetector(
                onTap: toggleMenu,
                child: Row(
                  children: [
                    Icon(Icons.more_vert, color: Colors.black),
                    SizedBox(width: 10),
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              // Dropdown menu items
              if (isMenuOpen)
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Chat History"),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text("Summarize Chat"),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text("Language Settings"),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              SizedBox(height: 20),
              // Greeting section
              Center(
                child: Text(
                  'Hi, How can I help you?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              // Suggestions section
              Text(
                'Here are a few suggestions:',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SuggestionTile(text: "What are my rights as a tenant?"),
                  SuggestionTile(text: "How do I apply for a work Visa?"),
                  SuggestionTile(text: "What are my rights after I receive a defective product?"),
                ],
              ),
              Spacer(),
              // Input bar
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type your legal query here...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: Colors.blue),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuggestionTile extends StatelessWidget {
  final String text;

  const SuggestionTile({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffe7f3ff),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black87,
        ),
      ),
    );
  }
}
