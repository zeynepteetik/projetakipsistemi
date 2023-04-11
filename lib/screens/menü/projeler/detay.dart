import 'package:flutter/material.dart';

class ProjeDetaySayfasi extends StatelessWidget {
  final String projeAdi;
  final String aciliyetDurumu;
  final String baslangicTarihi;
  final String bitisTarihi;

  const ProjeDetaySayfasi({
    Key? key,
    required this.projeAdi,
    required this.aciliyetDurumu,
    required this.baslangicTarihi,
    required this.bitisTarihi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(projeAdi),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Başlangıç Tarihi: $baslangicTarihi',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Bitiş Tarihi: $bitisTarihi',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Aciliyet Durumu: $aciliyetDurumu',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Başlangıç Durumu: ',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Burada proje başlangıç durumuna ilişkin bir grafik veya tablo olabilir.',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
