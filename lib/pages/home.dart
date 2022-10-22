import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showInterests = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sagnik Biswas"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/sagnik.jpeg"),
              radius: 100,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Sagnik Biswas",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "SRM IST",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Farmako Healthcare Pvt. Ltd.",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: _showInterests ? 1.0 : 0.0,
            duration: const Duration(
              milliseconds: 500,
            ),
            child: ListView(
              shrinkWrap: true,
              children: const [
                ListTile(
                  title: Text("Football"),
                  trailing: Icon(Icons.sports_soccer),
                ),
                ListTile(
                  title: Text("Reading"),
                  trailing: Icon(Icons.book_outlined),
                ),
                ListTile(
                  title: Text("Gaming"),
                  trailing: Icon(Icons.games),
                ),
                ListTile(
                  title: Text("Coding"),
                  trailing: Icon(Icons.code),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            _showInterests = !_showInterests;
          });
        },
        label: _showInterests == false
            ? const Text("Show Interests")
            : const Text("Hide Interests"),
        icon: _showInterests == false
            ? const Icon(Icons.add)
            : const Icon(Icons.remove),
      ),
    );
  }
}
