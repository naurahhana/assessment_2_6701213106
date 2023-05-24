import 'package:flutter/material.dart';

class SecondLayout extends StatelessWidget {
  final List<String> data;
  //final String kiriman;
  const SecondLayout({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text('Nama Barang: ',
                    style: TextStyle(fontSize: 20), maxLines: 2),
                Text((data[0]), style: TextStyle(fontSize: 20), maxLines: 2)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text('Deskripsi: ',
                    style: TextStyle(fontSize: 20), maxLines: 4),
                Text((data[1]), style: TextStyle(fontSize: 20), maxLines: 4)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text('Harga: ', style: TextStyle(fontSize: 20)),
                Text((data[2]), style: TextStyle(fontSize: 20))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text('Jenis barang: ', style: TextStyle(fontSize: 20))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text('Pengiriman dalam kota saja: ',
                    style: TextStyle(fontSize: 20))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text('Menerima retur: ', style: TextStyle(fontSize: 20))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              maxLines: 2,
              'Dikerjakan oleh: 6701213106 - Naurahhana Firdaustsabita',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
