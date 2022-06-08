import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var qrstr = 'Add Data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create QR Code'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BarcodeWidget(
                data: qrstr,
                barcode: Barcode.qrCode(),
                color: Colors.blue,
                width: 200,
                height: 200,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .8,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      qrstr = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    hintText: 'Enter Data',
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width)
            ]));
  }
}
