import 'dart:html';
import 'dart:typed_data';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

DropzoneViewController controller1;
DropzoneViewController controller2;
String message1 = 'Drag & drop files here to upload';
bool highlighted1 = false;

class DragAndDrop extends StatefulWidget {
//  final Function(String) filestring;
  final Function(Uint8List) fileUint8List;
  _DragAndDropState createState() => _DragAndDropState();
  const DragAndDrop({ Key key, this.fileUint8List}) : super(key: key);
}

class _DragAndDropState extends State<DragAndDrop> {

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: highlighted1 ? Colors.blue : Colors.blue.withOpacity(0.14),
        ),
        child: DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(20),
          color: Colors.blue,
          strokeWidth: 1,
          child: Stack(
            children: [
              SizedBox(height: 150, child: buildZone1(context)),
              Center(child:
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.cloud_download, color: Colors.grey, size: 24),
                  Text(message1),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildZone1(BuildContext context) => Builder(
        builder: (context) => DropzoneView(
          operation: DragOperation.copy,
          cursor: CursorType.grab,
          onCreated: (ctrl) => controller1 = ctrl,
          onLoaded: () => print('Zone 1 loaded'),
          onError: (ev) => print('Zone 1 error: $ev'),
          onHover: () {
            setState(() => highlighted1 = true);
            print('Zone 1 hovered');
          },
          onLeave: () {
            setState(() => highlighted1 = false);
            print('Zone 1 left');
          },
          onDrop: (ev) {
            print('Zone 1 drop: ${ev.name}');
            print(ev);
            setState(() {
              print("avant");
             // widget.filestring(ev.getFileMIME);
              widget.fileUint8List(ev.getfileData());
              message1 = '${ev.name} dropped';
              highlighted1 = false;
            });
          },
        ),
      );
}
