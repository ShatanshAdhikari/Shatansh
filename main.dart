import 'package:flutter/material.dart';

void main() {
  runApp(const MessagesApp());
}

class MessagesApp extends StatelessWidget {
  const MessagesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessagesPage(),
    );
  }
}

class MessagesPage extends StatelessWidget {
  final List<Map<String, String>> messages = [
  {
    'name': 'Laurent',
    'time': '20:18',
    'message': 'How about meeting tomorrow?',
    'avatar': 'https://i.postimg.cc/YC58svJV/download.jpg',
  },
  {
    'name': 'Tracy',
    'time': '19:22',
    'message': 'I love that idea, it’s great!',
    'avatar': 'https://i.postimg.cc/d12qyTYK/ca.jpg',
  },
  {
    'name': 'Claire',
    'time': '14:34',
    'message': 'I wasn’t aware of that. Let me check.',
    'avatar': 'https://i.postimg.cc/q78fbVZs/cof.jpg',
  },
  {
    'name': 'Joe',
    'time': '11:05',
    'message': 'Flutter just released 1.0 officially. Should I go for it?',
    'avatar': 'https://i.postimg.cc/T2bdzFL4/Shatansh.jpg',
  },
  {
    'name': 'Mark',
    'time': '09:46',
    'message': 'It totally makes sense to get some extra day off.',
    'avatar': 'https://i.postimg.cc/Dwr5Rvnw/iron.jpg',
  },
  {
    'name': 'Williams',
    'time': '08:15',
    'message': 'It has been re-scheduled to next Saturday 7:30pm.',
    'avatar': 'https://i.postimg.cc/2SrXkbHZ/thor.png',
  },
];

  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(message['avatar']!),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message['name']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        message['message']!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  message['time']!,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
