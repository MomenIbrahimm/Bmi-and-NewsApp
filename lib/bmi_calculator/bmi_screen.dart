import 'package:flutter/material.dart';
import 'bmi_result.dart';

//Hello
class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 140.0;

  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/image.jpg'),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top:40),
                child: Text(
                  'Bmi Calculator',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            height: 40,
                            child: const Center(
                              child: Text(
                                'Male',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: isMale ? Colors.black : null,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            height: 40,
                            child: const Center(
                              child: Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: isMale ? null : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Height',
                          style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${height.round()}',
                              style: const TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.white
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Text(
                              'Cm',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: height,
                          activeColor: Colors.white,
                          inactiveColor: Colors.black,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '$weight',
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white
                                  ),
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                 Text(
                                  'km',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.grey[300]
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight-',
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  backgroundColor: Colors.black,
                                  heroTag: 'weight+',
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Age',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '$age',
                                    style: const TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                    ),
                                  ),
                                  const SizedBox(width: 3.0,),
                                  const Text(
                                    'Yr',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    backgroundColor: Colors.black,
                                    heroTag: 'age-',
                                    mini: true,
                                    child: const Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    backgroundColor: Colors.black,
                                    heroTag: 'age+',
                                    mini: true,
                                    child: const Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          double result =
                              (weight / ((height / 100) * (height / 100)));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BMIResultScreen(
                                age: age,
                                isMale: isMale,
                                result: result,
                              ),
                            ),
                          );
                        },
                        height: 40.0,
                        child: const Text(
                          'Calculate',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            isMale = true;
                            height = 140.0;
                            weight = 40;
                            age = 20;
                          });
                        },
                        height: 40.0,
                        child: const Text(
                          'Format',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

// var result = weight / pow(height / 100, 2);
// print(result.round());
}
