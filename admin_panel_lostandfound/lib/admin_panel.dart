import 'package:flutter/material.dart';
import 'lostfound.dart';

class AdminPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Panel')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFeatureCard(
                context,
                icon: Icons.find_in_page,
                label: 'Lost and Found',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LostFoundPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context,
      {required IconData icon,
      required String label,
      required VoidCallback onTap}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.tealAccent,
        child: Container(
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(icon, size: 40, color: Colors.teal),
              SizedBox(width: 20),
              Text(label,
                  style: TextStyle(fontSize: 20, color: Colors.black87)),
            ],
          ),
        ),
      ),
    );
  }
}
