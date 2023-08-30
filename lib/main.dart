import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title:
                const Text("Question", style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
          ),
          body: const MainPage(),
        ));
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool check = false;
  String question = "";
  String answer1 = "";
  String answer2 = "";
  String answer3 = "";
  String answer4 = "";
  List<Widget> score = [];
  int scr = 0;
  //String type = "Normal";
  List<String> questions = [
    "Which one of these is gay?",
    "What is the name of the main antagonist in the Shakespeare play Othello?",
    "What element is denoted by the chemical symbol Sn in the periodic table?",
    "What is the currency of Denmark?",
    "What is the capital city of Australia?",
    "Which US state was Joe Biden born in?",
    "Who is the most awesome man in the world?",
    "Where is the smallest bone in the human body located?",
    "With over 222 million units sold, what is Apple's highest-selling iPhone model?",
    "Elon Musk is the CEO of which global automotive brand?",
    "Name the eldest Weasley sibling from Harry Potter.",
    "Who discovered penicillin?",
    "Which year did the European Union first introduce the Euro as currency?",
    "Who authored The Hunger Games book series?",
    "What is the name of Jon Snow's direwolf?",
    "What is the official name of the Peaky Blinders' family business?"
  ];

  List<String> que = [
    "Which one of these is gay?",
    "What is the name of the main antagonist in the Shakespeare play Othello?",
    "What element is denoted by the chemical symbol Sn in the periodic table?",
    "What is the currency of Denmark?",
    "What is the capital city of Australia?",
    "Which US state was Joe Biden born in?",
    "Who is the most awesome man in the world?",
    "Where is the smallest bone in the human body located?",
    "With over 222 million units sold, what is Apple's highest-selling iPhone model?",
    "Elon Musk is the CEO of which global automotive brand?",
    "Name the eldest Weasley sibling from Harry Potter.",
    "Who discovered penicillin?",
    "Which year did the European Union first introduce the Euro as currency?",
    "Who authored The Hunger Games book series?",
    "What is the name of Jon Snow's direwolf?",
    "What is the official name of the Peaky Blinders' family business?"
  ];

  List<String> answers = [
    "Rövşən",
    "Qocayev Rövşən",
    "Rövşən Qocayev",
    "The guy who answering question",
    "Lago",
    "Othello",
    "Voldemort",
    "Shakespeare",
    "Iron",
    "Copper",
    "Tin",
    "Sinconium",
    "Euro",
    "Dollar",
    "Frank",
    "Krone",
    "Oslo",
    "Canberra",
    "Australia",
    "Sydney",
    "New York",
    "Pennsylvania",
    "Los Angeles",
    "Boston",
    "Ənnağı",
    "Nağılı Ənnağı",
    "Ənnağı Nağılı",
    "The guy who created this app",
    "Arm",
    "Leg",
    "Head",
    "Ear",
    "iPhone 6/6 Plus",
    "iPhone 7/7 Plus",
    "iPhone X",
    "iPhone 14/14 Pro",
    "Qaz",
    "Audi",
    "BMW",
    "Tesla",
    "Ron Weasley",
    "Fred Weasley",
    "Bill Weasley",
    "Percy Weasley",
    "Albert Einstein",
    "Alexander Fleming",
    "Jon Fon Penicillin",
    "Maria Curie",
    "1999",
    "2002",
    "1989",
    "2008",
    "J.R.R. Tolkien",
    "J.K. Rowling",
    "Suzanna Collins",
    "Nizami Gencevi",
    "White",
    "Cotton",
    "Killer",
    "Ghost",
    "Peaky Blinders MMC",
    "Shelby Company Limited",
    "Thomas and Friends Company",
    "Microsoft"
  ];

  List<String> answer = [
    "Rövşən",
    "Qocayev Rövşən",
    "Rövşən Qocayev",
    "The guy who answering question",
    "Lago",
    "Othello",
    "Voldemort",
    "Shakespeare",
    "Iron",
    "Copper",
    "Tin",
    "Sinconium",
    "Euro",
    "Dollar",
    "Frank",
    "Krone",
    "Oslo",
    "Canberra",
    "Australia",
    "Sydney",
    "New York",
    "Pennsylvania",
    "Los Angeles",
    "Boston",
    "Ənnağı",
    "Nağılı Ənnağı",
    "Ənnağı Nağılı",
    "The guy who created this app",
    "Arm",
    "Leg",
    "Head",
    "Ear",
    "iPhone 6/6 Plus",
    "iPhone 7/7 Plus",
    "iPhone X",
    "iPhone 14/14 Pro",
    "Qaz",
    "Audi",
    "BMW",
    "Tesla",
    "Ron Weasley",
    "Fred Weasley",
    "Bill Weasley",
    "Percy Weasley",
    "Albert Einstein",
    "Alexander Fleming",
    "Jon Fon Penicillin",
    "Maria Curie",
    "1999",
    "2002",
    "1989",
    "2008",
    "J.R.R. Tolkien",
    "J.K. Rowling",
    "Suzanna Collins",
    "Nizami Gencevi",
    "White",
    "Cotton",
    "Killer",
    "Ghost",
    "Peaky Blinders MMC",
    "Shelby Company Limited",
    "Thomas and Friends Company",
    "Microsoft"
  ];

  void getQuestion() {
    // if (type == "Normal") {
    //
    // }
    int index = Random().nextInt(questions.length - 1) + 1;
    question = questions[index];
    answer1 = answers[index * 4];
    answer2 = answers[index * 4 + 1];
    answer3 = answers[index * 4 + 2];
    answer4 = answers[index * 4 + 3];
    questions.removeAt(index);
    answers.removeAt(index * 4);
    answers.removeAt(index * 4);
    answers.removeAt(index * 4);
    answers.removeAt(index * 4);
    // else {
    //   question = questions[0];
    //   answer1 = answers[0];
    //   answer2 = answers[1];
    //   answer3 = answers[2];
    //   answer4 = answers[3];
    // }
  }

  void ans(String ans) {
    if (question == que[1] && ans == answer[4]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[2] && ans == answer[10]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[3] && ans == answer[15]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[4] && ans == answer[17]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[5] && ans == answer[21]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[6]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[7] && ans == answer[31]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[8] && ans == answer[32]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[9] && ans == answer[39]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[10] && ans == answer[41]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[11] && ans == answer[45]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[12] && ans == answer[48]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[13] && ans == answer[54]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[14] && ans == answer[59]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else if (question == que[15] && ans == answer[61]) {
      score.add(const Icon(
        Icons.thumb_up,
        color: Colors.green,
      ));
      scr++;
    } else {
      score.add(const Icon(
        Icons.thumb_down,
        color: Colors.red,
      ));
    }
    setState(() {
      // if (questions.length > 1 && type == "Normal") {
      if (questions.length > 1) {
        getQuestion();
      } else {
        // if (type == "Bonus") {
        //   showAlertDialog2(context);
        //   again();
        // } else {
        //
        // }
        showAlertDialog(context);
        again();
      }
    });
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = TextButton(
      child: const Text("Try again"),
      onPressed: () {
        setState(() {
          Navigator.of(context).pop();
        });
      },
    );

    // Widget bonusButton = TextButton(
    //     onPressed: () {
    //       setState(() {
    //         type = "Bonus";
    //         Navigator.of(context).pop();
    //       });
    //     },
    //     child: const Text("Bonus Question"));
    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      content: Text("Score: $scr"),
      // actions: [bonusButton, okButton],
      actions: [okButton],
    );

    // show the dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  // showAlertDialog2(BuildContext context) {
  //   // Create button
  //   Widget okButton = TextButton(
  //     child: const Text("Try again"),
  //     onPressed: () {
  //       setState(() {
  //         type = "Normal";
  //         Navigator.of(context).pop();
  //       });
  //     },
  //   );
  //   // Create AlertDialog
  //   AlertDialog alert = AlertDialog(
  //     content: const Text("Wow! You also answered bonus question."),
  //     actions: [okButton],
  //   );
  //
  //   // show the dialog
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (BuildContext context) {
  //       return alert;
  //     },
  //   );
  // }

  void again() {
    questions.clear();
    answers.clear();
    score.clear();
    scr = 0;
    check = false;
    for (int i = 0; i < question.length; i++) {
      questions.add(que[i]);
      answers.add(answer[i * 4]);
      answers.add(answer[i * 4 + 1]);
      answers.add(answer[i * 4 + 2]);
      answers.add(answer[i * 4 + 3]);
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (!check) {
        getQuestion();
        check = true;
      }
    });
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              color: Colors.white,
              width: 500,
              height: 250,
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              margin:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 35.0),
              child: Center(
                child: Text(
                  question,
                  style: const TextStyle(color: Colors.black, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(25.7, 15.0, 25.7, 5.0),
            child: Row(
              children: score,
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  ans(answer1);
                });
              },
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(17.0),
                margin:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    const Text(
                      "A)",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      answer1,
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    )
                  ],
                ),
              )),
          TextButton(
              onPressed: () {
                setState(() {
                  ans(answer2);
                });
              },
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(17.0),
                margin:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    const Text(
                      "B)",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      answer2,
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    )
                  ],
                ),
              )),
          TextButton(
              onPressed: () {
                setState(() {
                  ans(answer3);
                });
              },
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(17.0),
                margin:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    const Text(
                      "C)",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      answer3,
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    )
                  ],
                ),
              )),
          TextButton(
              onPressed: () {
                setState(() {
                  ans(answer4);
                });
              },
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(17.0),
                margin:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    const Text(
                      "D)",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      answer4,
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
