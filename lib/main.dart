import 'package:flutter/material.dart';

import './quiz.dart';
import './hasil.dart';
// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp ({ Key? key }) : super(key: key);
  var _soalIndex = 0;
  var totalScore = 0;

  var pertanyaan = [
    {
      'pertanyaan': 'Tempat apa yang ingin anda kunjungi?',
      'jawaban': [
        {'text': 'Pegunungan', 'score': 10}, // Alt Shift Arrow Bawah
        {'text': 'Pantai', 'score': 5}, // Alt Shift Arrow Bawah
        {'text': 'Lembah', 'score': 3}, // Alt Shift Arrow Bawah
        {'text': 'Hutan', 'score': 1}, // Alt Shift Arrow Bawah
      ],
    },
    {
      'pertanyaan': 'Apa warna kesukaan anda?',
      'jawaban': [
        {'text': 'Hitam', 'score': 10}, // Alt Shift Arrow Bawah
        {'text': 'Merah', 'score': 5}, // Alt Shift Arrow Bawah
        {'text': 'Biru', 'score': 3}, // Alt Shift Arrow Bawah
        {'text': 'Hijau', 'score': 1},
      ],
    },
    {
      'pertanyaan': 'Apa hobi anda?',
      'jawaban': [
        {'text': 'Ngoding', 'score': 10}, // Alt Shift Arrow Bawah
        {'text': 'Berenang', 'score': 5}, // Alt Shift Arrow Bawah
        {'text': 'Sepakbola', 'score': 3}, // Alt Shift Arrow Bawah
        {'text': 'Lari', 'score': 1},
      ],
    },
  ];

  void resetQuiz() {
    setState(() {
      _soalIndex = 0;
      totalScore = 0;
    });
  }

  void _jawaban(int score) {
    // print("Tombol berhasil ditekan");
    totalScore = totalScore + score;
    setState(() {
      _soalIndex += 1;
    });
    if (_soalIndex < pertanyaan.length) {
      print('Masih ada soal berikutnya!');
    } else {
      print('Sudah tidak ada soal!');
    }

    print(_soalIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Quiz Pertama saya"),
        ),
        body: _soalIndex < pertanyaan.length
            ? Quiz(
                jawaban: _jawaban,
                pertanyaan: pertanyaan,
                soalIndex: _soalIndex,
              )
            : Hasil(totalScore, resetQuiz),
      ),
    ); // MaterialApp
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Text("Halo, Selamat Datang!"),
//     );  // MaterialApp
//   }
// }
