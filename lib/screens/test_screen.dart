import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late Box box;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController isMarriedController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    isMarriedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Hive'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                box = await Hive.openBox('test');
              },
              child: const Text('open box'),
            ),
            ElevatedButton(
              onPressed: () {
                box = Hive.box('test');
              },
              child: const Text('access box'),
            ),
            ElevatedButton(
              onPressed: () async {
                box.putAll({
                  "name": 'Muhamed',
                  "age": 20,
                  "isMarried": false,
                });
              },
              child: const Text('put data'),
            ),
            ElevatedButton(
              onPressed: () {
                print("name = ${box.get('name')}");
                print("age = ${box.get('age')}");
                print("marital status= ${box.get('isMarried')}");
              },
              child: const Text('get value'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: ageController,
                decoration: const InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: isMarriedController,
                decoration: const InputDecoration(
                  labelText: 'Marital Status (true/false)',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final String name = nameController.text;
                final int age = int.tryParse(ageController.text) ?? 0;
                final bool isMarried =
                    isMarriedController.text.toLowerCase() == 'true';

                // Updating values
                box.put('name', name);
                box.put('age', age);
                box.put('isMarried', isMarried);
              },
              child: const Text('update value'),
            ),
          ],
        ),
      ),
    );
  }
}
