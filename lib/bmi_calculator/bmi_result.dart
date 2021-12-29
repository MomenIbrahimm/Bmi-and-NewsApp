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
      // appBar: AppBar(
      //   backgroundColor: Colors.blueGrey,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: const Icon(
      //       Icons.keyboard_arrow_left,
      //     ),
      //   ),
      //   title: const Text(
      //     'BMI Result',
      //   ),
      //   shape: const RoundedRectangleBorder(
      //       borderRadius: BorderRadius.only(
      //           bottomLeft: Radius.circular(20),
      //           bottomRight: Radius.circular(20))),
      // ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'assets/image.jpg'))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'The normal weight form 18 to 25',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(

                'BMI Result',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You are ${isMale ? 'Male' : 'Female'}',
                      style:
                          const TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Your Bmi ${result.toStringAsFixed(1)}',
                      style:
                          const TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Your age is $age',
                      style:
                          const TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (result > 18 && result < 26)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Column(
                            children: const [
                              Text(
                                'Normal weight',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('keep your weight',style: TextStyle(color: Colors.white),),
                            ],
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
                          Text('Reduce your calories',style: TextStyle(color: Colors.white),),
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
                          Text('Increase your calories',style: TextStyle(color: Colors.white),),
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
                    'Click to return to enter new information',
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
