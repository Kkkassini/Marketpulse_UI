import 'dart:async';
import 'dart:convert';
import 'dart:html' as html;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class FileUploadApp extends StatefulWidget {
  @override
  createState() => _FileUploadAppState();
}

class _FileUploadAppState extends State<FileUploadApp> {
  List<int> _selectedFile;
  Uint8List _bytesData;
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  startWebFilePicker() async {
    html.InputElement uploadInput = html.FileUploadInputElement();
    uploadInput.multiple = true;
    uploadInput.draggable = true;
    uploadInput.click();
    uploadInput.onChange.listen((e) {
      final files = uploadInput.files;
      final file = files[0];
      final reader = new html.FileReader();
      reader.onLoadEnd.listen((e) {
        _handleResult(reader.result);
      });
      reader.readAsDataUrl(file);
    });
  }

  void _handleResult(Object result) {
    setState(() {
      _bytesData = Base64Decoder().convert(result.toString().split(",").last);
      _selectedFile = _bytesData;
    });
  }

  Future<String> makeRequest() async {
    var url = Uri.parse("http://10.24.42.121:2020/upload_rfps_flutter/");
    var request = new http.MultipartRequest("POST", url);
    request.files.add(await http.MultipartFile.fromBytes('file', _selectedFile,
        contentType: new MediaType('application', 'octet-stream'),
        filename: "test.json"));
    request.send().then((response) {
      print("test");
      print(response.statusCode);
      if (response.statusCode == 200) print("Uploaded!");
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MaterialButton(
            color: Colors.pink,
            elevation: 8,
            highlightElevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            textColor: Colors.white,
            child: Text('Select a file'),
            onPressed: () {
              startWebFilePicker();
            },
          ),
          Divider(
            color: Colors.teal,
          ),
          RaisedButton(
            color: Colors.purple,
            elevation: 8.0,
            textColor: Colors.white,
            onPressed: () {
              makeRequest();
            },
            child: Text('Send file to server'),
          ),
        ]);
  }
}
