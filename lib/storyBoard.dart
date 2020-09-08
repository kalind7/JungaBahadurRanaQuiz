import 'package:jung_bahadur_rana/story.dart';

class StoryBoard {
  int _storyNumbers = 0;

  List<Story> _storyOrder = [
    Story(
        backgroundImage: 'images/image0.jpg',
        title: 'Rise of Junga Bahadur',
        choice1: 'start',
        choice2: ''),
    Story(
        backgroundImage: 'images/image1.jpg',
        title: 'Impress the king Rajendra Bikram Shah and become captain',
        choice1: 'Jump from dharhara',
        choice2: 'Accompanying with him during terai visit '),
    Story(
        backgroundImage: 'images/image2.jpg',
        title: 'Create the Power vacuum',
        choice1: 'Kill the prime minster Mathabarsingh Thapa ',
        choice2: 'Kill the Crown Prince '),
    Story(
      backgroundImage: 'images/image3.jpg',
      title: 'Dismantle queen power',
      choice1: 'Kill the king ',
      choice2: 'Kill Army Chief Gagan Singh ',
    ),
    Story(
      backgroundImage: 'images/image4.jpg',
      title: 'Becomes Prime minster',
      choice1: 'Massacre of all the powerful person in kot parva',
      choice2: 'Kill the queen ',
    ),
    Story(
      backgroundImage: 'images/image5.jpg',
      title: 'Eliminated all opposition and exiled the Queen ',
      choice1: 'Another Mass Massacre i.e Bhandarkhal Parva ',
      choice2: 'Alau massacre ',
    ),
    Story(
        backgroundImage: 'images/image6.jpg',
        title: 'Junga Bahadur and his families rules for 108 years',
        choice1: 'Re-start',
        choice2: ''),
  ];

  String backgroundImage() {
    return _storyOrder[_storyNumbers].backgroundImage;
  }

  String getTitle() {
    return _storyOrder[_storyNumbers].title;
  }

  String getChoice1() {
    return _storyOrder[_storyNumbers].choice1;
  }

  String getChoice2() {
    return _storyOrder[_storyNumbers].choice2;
  }

  void selectedChoice(int choiceNumber) {
    if (_storyNumbers == 0 && choiceNumber == 1) {
      _storyNumbers = 1;
    } else if (_storyNumbers == 1 && choiceNumber == 1) {
      _storyNumbers = 0;
    } else if (_storyNumbers == 1 && choiceNumber == 2) {
      _storyNumbers = 2;
    } else if (_storyNumbers == 2 && choiceNumber == 1) {
      _storyNumbers = 0;
    } else if (_storyNumbers == 2 && choiceNumber == 2) {
      _storyNumbers = 3;
    } else if (_storyNumbers == 3 && choiceNumber == 1) {
      _storyNumbers = 0;
    } else if (_storyNumbers == 3 && choiceNumber == 2) {
      _storyNumbers = 4;
    } else if (_storyNumbers == 4 && choiceNumber == 2) {
      _storyNumbers = 0;
    } else if (_storyNumbers == 4 && choiceNumber == 1) {
      _storyNumbers = 5;
    } else if (_storyNumbers == 5 && choiceNumber == 2) {
      _storyNumbers = 0;
    } else if (_storyNumbers == 5 && choiceNumber == 1) {
      _storyNumbers = 6;
    } else if (_storyNumbers == 6 && choiceNumber == 1) {
      _storyNumbers = 0;
    }
  }
}
