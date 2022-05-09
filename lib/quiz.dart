import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './jawaban.dart';

class Quiz extends StatelessWidget {
  // const Quiz ({ Key? key }) : super(key: key);
  Function jawaban;
  List<Map<String, Object>> pertanyaan;
  int soalIndex;

  Quiz({
    @required this.jawaban,
    @required this.pertanyaan,
    @required this.soalIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(pertanyaan[soalIndex]['pertanyaan']), // di part 9
        ...(pertanyaan[soalIndex]['jawaban'] as List<Map<String, Object>>)
            .map((jawabanText) {
          return Jawaban(
              () => jawaban(jawabanText['score']), jawabanText['text']);
        }).toList(),
      ],
    );
  }
}
