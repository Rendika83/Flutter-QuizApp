import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  // const Jawaban({ Key? key }) : super(key: key);
  Function handlePilih;
  String jawabanText;

  Jawaban(this.handlePilih, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // Jawaban 1
        onPressed: handlePilih,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue[600],
        ),
        child: Text(jawabanText),
      ),
    );
  }
}
