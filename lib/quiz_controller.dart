import 'question.dart';

class QuizController {
  int _questionNumber = 0;

  final List<Question> questionBank = [
    Question('Computer Processing Unit adalah kepanjangan dari CPU.', false),
    Question(
        'LAN adalah jaringan komputer dengan area yang berskala kecil.', true),
    Question('RAM DDR4 memiliki batas maksimal kecepatan 3200 Mhz', true),
    Question('Storage EMMC lebih lambat dibandingkan dengan storage UFS.', true),
    Question('Read Acces Memory adalah kepanjangan dari RAM.', false),
    Question('RAM bertipe LPDDR dapat dilepas', false),
    Question('Kepanjangan BIOS adalah Basic Input Output System.', true),
    Question(
        'NPU adalah komponen dari CPU yang bertugas melakukan komputasi AI On Device secara offline.',
        true),
    Question('Open System Interconnection adalah kepanjangan dari OSI.', true),
    Question('File Technology Protocol adalah kepanjangan dari FTP.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

QuizController quizController = QuizController();
