import 'dart:async';
import 'dart:convert';
import 'dart:html' as html;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class FileUploadApp extends StatefulWidget {
  List<int> selectedFile;
  List<String> sectorTags = [];
  List<String> clientTags = [];
  List<String> countryTags = [];
  String fileName;
  Function(List<int>) sendBackFile;
  Function(String) sendBackFileName;

  FileUploadApp({this.sectorTags, this.clientTags, this.countryTags, this.selectedFile, this.sendBackFileName, this.sendBackFile,this.fileName,Key key}):super(key:key);

  @override
  createState() => _FileUploadAppState();

  Future<String> makeRequest() async {
    var url = Uri.parse("http://10.24.42.121:2020/upload_rfps_flutter/?client=${clientTags.toString()}&industry=${sectorTags.toString()}&country=${countryTags.toString()}");
    var request = new http.MultipartRequest("POST", url);
    request.files.add(await http.MultipartFile.fromBytes('file', selectedFile,
        contentType: new MediaType('application', 'octet-stream'),
        filename: fileName));
    request.send().then((response) {
      print(response.statusCode);
      if (response.statusCode == 200) print("Uploaded!");
    });
  }
}

class _FileUploadAppState extends State<FileUploadApp> {
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
         widget.sendBackFileName(file.name);
        _handleResult(reader.result);
      });
      reader.readAsDataUrl(file);
    });
  }

  void _handleResult(Object result) {
    setState(() {
      _bytesData = Base64Decoder().convert(result.toString().split(",").last);
      widget.selectedFile = _bytesData;
      widget.sendBackFile(widget.selectedFile);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MaterialButton(
            color: Colors.lightBlue,
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
          /*RaisedButton(
            color: Colors.purple,
            elevation: 8.0,
            textColor: Colors.white,
            onPressed: () {
                  makeRequest();
            },
            child: Text('Send file to server'),
          ),
           */
        ]);
  }
}


