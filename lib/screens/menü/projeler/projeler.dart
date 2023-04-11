import 'package:flutter/material.dart';


import 'detay.dart'; // Proje detay sayfası dosyası

class ProjeScreen extends StatelessWidget {
  const ProjeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proje Takip Sistemi'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    // Tıklanan proje sayfasına yönlendirme kodu buraya gelebilir.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProjeDetaySayfasi(projeAdi: '', aciliyetDurumu: '', baslangicTarihi: '', bitisTarihi: '',), // Proje detay sayfası
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        // Rastgele proje görsellerini yüklemek için aşağıdaki gibi bir kod kullanılabilir.
                        Image.network(
                          'https://picsum.photos/100?random=$index',
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Proje Adı $index',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Aciliyet Durumu',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Spacer(), // Dikey hizalama için Spacer eklendi
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProjeDetaySayfasi(projeAdi: '', aciliyetDurumu: '', baslangicTarihi: '', bitisTarihi: '',), // Proje detay sayfası
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
