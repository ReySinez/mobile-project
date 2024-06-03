import 'package:flutter/material.dart';
import 'package:plan_t/home.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.title});

  final String title;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String dropdownValue = 'Pilih';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 64),
              Image.asset(
                'assets/images/logo.png',
                width: 250,
                height: 250,
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 55),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Text(
                    '-',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  width: 300,
                  height: 70,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Пошук",
                      hintStyle:
                          const TextStyle(fontSize: 24, color: Colors.black),
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.search),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color(0xFF8367C7),
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color(0xFF8367C7),
                          width: 2,
                        ),
                      ),
                    ),
                    style: const TextStyle(fontSize: 24),
                  )),
              const SizedBox(height: 16),
              Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF8367C7),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          hint: const Text('Pilih'),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 24),
                          underline: Container(
                            height: 0,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: const [
                            DropdownMenuItem<String>(
                              value: 'Pilih',
                              child: Text('Что-тш-1'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'One',
                              child: Text('Что-то-3'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Two',
                              child: Text('Что-то-2'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Three',
                              child: Text('Что-то-3'),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              const SizedBox(height: 128),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 80),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: const Text(
                  'Тисни',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
