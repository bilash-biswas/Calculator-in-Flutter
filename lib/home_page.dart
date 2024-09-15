import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double result = 0;
  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();

  void calculation(String operator){
    double num1 = double.parse(firstNumberController.text);
    double num2 = double.parse(secondNumberController.text);
    if(operator == '+'){
      result = num1 + num2;
    }else if(operator == 'sub'){
      result = num1 - num2;
    }else if(operator == '*'){
      result = num1 * num2;
    }else if(operator == '/'){
      result = num1 / num2;
    }
    setState(() {
      result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text('First Number')),
                controller: firstNumberController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text('Second Number')),
                controller: secondNumberController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        calculation('+');
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue)),
                      child: const Text(
                        'Add',
                        style: TextStyle(color: Colors.white),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        calculation('sub');
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue)),
                      child: const Text(
                        'Subtract',
                        style: TextStyle(color: Colors.white),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        calculation('*');
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue)),
                      child: const Text(
                        'Multiply',
                        style: TextStyle(color: Colors.white),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        calculation('/');
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue)),
                      child: const Text(
                        'Divide',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text('Result ${result.toStringAsFixed(1)}',style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
