import 'package:flutter/material.dart';

// Entry point of the application
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layman\'s Justice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Layman\'s Justice'),
    );
  }
}

// Main Home Page of the app
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Header section
              const Column(
                children: [
                  Text(
                    'Layman\'s Justice',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Legal Guidance Made Easy',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              // Chatbot icon
              Image.asset(
                'asset/judicial_chatbot/images/logo.jpg',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 20),
              // Chat button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the ChatPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Chat with Judicial Chatbot',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              // Footer section
              const Divider(),
              const Text(
                'Help & Support: FAQs, User Feedback',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Your data is encrypted and secure with us, ensuring complete privacy.',
                style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Chat Page widget that displays the Judicial Chatbot screen
class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Judicial Chatbot"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          "Welcome to the Judicial Chatbot!",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
