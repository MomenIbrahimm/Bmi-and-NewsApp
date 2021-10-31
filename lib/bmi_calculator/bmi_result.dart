import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  BMIResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: const Text(
          'BMI Result',
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'The normal weight form 18 to 25',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(50)),
                color: Colors.grey[300],
              ),
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gender : ${isMale ? 'Male' : 'Female'}',
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Result : ${result.toStringAsFixed(1)}',
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Age : $age',
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (result > 18 && result < 26)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Normal weight',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  if (result > 26)
                    Column(
                      children: const [
                        Text(
                          'You need to lose weight',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  if (result < 18)
                    Column(
                      children: const [
                        Text(
                          'You need to gain weight',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);

                },
                child: const Text(
                  'Back to try again',
                  style: TextStyle(color: Colors.blueGrey),
                )),
          ],
        ),
      ),
    );
  }
}
