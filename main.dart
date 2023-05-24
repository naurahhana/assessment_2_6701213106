import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Assesment 2'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: const MyForm(),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  MyFormState createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String? kondisi;
    bool isSwitched = false;

    final firstController = TextEditingController();
    final secondController = TextEditingController();
    final thirdController = TextEditingController();

    return Form(
        key: _formKey,
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        style: TextStyle(fontSize: 20),
                        decoration: new InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black)),
                            labelText: 'Nama Barang'),
                        controller: firstController)),
                Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        maxLines: 4,
                        style: TextStyle(fontSize: 20),
                        decoration: new InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black)),
                            labelText: 'Deskripsi'),
                        controller: secondController)),
                Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        style: TextStyle(fontSize: 20),
                        decoration: new InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black)),
                            labelText: 'Harga'),
                        controller: thirdController)),
                Container(
                    padding: EdgeInsets.all(10),
                    child:
                        Text('Kondisi Barang', style: TextStyle(fontSize: 20))),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text('Bekas', style: TextStyle(fontSize: 20)),
                        value: 'Bekas',
                        groupValue: kondisi,
                        onChanged: (value) {
                          setState(() {
                            kondisi = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Baru', style: TextStyle(fontSize: 20)),
                        value: 'Baru',
                        groupValue: kondisi,
                        onChanged: (value) {
                          setState(() {
                            kondisi = value.toString();
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text('Pengiriman dalam kota saja',
                          style: TextStyle(fontSize: 20)),
                      Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = true;
                              print(isSwitched);
                            });
                          })
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text('Menerima retur', style: TextStyle(fontSize: 20)),
                      Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = true;
                            });
                            print(isSwitched);
                          })
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        List<String> formData = [];

                        String kirim1 = firstController.text;
                        String kirim2 = secondController.text;
                        String kirim3 = thirdController.text;

                        formData.add(kirim1);
                        formData.add(kirim2);
                        formData.add(kirim3);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SecondLayout(data: formData)));
                      },
                      child: Text("PUBLIKASIKAN")),
                )
              ]),
        ));
  }
}
