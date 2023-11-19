import 'package:flutter/material.dart';

void main() {
  runApp( QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final List<Icon> scoreKeeper = [ ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                 child: Center(
                  child: Text("This is where the question will there",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
              ),
               ),
              Container(
                height: 70,
                margin: const EdgeInsets.all(10),
                child: MaterialButton(onPressed: (){
                  setState(() {
                    scoreKeeper.add(const Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  });
                },
                  color: Colors.green,
                child: const Text("True",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                ),
              ),
              Container(
                height: 70,
                margin: EdgeInsets.only(right: 10, left: 10, top: 10),
                child: MaterialButton(onPressed: (){
                  setState(() {
                    scoreKeeper.add(const Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  });

                },
                  color: Colors.red,
                child: const Text("False",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: scoreKeeper,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
