import 'package:flutter/material.dart';

class CardCompany extends StatelessWidget {
  final String title;
  final String date;
  final String link;
  final String image;

  @override
  CardCompany(
      {this.title = "Application as a service - Apprenda",
      this.date = "Missing Date",
      this.link =
          "https://apprenda.com/library/software-on-demand/applications-as-a-service/",
      this.image = '../assets/defaultImage.png' });


  /// Card Company with: Left Side(Logo and Button), Center (Title and informations) and Right Side (add a doc)
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all( 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              flex: 1,
              child: _leftSide()
            ),
            Flexible(
                flex: 6,
                child: _center()),
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: _righSide(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _leftSide() => Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image, height: 50),
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: ElevatedButton(onPressed: () => {},
              child: Text("GO TO CLIENT VIEW",)),
        )
      ],
    ),
  );

  Widget _center() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "DOCUMENT PREVIEW",
            style: TextStyle(fontFamily: 'Ubuntu', fontSize: 40, fontWeight: FontWeight.w700,),),
          Text(title,
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.w700,)),
          SizedBox(height: 5),
          Row(
            children: [
              Text(date+ " - ", style: TextStyle( color: Colors.grey)),
              Text(link, style: TextStyle( color: Colors.grey)),
            ],
          ),
        ],
      );

  Widget _righSide()=> TextButton(onPressed: ()=>{}, child: Row(
    children: [
      Padding(padding: const EdgeInsets.all(8.0), child: Icon( Icons.add, color: Colors.black)),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Add a document to compare", style: TextStyle(color: Colors.black),),),
          ],
  ),
    style:ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),),
        primary: Colors.white60,),
  );
}