import 'package:flutter/material.dart';

class RandevuEkrani extends StatefulWidget {
  @override
  _RandevuEkraniState createState() => _RandevuEkraniState();
}

class _RandevuEkraniState extends State<RandevuEkrani> {
  TextEditingController _isimController = TextEditingController();
  TextEditingController _tarihController = TextEditingController();
  TextEditingController _saatController = TextEditingController();
  late String _seciliTarih;
  late String _seciliSaat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randevu Ekranı'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'İsim',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                controller: _isimController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'İsim',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Tarih',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 8.0),
              InkWell(
                onTap: () => _seciliTarihiGoster(context),
                child: IgnorePointer(
                  child: TextField(
                    controller: _tarihController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Tarih',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Saat',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 8.0),
              InkWell(
                onTap: () => _seciliSaatiGoster(context),
                child: IgnorePointer(
                  child: TextField(
                    controller: _saatController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Saat',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: _randevuKaydet,
                  child: Text('Randevu Kaydet'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _seciliTarihiGoster(BuildContext context) async {
    final DateTime? seciliTarih = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (seciliTarih != null) {
      setState(() {
        _seciliTarih = '${seciliTarih.day}/${seciliTarih.month}/${seciliTarih.year}';
        _tarihController.text = _seciliTarih;
      });
    }
  }

  Future<void> _seciliSaatiGoster(BuildContext context) async {
    final TimeOfDay? seciliSaat = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (seciliSaat != null) {
      setState(() {
        _seciliSaat = '${seciliSaat.hour}:${seciliSaat.minute}';
        _saatController.text = _seciliSaat;
      });
    }
  }

  void _randevuKaydet() {
    final String isim = _isimController.text.trim();
    final String tarih = _tarihController.text.trim();
    final String saat = _saatController.text.trim();

    if (isim.isNotEmpty && tarih.isNotEmpty && saat.isNotEmpty) {
      // verileri kaydetme işlemleri yapılabilir
      print('Randevu Kaydedildi: $isim - $tarih - $saat');
    } else {
      // tüm alanların doldurulması gerektiğine dair uyarı verilebilir
      print('Lütfen tüm alanları doldurunuz');
    }
  }
}
