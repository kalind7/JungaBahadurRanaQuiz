import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Junga(),
  ));
}
class Junga extends StatefulWidget {

  @override
  _JungaState createState() => _JungaState();
}

class _JungaState extends State<Junga> {
  List<String>questions = [
    'Did Junga Dai Kill Everybody ??',
    'Is Junga Dai Good or Bad ??',
    'Was he a dictator.?',
    'Has Junga Dai Done Good things in his life ??',
    'Had he had crush on QUEEN ?'
  ];

  List<bool>answers = [
    true, false, true, true, false
  ];

  int questionNumbers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Expanded(
            flex: 7,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('images/image0.jpg'),
                  ),
                ),
                 Text(questions[questionNumbers], style: TextStyle(color: Colors.black , fontSize: 20, fontWeight: FontWeight.w400),),

                Container(
                  child: RaisedButton(
                    color: Colors.green,
                    highlightColor: Colors.white,
                    splashColor: Colors.blue,
                    onPressed: (){

                      setState(() {
                        if(answers[questionNumbers]==true ){

                        }
                        questionNumbers++;
                      });

                    },
                  child: Text('True', style: TextStyle(fontSize: 18),),
                ),
                  ),

                  Container(
                    child: RaisedButton(
                      color: Colors.red,
                      highlightColor: Colors.red,
                      splashColor: Colors.blue,
                      onPressed: (){

                        setState(() {
                          if(answers[questionNumbers]==false ){

                          }
                          questionNumbers++;
                        });

                      },

                      child: Text('False', style: TextStyle(fontSize: 18),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


