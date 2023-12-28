import 'package:flutter/material.dart';
import 'package:water_app/datatypes/extra_bool.dart';

class Home extends StatefulWidget {
  Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  ExtraBool isEfficient = ExtraBool(val: 0);

  Map imageMap = {
    0: 'QuestionMark.png',
    1:'CheckMark.jpg',
    2:'ThumbsUp.png',
    3: 'Warning.png',
    4: 'Stop.png'
  };

  Map subTitleMap = {
    0: ['Unknown', "I mean, you need to enter your data to be able to to see how you're doing, no? Click the button to start recording."],
    1: ["Well Done", "You are doing pretty good with conserving water on your own. Keep it up!"],
    2: ["Not Bad", "You are in the right track! Continue on to be a true water warrior!"],
    3: ["Attention", "You are dangerously close to bringing the future of water in peril! Careful!"],
    4: ["Oh no", "Your actions are seriously damaging the condition of water availability. Please be mindful!"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blueGrey[800],
    appBar: AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white
      ),
      backgroundColor: Colors.lightBlue[400],
      centerTitle: true,
      title: const Text(
        'Water Consumption Recorder',
        style: TextStyle(
          color: Colors.white
        ),
      ),
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 150,),
          CircleAvatar(radius: 100, child: Image.asset('assets/${imageMap[isEfficient.val]}'),),
          const Divider(height: 40, indent: 30, endIndent: 30,),
          Text(
            subTitleMap[isEfficient.val][0],
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
              fontFamily: 'Merriweather',
              color: Colors.white
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            subTitleMap[isEfficient.val][1],
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white
            ),
          ),
          SizedBox(height: 20,),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, "/record");
          }, icon: const Icon(Icons.assignment), style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(Colors.blue[900])
          ),)
        ],
      ),
    );
  }
}
