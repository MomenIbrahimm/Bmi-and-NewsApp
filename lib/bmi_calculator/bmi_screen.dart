import 'package:flutter/material.dart';
import 'bmi_result.dart';

//Hello
class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120.0;

  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25)),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Bmi Calculator',
                style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white),
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/vectors/male-thin-line-vector-icon-vector-id868651322?k=20&m=868651322&s=612x612&w=0&h=oSeMfkJ15dYpsnGyqHHCYRa-5nd36vgcvE6vchwAOos='),
                                  height: 90.0,
                                  width: 90.0,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'MALE',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: isMale ? Colors.teal : Colors.grey[200],
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/vectors/female-sex-symbol-icon-black-minimalist-icon-isolated-on-white-vector-id866757230?k=20&m=866757230&s=612x612&w=0&h=4dVUoRoD7KQ25ieRP0vtNpK9_t0A1QAc6WHOzJ5nfAQ='),
                                  height: 90.0,
                                  width: 90.0,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'FEMALE',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: isMale ? Colors.grey[200] : Colors.teal,
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
                          'HEIGHT',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Text(
                              'CM',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: height,
                          activeColor: Colors.teal,
                          inactiveColor: Colors.white,
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: Colors.grey[200],
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
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'WEIGHT',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '$weight',
                                style: const TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                ),
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
                                    backgroundColor: Colors.teal,
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
                                    backgroundColor: Colors.teal,
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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: Colors.grey[200],
                          ),
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
                                'AGE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '$age',
                                style: const TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                ),
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
                                    backgroundColor: Colors.teal,
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
                                    backgroundColor: Colors.teal,
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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: Colors.grey[200],
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
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
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
                          'CALCULATE',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: MaterialButton(
                        onPressed: () {
                           setState(() {
                             isMale = true;
                             height = 120.0;
                             weight = 40;
                             age = 20;
                           });
                        },
                        height: 40.0,
                        child: const Text(
                          'Default',
                          style: TextStyle(
                            color: Colors.white,
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
