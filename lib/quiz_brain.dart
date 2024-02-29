import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Bazı kediler aslında insanlara alerjiktir.', true),
    Question('Bir ineği merdivenlerden aşağı yönlendirebilirsiniz ama yukarı yönlendiremezsiniz.', false),
    Question('İnsan kemiklerinin yaklaşık dörtte biri ayaklardadır.', true),
    Question('Bir sümüğün kanı yeşildir.', true),
    Question('Buzz Aldrin\'in annesinin kızlık soyadı \"Moon\" idi.', true),
    Question('Portekiz\'de okyanusta idrar yapmak yasaktır.', true),
    Question('Kare şeklinde kuru bir kağıt parçası yedi kez katlanamaz.', false),
    Question('Londra, İngiltere\'de, eğer Parlamento Binası\'nda ölürseniz, bina çok kutsal bir yer olarak kabul edildiği için teknik olarak devlet cenazesine hak kazanırsınız.', true),
    Question('Herhangi bir hayvan tarafından üretilen en yüksek ses 188 desibeldir. Bu hayvan Afrika Filidir.', false),
    Question('İki insan akciğerinin toplam yüzey alanı yaklaşık 70 metrekaredir.', true),
    Question('Google\'ın orijinal adı "Backrub" idi.', true),
    Question('Çikolata bir köpeğin kalbini ve sinir sistemini etkiler; birkaç ons küçük bir köpeği öldürmek için yeterlidir.', true),
    Question('Batı Virginia, ABD\'de, arabanızla bir hayvana kazara çarparsanız, onu eve götürüp yiyebilirsiniz.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Şimdi true dönüyor');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
