import 'package:flutter/material.dart';

class Page_1 extends StatefulWidget {
  @override
  State createState() {
    return _Page_1();
  }
}

class _Page_1 extends State<Page_1> {
  List<Map<String, dynamic>> questions = [
    {
      "question": "2+2=",
      "answer": "4",
      "variation1": "5",
      "variation2": "4",
      "variation3": "3",
      "variation4": "1"
    },
    {
      "question": "2+2*2=",
      "answer": "6",
      "variation1": "8",
      "variation2": "10",
      "variation3": "4",
      "variation4": "6"
    },
    {
      "question": "77+33=",
      "answer": "110",
      "variation1": "100",
      "variation2": "120",
      "variation3": "110",
      "variation4": "90"
    },
    {
      "question": "Fransiya poytaxti qaysi shahar",
      "answer": "Parij",
      "variation1": "Toshkent",
      "variation2": "Moskva",
      "variation3": "Braziliya",
      "variation4": "Parij"
    },
    {
      "question": "Kislorodning massasi qanday",
      "answer": "16",
      "variation1": "14",
      "variation2": "15",
      "variation3": "16",
      "variation4": "17"
    },
  ];
  int questionNumber = 0;
  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Quiz App",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isTrue? "javobingiz to'g'ri": "javobingiz xato", style: TextStyle(color:isTrue? Colors.green: Colors.red, fontSize: 20),),
            Text(
              "${questionNumber + 1}. ${questions[questionNumber]["question"]}?",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    if (questions[questionNumber]["variation1"] ==
                        questions[questionNumber]["answer"]) {
                      if (questionNumber < 4) {
                        questionNumber += 1;
                        isTrue = true;
                      }
                    } else {
                      isTrue=false;
                    }

                    await Future.delayed(Duration(seconds: 3));

                    setState(() {});
                  },
                  child: Text("${questions[questionNumber]["variation1"]}"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (questions[questionNumber]["variation2"] ==
                        questions[questionNumber]["answer"]) {
                      if (questionNumber < 4) {
                        questionNumber += 1;
                        isTrue = true;
                      }
                    } else {
                      isTrue=false;
                    }

                    await Future.delayed(Duration(seconds: 3));

                    setState(() {});
                  },
                  child: Text("${questions[questionNumber]["variation2"]}"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (questions[questionNumber]["variation3"] ==
                        questions[questionNumber]["answer"]) {
                      if (questionNumber < 4) {
                        questionNumber += 1;
                        isTrue = true;
                      }
                    } else {
                      isTrue=false;
                    }

                    await Future.delayed(Duration(seconds: 3));

                    setState(() {});
                  },
                  child: Text("${questions[questionNumber]["variation3"]}"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (questions[questionNumber]["variation4"] ==
                        questions[questionNumber]["answer"]) {
                      if (questionNumber < 4) {
                        questionNumber += 1;
                        isTrue = true;
                      }
                    } else {
                      isTrue=false;
                    }

                    await Future.delayed(Duration(seconds: 3));

                    setState(() {});
                  },
                  child: Text("${questions[questionNumber]["variation4"]}"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
