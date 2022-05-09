import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const Hasil({ Key? key }) : super(key: key);
  int totalScore;

  Function resetQuiz;

  Hasil(this.totalScore, this.resetQuiz);
  // Getter
  String get hasilText {
    String hasil = 'Anda berhasil';
    if (totalScore <= 8) {
      hasil = 'Anda agak aneh!';
    } else if (totalScore <= 12) {
      hasil = 'Anda cukup baik!';
    } else if (totalScore <= 16) {
      hasil = 'Anda agak hebat!';
    } else {
      hasil = 'Anda hebat sekali!';
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(hasilText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          TextButton(
            onPressed: resetQuiz,
            child: Text('Reset Quiz'),
            style: TextButton.styleFrom(primary: Colors.blue[600]),
          ),
        ],
      ),
    );
  }
}
