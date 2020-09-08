import 'package:flutter/material.dart';
import 'package:jung_bahadur_rana/storyBoard.dart';

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

StoryBoard _storyBoard = StoryBoard();

class _JungaState extends State<Junga> {
  bool checkChoice2isempty() {
    if (_storyBoard.getChoice2() == '') {
      return false;
    } else {
      return true;
    }
  }

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
                    image: AssetImage(_storyBoard.backgroundImage()),
                  ),
                ),
                Text(
                  _storyBoard.getTitle(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Colors.white,
                    highlightColor: Colors.grey,
                    splashColor: Colors.blue,
                    child: Text(
                      _storyBoard.getChoice1(),
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      setState(() {
                        _storyBoard.selectedChoice(1);
                      });
                    },
                  ),
                ),
                Visibility(
                  visible: checkChoice2isempty(),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.white,
                      highlightColor: Colors.red,
                      splashColor: Colors.blue,
                      child: Text(
                        _storyBoard.getChoice2(),
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        setState(() {
                          _storyBoard.selectedChoice(2);
                        });
                      },
                    ),
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
