import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

enum Calendar { day, week, month, year }

class _MyAppState extends State<MyApp> {
  Calendar calendarView = Calendar.day;
  double curValue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("App 5"),
            backgroundColor: Colors.cyanAccent,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your name',
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Chip(
                      label: Text('Blue'),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Chip(
                      label: Text('Yellow'),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Chip(
                      label: Text('Green'),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Chip(
                      label: Text('Brown'),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
              Slider(
                value: curValue,
                divisions: 3,
                max: 3,
                onChanged: (double value) {
                  setState(() {
                    curValue = value;
                  });
                },
                label: curValue.toString(),
              ),
            ],
          )),
    );
  }
}
