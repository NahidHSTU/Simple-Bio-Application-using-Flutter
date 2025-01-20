import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CvScreen(),
    );
  }
}

class CvScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My CV'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/profile.jpg'), // Add a profile image in assets
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Nahid Islam',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            ),
            const Divider(height: 32, thickness: 2),
            SectionTitle(title: 'Contact Information'),
            InfoRow(icon: Icons.email, text: 'nahidislam2302106@gmail.com'),
            InfoRow(icon: Icons.phone, text: '01521721890'),
            InfoRow(icon: Icons.location_on, text: 'Rangpur City, Bangladesh'),
            const Divider(height: 32, thickness: 2),
            SectionTitle(title: 'Skills'),
            const Text('- Flutter & Dart', style: TextStyle(fontSize: 16)),
            const Text('- Competetive Programming',
                style: TextStyle(fontSize: 16)),
            const Text('- Machine Learning', style: TextStyle(fontSize: 16)),
            const Divider(height: 32, thickness: 2),
            SectionTitle(title: 'Education'),
            const Text('B.Sc. in ECE', style: TextStyle(fontSize: 16)),
            Text('HSTU, 2027',
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
            const Divider(height: 32, thickness: 2),
            SectionTitle(title: 'Experience'),
            const Text('Assistant IT Secretary at ECE club of HSTU',
                style: TextStyle(fontSize: 16)),
            Text('2023 - Present',
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
            const SizedBox(height: 16),
            const Text('ICT and Innovation Affairs Secretary at DYDF',
                style: TextStyle(fontSize: 16)),
            Text('2023 - Present',
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
