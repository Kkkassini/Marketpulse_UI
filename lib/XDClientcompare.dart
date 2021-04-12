import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDClienttrend.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDClientcompare extends StatelessWidget {
  XDClientcompare({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(257.0, 298.0),
            child:
                // Adobe XD layer: 'BG' (shape)
                Container(
              width: 1417.0,
              height: 105.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0x1f000000)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0a000000),
                    offset: Offset(0, 2),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(292.0, 333.0),
            child:
                // Adobe XD layer: 'Airbus_Logo_2017' (group)
                SizedBox(
              width: 184.0,
              height: 35.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 183.9, 35.0),
                    size: Size(183.9, 35.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_lekrfs,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(606.0, 323.0),
            child:
                // Adobe XD layer: 'Boeing_full_logo' (group)
                SizedBox(
              width: 235.0,
              height: 55.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 235.0, 55.0),
                    size: Size(235.0, 55.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(1.6, 1.1, 64.4, 53.0),
                    size: Size(235.0, 55.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_cyfkhd,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(120.6, 12.4, 35.4, 19.2),
                    size: Size(235.0, 55.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_9u4e59,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(147.5, 12.4, 24.9, 19.2),
                    size: Size(235.0, 55.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_jrv3ma,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(164.7, 12.4, 39.1, 19.2),
                    size: Size(235.0, 55.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ikwbd7,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(198.0, 12.3, 35.6, 19.2),
                    size: Size(235.0, 55.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_38an5a,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(90.8, 12.4, 35.6, 19.2),
                    size: Size(235.0, 55.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_2ata4o,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(56.3, 12.4, 38.2, 19.2),
                    size: Size(235.0, 55.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_an5y52,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(972.0, 315.0),
            child:
                // Adobe XD layer: 'g14' (group)
                SizedBox(
              width: 116.0,
              height: 72.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.2, 0.0, 77.3, 45.3),
                    size: Size(115.9, 72.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'path4855' (shape)
                        SvgPicture.string(
                      _svg_cdbgcm,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.7, 0.0, 58.3, 34.8),
                    size: Size(115.9, 72.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'path4859' (shape)
                        SvgPicture.string(
                      _svg_kgkyv2,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 55.6, 115.9, 16.4),
                    size: Size(115.9, 72.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'path4869' (shape)
                        SvgPicture.string(
                      _svg_eg273y,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(257.0, 415.0),
            child:
                // Adobe XD layer: 'Light 🌕/ Card /1. …' (group)
                SizedBox(
              width: 979.0,
              height: 326.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 979.0, 326.0),
                    size: Size(979.0, 326.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Elevation/Light 🌕/…' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 979.0, 326.0),
                    size: Size(979.0, 326.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Color_Hariline' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(
                            width: 1.0, color: const Color(0x1f000000)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(334.0, 472.0),
            child:
                // Adobe XD layer: 'Bar Chart' (group)
                SizedBox(
              width: 866.0,
              height: 252.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 54.0, 798.0, 179.0),
                    size: Size(866.0, 252.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 798.0, 15.0),
                          size: Size(798.0, 179.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'line' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(28.0, 7.0, 770.0, 1.0),
                                size: Size(798.0, 15.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffeaf0f4),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 15.0),
                                size: Size(798.0, 15.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  '30k',
                                  style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 11,
                                    color: const Color(0xff43425d),
                                    height: 1.1818181818181819,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 41.0, 798.0, 15.0),
                          size: Size(798.0, 179.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'line' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(28.0, 7.0, 770.0, 1.0),
                                size: Size(798.0, 15.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffeaf0f4),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 15.0),
                                size: Size(798.0, 15.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  '25k',
                                  style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 11,
                                    color: const Color(0xff43425d),
                                    height: 1.1818181818181819,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 82.0, 798.0, 15.0),
                          size: Size(798.0, 179.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'line' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(28.0, 7.0, 770.0, 1.0),
                                size: Size(798.0, 15.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffeaf0f4),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 15.0),
                                size: Size(798.0, 15.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  '20k',
                                  style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 11,
                                    color: const Color(0xff43425d),
                                    height: 1.1818181818181819,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 123.0, 798.0, 15.0),
                          size: Size(798.0, 179.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'line' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(28.0, 7.0, 770.0, 1.0),
                                size: Size(798.0, 15.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffeaf0f4),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 15.0),
                                size: Size(798.0, 15.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  '15k',
                                  style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 11,
                                    color: const Color(0xff43425d),
                                    height: 1.1818181818181819,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 164.0, 798.0, 15.0),
                          size: Size(798.0, 179.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'line' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(28.0, 7.0, 770.0, 1.0),
                                size: Size(798.0, 15.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffeaf0f4),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 15.0),
                                size: Size(798.0, 15.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  '10k',
                                  style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 11,
                                    color: const Color(0xff43425d),
                                    height: 1.1818181818181819,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.0, 237.0, 815.0, 15.0),
                    size: Size(866.0, 252.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 15.0),
                          size: Size(815.0, 15.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'SAAS',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 11,
                              color: const Color(0xff43425d),
                              height: 1.1818181818181819,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(86.0, 0.0, 73.0, 15.0),
                          size: Size(815.0, 15.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Entreprise PAAS',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 11,
                              color: const Color(0xff43425d),
                              height: 1.1818181818181819,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(237.0, 0.0, 27.0, 15.0),
                          size: Size(815.0, 15.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Cloud',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 11,
                              color: const Color(0xff43425d),
                              height: 1.1818181818181819,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(361.0, 0.0, 27.0, 15.0),
                          size: Size(815.0, 15.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Cloud',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 11,
                              color: const Color(0xff43425d),
                              height: 1.1818181818181819,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(489.0, 0.0, 73.0, 15.0),
                          size: Size(815.0, 15.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Entreprise PAAS',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 11,
                              color: const Color(0xff43425d),
                              height: 1.1818181818181819,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(616.0, 0.0, 73.0, 15.0),
                          size: Size(815.0, 15.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Entreprise PAAS',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 11,
                              color: const Color(0xff43425d),
                              height: 1.1818181818181819,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(742.0, 0.0, 73.0, 15.0),
                          size: Size(815.0, 15.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Entreprise PAAS',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 11,
                              color: const Color(0xff43425d),
                              height: 1.1818181818181819,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(28.0, 90.0, 771.0, 136.0),
                    size: Size(866.0, 252.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Chart.Content' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(745.0, 30.0, 26.0, 106.0),
                          size: Size(771.0, 136.0),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Sun' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 17.0, 6.0, 89.0),
                                size: Size(26.0, 106.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Green.Bar (Sales)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff95e616),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(10.0, 0.0, 6.0, 106.0),
                                size: Size(26.0, 106.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Blue.Bar (Visits)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff12abdb),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 29.0, 6.0, 77.0),
                                size: Size(26.0, 106.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Purple.Bar (Items)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0070ad),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(618.0, 0.0, 26.0, 136.0),
                          size: Size(771.0, 136.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child:
                              // Adobe XD layer: 'Sat' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 15.0, 6.0, 121.0),
                                size: Size(26.0, 136.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Green.Bar (Sales)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff95e616),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(10.0, 0.0, 6.0, 136.0),
                                size: Size(26.0, 136.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Blue.Bar (Visits)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff12abdb),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 39.0, 6.0, 97.0),
                                size: Size(26.0, 136.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Purple.Bar (Items)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0070ad),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(496.0, 68.0, 26.0, 68.0),
                          size: Size(771.0, 136.0),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Fri' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 16.0, 6.0, 52.0),
                                size: Size(26.0, 68.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Green.Bar (Sales)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff95e616),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(10.0, 0.0, 6.0, 68.0),
                                size: Size(26.0, 68.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Blue.Bar (Visits)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff12abdb),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 10.0, 6.0, 58.0),
                                size: Size(26.0, 68.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Purple.Bar (Items)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0070ad),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(373.0, 79.0, 26.0, 57.0),
                          size: Size(771.0, 136.0),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Thu' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 38.0, 6.0, 19.0),
                                size: Size(26.0, 57.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Green.Bar (Sales)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff95e616),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(10.0, 31.0, 6.0, 26.0),
                                size: Size(26.0, 57.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Blue.Bar (Visits)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff12abdb),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 6.0, 57.0),
                                size: Size(26.0, 57.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Purple.Bar (Items)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0070ad),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(248.0, 66.0, 26.0, 70.0),
                          size: Size(771.0, 136.0),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Wed' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 48.0, 6.0, 22.0),
                                size: Size(26.0, 70.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Green.Bar (Sales)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff95e616),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(10.0, 0.0, 6.0, 70.0),
                                size: Size(26.0, 70.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Blue.Bar (Visits)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff12abdb),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 13.0, 6.0, 57.0),
                                size: Size(26.0, 70.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Purple.Bar (Items)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0070ad),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(126.4, 62.0, 26.0, 74.0),
                          size: Size(771.0, 136.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Tue' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 41.2, 6.0, 32.8),
                                size: Size(26.0, 74.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Green.Bar (Sales)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff95e616),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(10.6, 0.0, 6.0, 74.0),
                                size: Size(26.0, 74.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Blue.Bar (Visits)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff12abdb),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 20.3, 6.0, 53.7),
                                size: Size(26.0, 74.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Purple.Bar (Items)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0070ad),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 30.0, 26.0, 106.0),
                          size: Size(771.0, 136.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Mon' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 52.0, 6.0, 54.0),
                                size: Size(26.0, 106.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Green.Bar (Sales)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff95e616),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(10.0, 0.0, 6.0, 106.0),
                                size: Size(26.0, 106.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Blue.Bar (Visits)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff12abdb),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 29.0, 6.0, 77.0),
                                size: Size(26.0, 106.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Purple.Bar (Items)' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0070ad),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(756.0, 0.0, 110.0, 32.0),
                    size: Size(866.0, 252.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Selectbox.Filter' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 110.0, 32.0),
                          size: Size(110.0, 32.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Selectbox.BG' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xffd7dae2)),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x0d000000),
                                  offset: Offset(0, 2),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.0, 8.0, 51.0, 18.0),
                          size: Size(110.0, 32.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Last hour',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 13,
                              color: const Color(0xff4d565c),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(87.4, 13.0, 11.0, 7.0),
                          size: Size(110.0, 32.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'small-down' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 11.0, 7.0),
                                size: Size(11.0, 7.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_a3zu6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(278.8, 434.0),
            child: SizedBox(
              width: 145.0,
              child: Text(
                'Emerging topics',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 18,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(257.0, 415.0),
            child:
                // Adobe XD layer: 'Statistics' (group)
                SizedBox(
              width: 1414.0,
              height: 703.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 336.0, 979.0, 367.0),
                    size: Size(1414.0, 703.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Elevation/Light 🌕/…' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0x1f000000)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(80.0, 418.0, 865.0, 223.0),
                    size: Size(1414.0, 703.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Chart Grid' (shape)
                        SvgPicture.string(
                      _svg_o3g0k9,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(79.6, 494.8, 864.7, 142.3),
                    size: Size(1414.0, 703.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Total Views Graph' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 864.7, 142.3),
                          size: Size(864.7, 142.3),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Filled.Graph' (shape)
                              SvgPicture.string(
                            _svg_d0b6pw,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.8, 0.6, 863.9, 116.9),
                          size: Size(864.7, 142.3),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Line.Graph' (shape)
                              SvgPicture.string(
                            _svg_btd0tw,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(79.6, 449.1, 864.7, 188.0),
                    size: Size(1414.0, 703.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Products Sold Graph' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.9, 864.7, 187.1),
                          size: Size(864.7, 188.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Filled.Graph' (shape)
                              SvgPicture.string(
                            _svg_u0fae2,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.8, 0.0, 863.8, 136.8),
                          size: Size(864.7, 188.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Line.Graph' (shape)
                              SvgPicture.string(
                            _svg_c4knc5,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(80.0, 646.0, 865.0, 10.0),
                    size: Size(1414.0, 703.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Months' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 14.0, 10.0),
                          size: Size(865.0, 10.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Jan',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(171.0, 0.0, 15.0, 10.0),
                          size: Size(865.0, 10.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Feb',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(337.0, 0.0, 16.0, 10.0),
                          size: Size(865.0, 10.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Mar',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(509.0, 0.0, 15.0, 10.0),
                          size: Size(865.0, 10.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Apr',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(675.0, 0.0, 17.0, 10.0),
                          size: Size(865.0, 10.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'May',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(850.0, 0.0, 15.0, 10.0),
                          size: Size(865.0, 10.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Jun',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(46.0, 425.0, 22.0, 216.0),
                    size: Size(1414.0, 703.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Y-Axis-Info' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 206.0, 15.0, 10.0),
                          size: Size(22.0, 216.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '100',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 155.0, 22.0, 10.0),
                          size: Size(22.0, 216.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Text(
                            '1 000',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 104.0, 22.0, 10.0),
                          size: Size(22.0, 216.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Text(
                            '2 000',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 52.0, 22.0, 10.0),
                          size: Size(22.0, 216.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Text(
                            '3 000',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 22.0, 10.0),
                          size: Size(22.0, 216.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Text(
                            '5 000',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 9,
                              color: const Color(0x8043425d),
                              height: 1.2222222222222223,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(835.0, 353.0, 109.0, 27.0),
                    size: Size(1414.0, 703.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Selectbox.Filter' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 109.0, 27.0),
                          size: Size(109.0, 27.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Selectbox.BG' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xffd7dae2)),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x0d000000),
                                  offset: Offset(0, 2),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(10.0, 8.0, 70.0, 12.0),
                          size: Size(109.0, 27.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Last 6 months',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 11,
                              color: const Color(0xff4d4f5c),
                              height: 1.5454545454545454,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(89.9, 10.8, 9.3, 5.9),
                          size: Size(109.0, 27.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'small-down' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 9.3, 5.9),
                                size: Size(9.3, 5.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_1iz2sh,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(53.0, 355.0, 77.0, 20.0),
                    size: Size(1414.0, 703.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Mentions',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 18,
                        color: const Color(0xff707070),
                        height: 0.6111111111111112,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(994.0, 0.0, 420.0, 703.0),
                    size: Size(1414.0, 703.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Elevation/Light 🌕/…' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0x1f000000)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(367.0, 486.0),
            child:
                // Adobe XD layer: 'Legend' (group)
                SizedBox(
              width: 260.0,
              height: 18.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 0.0, 35.0, 18.0),
                    size: Size(260.0, 18.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Items' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 35.0, 18.0),
                          size: Size(35.0, 18.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Text(
                            'Airbus',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 13,
                              color: const Color(0xff4d4f5c),
                              height: 2.1538461538461537,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(128.0, 0.0, 38.0, 18.0),
                    size: Size(260.0, 18.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Visits' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 18.0),
                          size: Size(38.0, 18.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Text(
                            'Boeing',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 13,
                              color: const Color(0xff4d4f5c),
                              height: 2.1538461538461537,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(222.0, 0.0, 38.0, 18.0),
                    size: Size(260.0, 18.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Sales' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 18.0),
                          size: Size(38.0, 18.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Text(
                            'Comac',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 13,
                              color: const Color(0xff4d4f5c),
                              height: 2.1538461538461537,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 3.3, 215.6, 10.7),
                    size: Size(260.0, 18.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 10.7, 10.7),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_ikwjma,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(108.9, 0.0, 10.7, 10.7),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_70b35h,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(204.9, 0.0, 10.7, 10.7),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_66vn9n,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.2, 2.1, 8.3, 6.2),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_531yri,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(110.0, 2.1, 8.3, 6.2),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_3xtbwd,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(206.0, 2.1, 8.3, 6.2),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_hx0fgd,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(304.0, 1091.0),
            child:
                // Adobe XD layer: 'Legend' (group)
                SizedBox(
              width: 260.0,
              height: 18.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 0.0, 35.0, 18.0),
                    size: Size(260.0, 18.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Items' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 35.0, 18.0),
                          size: Size(35.0, 18.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Text(
                            'Airbus',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 13,
                              color: const Color(0xff4d4f5c),
                              height: 2.1538461538461537,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(128.0, 0.0, 38.0, 18.0),
                    size: Size(260.0, 18.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Visits' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 18.0),
                          size: Size(38.0, 18.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Text(
                            'Boeing',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 13,
                              color: const Color(0xff4d4f5c),
                              height: 2.1538461538461537,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(222.0, 0.0, 38.0, 18.0),
                    size: Size(260.0, 18.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Sales' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 18.0),
                          size: Size(38.0, 18.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Text(
                            'Comac',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 13,
                              color: const Color(0xff4d4f5c),
                              height: 2.1538461538461537,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 3.0, 215.6, 10.7),
                    size: Size(260.0, 18.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 10.7, 10.7),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_rvkfj5,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(108.9, 0.0, 10.7, 10.7),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_1qr9qi,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(204.9, 0.0, 10.7, 10.7),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_sj2c9f,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.2, 2.4, 8.3, 6.2),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_531yri,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(110.0, 2.4, 8.3, 6.2),
                          size: Size(215.6, 10.7),
                          child:
                              // Adobe XD layer: 'Path' (shape)
                              SvgPicture.string(
                            _svg_3xtbwd,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1596.0, 336.0),
            child:
                // Adobe XD layer: 'Light 🌕/ FAB / 1. …' (group)
                SizedBox(
              width: 36.0,
              height: 36.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                    size: Size(36.0, 36.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Circle Elevation/Da…' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                          size: Size(36.0, 36.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Shadow 3' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x33000000),
                                  offset: Offset(0, 2),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                          size: Size(36.0, 36.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Shadow 2' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x1f000000),
                                  offset: Offset(0, 1),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                          size: Size(36.0, 36.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Shadow 1' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x24000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                    size: Size(36.0, 36.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Fill' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                          size: Size(36.0, 36.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: '🎨 FAB Color' (shape)
                              Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff0070ad),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                          size: Size(36.0, 36.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'FAB Mask' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                    size: Size(36.0, 36.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'State' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 0.0, 0.0),
                          size: Size(36.0, 36.0),
                          child:
                              // Adobe XD layer: 'States/Light 🌕/Pri…' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 0.0, 0.0),
                                size: Size(0.0, 0.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'States/Light 🌕/Pri…' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    color: const Color(0x00ffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                          size: Size(36.0, 36.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'FAB Mask' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 10.0, 16.0, 16.0),
                    size: Size(36.0, 36.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'icon/content/add_24…' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 16.0),
                          size: Size(16.0, 16.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Boundary' (shape)
                              Container(
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(3.5, 3.5, 9.0, 9.0),
                          size: Size(16.0, 16.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: ' ↳Color' (shape)
                              SvgPicture.string(
                            _svg_8s5wft,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1268.0, 434.0),
            child: SizedBox(
              width: 308.0,
              height: 661.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 114.0, 17.0),
                    size: Size(308.0, 661.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 114.0, 17.0),
                          size: Size(114.0, 17.0),
                          child: Text(
                            'Most used terms',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 15,
                              color: const Color(0xff707070),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 278.0, 306.0, 383.0),
                    size: Size(308.0, 661.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'United States' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 22.0, 59.0, 14.0),
                          size: Size(306.0, 383.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff009dd2),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 306.0, 383.0),
                          size: Size(306.0, 383.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SingleChildScrollView(
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 20,
                              runSpacing: 20,
                              children: [{}, {}, {}, {}, {}, {}, {}].map((map) {
                                return SizedBox(
                                  width: 306.0,
                                  height: 36.0,
                                  child: Stack(
                                    children: <Widget>[
                                      Transform.translate(
                                        offset: Offset(0.0, 22.0),
                                        child:
                                            // Adobe XD layer: 'Empty Bar' (shape)
                                            Container(
                                          width: 306.0,
                                          height: 14.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1.0),
                                            color: const Color(0xffedf0f5),
                                          ),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: Offset(268.0, 0.0),
                                        child: SizedBox(
                                          width: 36.0,
                                          child: Text(
                                            '1 342',
                                            style: TextStyle(
                                              fontFamily: 'Ubuntu',
                                              fontSize: 12,
                                              color: const Color(0x80656565),
                                              height: 1.5,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Cloud data',
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 12,
                                          color: const Color(0x80656565),
                                          height: 1.5,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 223.0, 306.0, 371.0),
                    size: Size(308.0, 661.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'China' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 22.0, 306.0, 14.0),
                          size: Size(306.0, 371.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Empty Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xffedf0f5),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 22.0, 71.0, 14.0),
                          size: Size(306.0, 371.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff005ea0),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(274.0, 0.0, 30.0, 13.0),
                          size: Size(306.0, 371.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '1 783',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 12,
                              color: const Color(0x80656565),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 51.0, 13.0),
                          size: Size(306.0, 371.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Database',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 12,
                              color: const Color(0x80656565),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 136.0, 71.0, 14.0),
                          size: Size(306.0, 371.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff005ea0),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 250.0, 71.0, 14.0),
                          size: Size(306.0, 371.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff005ea0),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 357.0, 71.0, 14.0),
                          size: Size(306.0, 371.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff005ea0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 168.0, 306.0, 484.0),
                    size: Size(308.0, 661.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Algeria' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 22.0, 306.0, 14.0),
                          size: Size(306.0, 484.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Empty Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xffedf0f5),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 22.0, 117.0, 14.0),
                          size: Size(306.0, 484.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff009dd2),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(274.0, 0.0, 30.0, 13.0),
                          size: Size(306.0, 484.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '4 583',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 12,
                              color: const Color(0x80656565),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 61.0, 13.0),
                          size: Size(306.0, 484.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Framework',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 12,
                              color: const Color(0x80656565),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 134.0, 117.0, 14.0),
                          size: Size(306.0, 484.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff009dd2),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 246.0, 117.0, 14.0),
                          size: Size(306.0, 484.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff009dd2),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 358.0, 117.0, 14.0),
                          size: Size(306.0, 484.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff009dd2),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 470.0, 117.0, 14.0),
                          size: Size(306.0, 484.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff009dd2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 113.0, 306.0, 36.0),
                    size: Size(308.0, 661.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Australia' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 22.0, 306.0, 14.0),
                          size: Size(306.0, 36.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Empty Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xffedf0f5),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 22.0, 150.0, 14.0),
                          size: Size(306.0, 36.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff005ea0),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(274.0, 0.0, 30.0, 13.0),
                          size: Size(306.0, 36.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '5 678',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 12,
                              color: const Color(0x80656565),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 95.0, 13.0),
                          size: Size(306.0, 36.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Cloud Computing',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 12,
                              color: const Color(0x80656565),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 59.0, 306.0, 36.0),
                    size: Size(308.0, 661.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Russia' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 22.0, 306.0, 14.0),
                          size: Size(306.0, 36.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Empty Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xffedf0f5),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 22.0, 216.0, 14.0),
                          size: Size(306.0, 36.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filled Bar' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff009dd2),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(274.0, 0.0, 30.0, 13.0),
                          size: Size(306.0, 36.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '9 945',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 12,
                              color: const Color(0x80656565),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 32.0, 13.0),
                          size: Size(306.0, 36.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Cloud',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 12,
                              color: const Color(0x80656565),
                              height: 1.5,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(),
          Container(),
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(1840.0, 163.0),
            child: SizedBox(
              width: 91.0,
              height: 78.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 91.0, 78.0),
                    size: Size(91.0, 78.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 91.0, 78.0),
                          size: Size(91.0, 78.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 91.0, 78.0),
                                size: Size(91.0, 78.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(79.0),
                                      bottomLeft: Radius.circular(79.0),
                                    ),
                                    color: const Color(0xffffffff),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x29000000),
                                        offset: Offset(0, 3),
                                        blurRadius: 6,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.5, 27.0, 34.0, 1.0),
                    size: Size(91.0, 78.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Ligne 1' (shape)
                        SvgPicture.string(
                      _svg_17s4n2,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.5, 41.0, 34.0, 1.0),
                    size: Size(91.0, 78.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Ligne 1' (shape)
                        SvgPicture.string(
                      _svg_zaxf60,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.5, 55.0, 34.0, 1.0),
                    size: Size(91.0, 78.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Ligne 1' (shape)
                        SvgPicture.string(
                      _svg_mlwc1k,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Adobe XD layer: 'Topbar' (group)
          SizedBox(
            width: 1920.0,
            height: 104.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 1920.0, 104.0),
                  size: Size(1920.0, 104.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'Rectangle 278' (shape)
                      SvgPicture.string(
                    _svg_92acwb,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(),
                Container(),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(255.0, 24.5, 154.8, 55.0),
                  size: Size(1920.0, 104.0),
                  pinLeft: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(68.8, 0.0, 86.0, 55.0),
                        size: Size(154.8, 55.0),
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child:
                            // Adobe XD layer: 'retail' (text)
                            Text(
                          'Market\nPulse',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 25,
                            color: const Color(0xff0070ad),
                            fontWeight: FontWeight.w700,
                            height: 1.08,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 1.9, 54.3, 50.2),
                        size: Size(154.8, 55.0),
                        child:
                            // Adobe XD layer: 'Capgemini-Logo-2017' (group)
                            Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_jen8,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_lekrfs =
    '<svg viewBox="-108.1 160.5 183.9 35.0" ><path  d="M -1.494873046875 187.6714324951172 L -13.12009811401367 187.6714324951172 L -13.12009811401367 181.1462707519531 L -1.489040374755859 181.1462707519531 C 0.4234733581542969 181.177490234375 1.967205047607422 182.6087341308594 1.967205047607422 184.396240234375 C 1.967205047607422 186.1837463378906 0.4171714782714844 187.6711883544922 -1.495281219482422 187.6711883544922 M -13.12050247192383 168.5402221679688 L -1.695362091064453 168.5402221679688 C -0.1328544616699219 168.5589599609375 1.192127227783203 169.7652282714844 1.192127227783203 171.3464660644531 C 1.192127227783203 172.9214630126953 -0.1953849792480469 174.177734375 -1.764083862304688 174.158935546875 L -13.12039184570313 174.158935546875 L -13.12050247192383 168.5402221679688 Z M 5.073036193847656 177.6652984619141 C 7.2230224609375 176.1527709960938 8.035541534423828 173.6465454101563 8.035541534423828 170.8904724121094 C 8.035541534423828 165.7030181884766 3.666793823242188 161.5466613769531 -1.689182281494141 161.5466613769531 L -21.08905220031738 161.5466613769531 L -21.08905220031738 194.6653442382813 L -0.9267692565917969 194.6653442382813 L -0.9267692565917969 194.6780700683594 C 4.735694885253906 194.6780700683594 9.448371887207031 190.3093109130859 9.448371887207031 184.9591674804688 C 9.448371887207031 181.4716491699219 7.348377227783203 178.8901824951172 5.073383331298828 177.6651916503906 M 34.99189758300781 161.4713134765625 L 34.99189758300781 180.090087890625 C 34.99189758300781 185.7838287353516 31.66690826416016 188.1715850830078 27.57949829101563 188.1715850830078 C 23.48578643798828 188.1715850830078 20.18576049804688 185.7903594970703 20.18576049804688 180.0965270996094 L 20.18576049804688 161.4713134765625 L 11.92928314208984 161.4713134765625 L 11.92928314208984 180.1460876464844 C 11.92928314208984 192.0583190917969 18.92926406860352 195.5273895263672 27.57949829101563 195.5273895263672 C 36.23555755615234 195.5273895263672 43.24195861816406 192.0586700439453 43.24195861816406 180.1460876464844 L 43.24195861816406 161.4712982177734 L 34.99189758300781 161.4713134765625 Z M 63.96073913574219 174.3775329589844 C 57.27925872802734 172.9275512695313 55.02351379394531 172.2838439941406 55.02351379394531 170.1650543212891 C 55.02351379394531 168.2962951660156 57.44223785400391 167.3525695800781 61.26107788085938 167.3525695800781 C 64.86735534667969 167.3525695800781 69.22355651855469 168.8900756835938 71.77971649169922 170.4213104248047 L 74.385986328125 163.6838226318359 C 70.51097106933594 162.0713195800781 65.84833526611328 160.527587890625 59.68601989746094 160.527587890625 C 51.60453796386719 160.527587890625 46.56105041503906 165.2525787353516 46.56105041503906 171.0275573730469 C 46.56105041503906 176.8087921142578 50.71729278564453 179.352294921875 58.95452117919922 181.0964660644531 C 65.34200286865234 182.4464721679688 67.07333374023438 183.2589416503906 67.07333374023438 185.2464599609375 C 67.07333374023438 187.2339324951172 64.51081848144531 187.9651947021484 61.04810333251953 187.9651947021484 C 56.56688690185547 187.9651947021484 52.25437927246094 186.4714660644531 48.19204711914063 184.7276916503906 L 45.73581695556641 191.2960205078125 C 50.59205627441406 193.5459899902344 55.63554382324219 195.3522796630859 61.64853668212891 195.3522796630859 C 71.66725921630859 195.3522796630859 75.75466918945313 190.5647583007813 75.75466918945313 184.9835510253906 C 75.75466918945313 180.0210266113281 72.31720733642578 176.1962432861328 63.96086120605469 174.3774108886719 M -91.36875915527344 161.5464477539063 L -108.0998916625977 194.65869140625 L -98.16224670410156 194.6645355224609 L -95.66226196289063 189.3395385742188 L -84.24995422363281 189.3395385742188 L -87.79994201660156 182.0834655761719 L -92.30617523193359 182.0834655761719 L -88.06243896484375 173.0272369384766 L -77.37521362304688 194.6647644042969 L -67.41248321533203 194.6647644042969 L -84.79344177246094 161.5466918945313 L -91.36875915527344 161.5464477539063 Z M -24.14559173583984 172.5591735839844 C -24.14559173583984 166.5280914306641 -28.28310775756836 161.6339416503906 -36.78931427001953 161.6339416503906 L -53.97077178955078 161.6339416503906 L -53.97077178955078 194.7526092529297 L -46.0082893371582 194.7467803955078 L -46.0082893371582 168.628662109375 L -36.23981475830078 168.628662109375 C -33.35232162475586 168.628662109375 -32.15234756469727 170.4161682128906 -32.15234756469727 172.5411376953125 C -32.15234756469727 174.6723937988281 -33.41485214233398 176.3786315917969 -36.30234527587891 176.3786315917969 L -43.13374710083008 176.3786315917969 L -32.7965202331543 194.7471771240234 L -24.62170791625977 194.7471771240234 C -24.62170791625977 194.7471771240234 -31.69694137573242 182.7410278320313 -31.65902328491211 182.734619140625 C -26.55276870727539 181.1469116210938 -24.14629173278809 177.2781372070313 -24.14629173278809 172.5595550537109 M -65.70869445800781 194.6783447265625 L -57.47146224975586 194.6783447265625 L -57.47146224975586 161.5654907226563 L -65.70869445800781 161.5654907226563 L -65.70869445800781 194.6783447265625 Z" fill="#00205b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cyfkhd =
    '<svg viewBox="1.6 0.8 64.4 53.0" ><path transform="translate(0.44, 0.22)" d="M 36.49169921875 32.82379531860352 C 40.35960006713867 24.51873970031738 37.57433700561523 14.63366889953613 29.93950843811035 9.569674491882324 C 32.90782928466797 6.51928186416626 36.12236785888672 3.496246337890625 39.51473236083984 0.6099996566772461 C 35.55691528320313 2.962939262390137 31.80063629150391 5.639466762542725 28.28436851501465 8.612131118774414 C 20.4112491607666 4.506697654724121 10.73223876953125 6.56632137298584 5.212756633758545 13.52160263061523 C -0.3067251443862915 20.47688484191895 -0.1135803759098053 30.37072372436523 5.673152446746826 37.10529327392578 C 2.13031792640686 44.77915191650391 1.569483160972595 50.93465423583984 4.633555889129639 53.01384735107422 C 7.984885215759277 55.24350738525391 15.26205635070801 51.19455337524414 19.68033790588379 44.61500549316406 C 19.68033790588379 44.61500549316406 12.92296600341797 50.70211791992188 9.215985298156738 49.30686950683594 C 6.931610107421875 48.44509506225586 6.931610107421875 44.94330215454102 8.805618286132813 39.93682479858398 C 16.1401309967041 45.317626953125 26.29648208618164 44.57560729980469 32.77104187011719 38.1859245300293 L 33.42762756347656 39.41702651977539 C 41.49817276000977 38.76044082641602 65.58670806884766 38.11753082275391 65.58670806884766 38.11753082275391 C 65.53199005126953 36.98218154907227 49.58240127563477 38.07649230957031 36.49169921875 32.82379531860352 Z M 3.416134119033813 25.01314735412598 C 3.422045707702637 19.4731502532959 6.240523815155029 14.31516361236572 10.89966201782227 11.31783199310303 C 15.55880260467529 8.320499420166016 21.42111015319824 7.893933773040771 26.46507263183594 10.18523025512695 C 18.4691104888916 17.17915916442871 11.79290199279785 25.55105972290039 6.753792762756348 34.90297698974609 C 4.582155227661133 32.06405258178711 3.408849239349365 28.58741760253906 3.41613507270813 25.01314163208008 Z M 19.70769500732422 41.30471038818359 C 16.05012321472168 41.31169128417969 12.49751472473145 40.08250045776367 9.626351356506348 37.81659698486328 C 12.85457038879395 30.5394229888916 19.42043876647949 20.77269172668457 28.3801155090332 11.22482395172119 C 35.34470748901367 15.61032581329346 37.94457626342773 24.50152969360352 34.43986511230469 31.94835090637207 C 31.6120491027832 30.67922210693359 28.99981498718262 28.9761905670166 26.69761085510254 26.90083694458008 L 31.60833358764648 36.12041091918945 C 28.53483581542969 39.42801284790039 24.22285461425781 41.30645370483398 19.70769500732422 41.30471420288086 Z" fill="#0033a1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9u4e59 =
    '<svg viewBox="120.6 12.1 35.4 19.2" ><path transform="translate(32.44, 3.25)" d="M 114.9632720947266 20.28923416137695 L 117.9726257324219 16.28131866455078 L 107.4672393798828 16.28131866455078 L 110.0525512695313 12.8479175567627 L 120.5716247558594 12.8479175567627 L 123.5946502685547 8.840000152587891 L 102.6112365722656 8.840000152587891 L 88.18000793457031 27.99045181274414 L 109.1634216308594 27.99045181274414 L 112.1727752685547 23.98253631591797 L 101.6673889160156 23.98253631591797 L 104.4441986083984 20.28923416137695 L 114.9632720947266 20.28923416137695 L 114.9632720947266 20.28923416137695 Z" fill="#0033a1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jrv3ma =
    '<svg viewBox="147.5 12.1 24.9 19.2" ><path transform="translate(39.68, 3.25)" d="M 122.2912368774414 8.840000152587891 L 107.8600082397461 27.99045181274414 L 118.3380355834961 27.99045181274414 L 132.7555847167969 8.840000152587891 L 122.2912368774414 8.840000152587891 L 122.2912368774414 8.840000152587891 Z" fill="#0033a1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ikwbd7 =
    '<svg viewBox="164.7 12.1 39.1 19.2" ><path transform="translate(44.29, 3.25)" d="M 152.5627593994141 8.840000152587891 L 145.2445526123047 18.55201530456543 L 143.0012054443359 8.840000152587891 L 134.8212280273438 8.840000152587891 L 120.3899993896484 27.99045181274414 L 127.3115081787109 27.99045181274414 L 134.5613250732422 18.37418937683105 L 136.7910003662109 27.99045181274414 L 145.0530395507813 27.99045181274414 L 159.4842834472656 8.840000152587891 L 152.5627593994141 8.840000152587891 L 152.5627593994141 8.840000152587891 Z" fill="#0033a1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_38an5a =
    '<svg viewBox="198.0 12.1 35.6 19.2" ><path transform="translate(53.25, 3.24)" d="M 177.8255615234375 8.847368240356445 L 161.0005187988281 8.847368240356445 C 158.2296600341797 8.84414005279541 155.6192779541016 10.1467981338501 153.9559020996094 12.36284160614014 L 145.2697906494141 23.89415168762207 C 144.9306945800781 24.33791542053223 144.7479400634766 24.88138580322266 144.7499847412109 25.43986511230469 C 144.7499847412109 26.8548412322998 145.8930358886719 28.00398063659668 147.3079681396484 28.01149749755859 L 164.1329803466797 28.01149749755859 C 166.9081420898438 28.01688766479492 169.5235900878906 26.71422576904297 171.1912841796875 24.49602508544922 L 173.2841644287109 21.7602424621582 L 175.7190093994141 21.7602424621582 L 178.7557220458984 17.65657424926758 L 165.8702087402344 17.65657424926758 L 161.7665405273438 23.05973815917969 C 161.3345336914063 23.63752937316895 160.6549987792969 23.97730255126953 159.9335632324219 23.97622299194336 L 156.9652557373047 23.97622489929199 C 156.5950775146484 23.97622489929199 156.2949829101563 23.67613792419434 156.2949829101563 23.30595970153809 C 156.2938232421875 23.16197204589844 156.3421020507813 23.02195167541504 156.4317474365234 22.90926933288574 L 163.2712249755859 13.74441146850586 C 163.7017822265625 13.16489410400391 164.3822479248047 12.82465934753418 165.1041870117188 12.82792472839355 L 168.072509765625 12.82792472839355 C 168.4426727294922 12.82792472839355 168.7427825927734 13.12801361083984 168.7427825927734 13.49818992614746 C 168.7389373779297 13.64132118225098 168.6911773681641 13.77981567382813 168.60595703125 13.89487266540527 L 167.4842987060547 15.38587760925293 L 177.9349822998047 15.38587760925293 L 179.7816314697266 12.92367744445801 C 180.3701171875 12.14776229858398 180.4669799804688 11.10500049591064 180.0314636230469 10.23397254943848 C 179.5959320068359 9.362945556640625 178.70361328125 8.81477165222168 177.7297973632813 8.820009231567383 Z" fill="#0033a1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2ata4o =
    '<svg viewBox="90.8 12.1 35.6 19.2" ><path transform="translate(24.43, 3.26)" d="M 102.0335388183594 11.40795803070068 C 102.0335388183594 9.9952392578125 100.8883056640625 8.850005149841309 99.47557830810547 8.850005149841309 L 82.65055084228516 8.850005149841309 C 79.87538146972656 8.844619750976563 77.25992584228516 10.14727878570557 75.59223175048828 12.36548233032227 L 66.90613555908203 23.89678764343262 C 66.32876586914063 24.67518424987793 66.238037109375 25.71208381652832 66.67144775390625 26.57892799377441 C 67.10487365722656 27.44577026367188 67.98883056640625 27.99532699584961 68.95796966552734 28.00045776367188 L 85.78301239013672 28.00045585632324 C 88.55818176269531 28.00583839416504 91.17362976074219 26.70318031311035 92.84131622314453 24.48497772216797 L 101.5274124145508 12.95367336273193 C 101.8607025146484 12.50768947601318 102.0385055541992 11.96469402313232 102.0335388183594 11.40795803070068 Z M 90.33808898925781 13.9111967086792 L 83.49864196777344 23.06237411499023 C 83.06809997558594 23.64188957214355 82.38761901855469 23.98212623596191 81.66567230224609 23.97886276245117 L 78.64263153076172 23.97886085510254 C 78.39120483398438 23.9763240814209 78.16233825683594 23.83328056335449 78.04988861083984 23.60838508605957 C 77.93743896484375 23.38348770141602 77.9603271484375 23.11457061767578 78.10914611816406 22.91190528869629 L 84.94860076904297 13.74704837799072 C 85.38339233398438 13.17262744903564 86.06114196777344 12.83375453948975 86.78155517578125 12.83056163787842 L 89.74988555908203 12.83056163787842 C 90.12006378173828 12.83056163787842 90.42015075683594 13.13065052032471 90.42015075683594 13.50082683563232 C 90.41634368896484 13.64395999908447 90.36858367919922 13.78245639801025 90.28336334228516 13.89751529693604 Z" fill="#0033a1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_an5y52 =
    '<svg viewBox="56.3 12.1 38.2 19.2" ><path transform="translate(15.13, 3.25)" d="M 71.75704193115234 18.88031768798828 C 73.79033660888672 18.41927337646484 75.59373474121094 17.25094032287598 76.84558868408203 15.58370018005371 L 78.84270477294922 12.94367790222168 C 79.43117523193359 12.16775894165039 79.52802276611328 11.125 79.09251403808594 10.25397491455078 C 78.65700531005859 9.382949829101563 77.76468658447266 8.834775924682617 76.79087066650391 8.840009689331055 L 55.56123733520508 8.840009689331055 L 41.13000106811523 27.9904613494873 L 63.09830093383789 27.9904613494873 C 65.87347412109375 27.99584770202637 68.48892974853516 26.69318580627441 70.15660858154297 24.47498321533203 L 72.19476318359375 21.73920822143555 C 72.46384429931641 21.38547134399414 72.608154296875 20.95255088806152 72.60513305664063 20.50810813903809 C 72.60405731201172 19.85556030273438 72.29468536376953 19.24189567565918 71.77071380615234 18.85296058654785 Z M 62.04502487182617 21.36987686157227 L 60.74553298950195 23.09341812133789 C 60.31354141235352 23.67121315002441 59.63399124145508 24.01098442077637 58.91255569458008 24.00990104675293 L 54.63106918334961 24.00990295410156 L 57.36684799194336 20.31660079956055 L 61.47051620483398 20.31660079956055 C 61.84069442749023 20.31660461425781 62.14078140258789 20.61669158935547 62.14078140258789 20.98686981201172 C 62.14084243774414 21.13067436218262 62.09267807006836 21.27034759521484 62.00399398803711 21.38355827331543 Z M 67.65336608886719 13.92855834960938 L 66.54537200927734 15.39219856262207 C 66.10912322998047 15.96314239501953 65.43093109130859 16.29717636108398 64.71239471435547 16.29500579833984 L 60.4309196472168 16.29500579833984 L 63.01623153686523 12.86160278320313 L 67.11989593505859 12.86160278320313 C 67.49007415771484 12.86160278320313 67.79016876220703 13.16169166564941 67.79016876220703 13.53186798095703 C 67.78635406494141 13.67500114440918 67.73860168457031 13.81349754333496 67.65337371826172 13.92855644226074 Z" fill="#0033a1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cdbgcm =
    '<svg viewBox="2.1 -4.8 77.3 45.3" ><path transform="translate(2.07, 0.01)" d="M 13.10160064697266 -4.461836338043213 C 7.102406024932861 -3.561944723129272 0.003366316203027964 -0.2457285672426224 0.003366316203027964 -0.2457285672426224 C 0.003366316203027964 -0.2457285672426224 38.61479568481445 29.10027503967285 44.73896408081055 33.47467803955078 C 56.70401000976563 42.02350616455078 62.5282096862793 42.8484001159668 73.59336853027344 35.51607131958008 C 73.65155029296875 35.49098205566406 77.23455810546875 33.14140319824219 77.28453826904297 33.10805511474609 C 73.94334411621094 33.28303146362305 70.49380493164063 31.39996528625488 66.62766265869141 28.5003604888916 C 54.22934341430664 19.21829032897949 29.49936676025391 0.8041233420372009 27.84127616882324 -0.420706033706665 C 22.09203910827637 -4.720119953155518 18.48421096801758 -5.261727809906006 13.10160350799561 -4.461836338043213" fill="#004ea2" stroke="none" stroke-width="0.125" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kgkyv2 =
    '<svg viewBox="55.5 -4.8 58.3 34.8" ><path transform="translate(51.61, 0.0)" d="M 17.86689376831055 24.55674743652344 C 24.04939651489258 29.18944931030273 28.49877548217773 32.48066329956055 35.69780349731445 27.71464538574219 C 36.46434783935547 27.19805526733398 61.06102752685547 10.97525596618652 62.17753219604492 10.23369216918945 C 55.95336532592773 5.56766939163208 51.50396728515625 2.234781742095947 44.27995300292969 7.025796413421631 C 43.26343536376953 7.692361831665039 24.75760650634766 19.89904022216797 23.62442779541016 20.64894485473633 C 20.2832145690918 22.81531143188477 17.25862884521484 23.03194808959961 15.03394222259521 22.43203353881836 C 15.05100536346436 22.45711898803711 17.84188079833984 24.54007720947266 17.86687850952148 24.55674362182617 M 46.36300277709961 0.7183139324188232 C 40.18883514404297 -3.922729015350342 35.73944854736328 -7.205600738525391 28.5320930480957 -2.439595937728882 C 27.75719833374023 -1.93131947517395 5.035292148590088 13.07496738433838 3.918773651123047 13.82486152648926 C 10.14292335510254 18.48257446289063 14.59231472015381 21.8154411315918 21.81632995605469 17.0244255065918 C 22.83287811279297 16.35786056518555 39.48059463500977 5.367690563201904 40.61377716064453 4.626123905181885 C 43.94666290283203 2.451407432556152 45.54644775390625 1.809839010238647 47.53784942626953 1.551535844802856 C 47.52079010009766 1.534471869468689 46.38798522949219 0.7349856495857239 46.36300277709961 0.7183139324188232" fill="#7fbe25" stroke="none" stroke-width="0.125" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eg273y =
    '<svg viewBox="-0.2 50.8 115.9 16.4" ><path transform="translate(0.0, 51.55)" d="M 71.64670562744141 15.02947235107422 L 71.27175903320313 -0.2351129204034805 L 62.68957901000977 -0.2351129204034805 L 59.25673675537109 10.13014507293701 L 55.83218765258789 -0.2351139634847641 L 47.2500114440918 -0.2351139634847641 L 46.86673355102539 15.02947235107422 L 52.29099273681641 15.02947235107422 L 52.36607360839844 3.497711420059204 L 56.46551132202148 15.02947235107422 L 62.05644607543945 15.02947235107422 L 66.16421508789063 3.497711420059204 L 66.22239685058594 15.02947235107422 L 71.64670562744141 15.02947235107422 Z M 71.64670562744141 15.02947235107422 M 83.10349273681641 6.73060417175293 L 85.06988525390625 2.481171846389771 L 87.03630065917969 6.73060417175293 L 83.10349273681641 6.73060417175293 Z M 88.91935729980469 -0.2351129204034805 L 81.21207427978516 -0.2351129204034805 L 72.48825836181641 15.03779983520508 L 79.27066802978516 15.03779983520508 L 81.52037811279297 10.2051248550415 L 88.63607788085938 10.2051248550415 L 90.86074829101563 15.03779983520508 L 97.64315795898438 15.03779983520508 L 88.91935729980469 -0.2351129204034805 Z M 88.91935729980469 -0.2351129204034805 M 36.02653503417969 10.69673442840576 L 36.02653503417969 10.69673442840576 C 35.09334182739258 11.3549747467041 33.54356002807617 11.82158088684082 32.1604118347168 11.82158088684082 C 30.78559875488281 11.82158088684082 29.2441463470459 11.3549747467041 28.30260276794434 10.69673442840576 C 27.19442558288574 9.913496971130371 26.48618698120117 8.971972465515137 26.41953659057617 7.488824844360352 C 26.486083984375 5.989038944244385 27.19442558288574 5.055823802947998 28.30260276794434 4.272605419158936 C 29.24414253234863 3.614364862442017 30.78559875488281 3.156084537506104 32.1604118347168 3.156084537506104 C 33.54356002807617 3.156084537506104 35.09334182739258 3.614364862442017 36.02653503417969 4.272605419158936 C 37.15140533447266 5.055824279785156 37.84299087524414 5.989038944244385 37.90964508056641 7.488824844360352 C 37.84309387207031 8.971972465515137 37.15140533447266 9.913496971130371 36.02653503417969 10.69673442840576 M 44.28377532958984 7.488824844360352 C 44.28377532958984 7.422103404998779 44.29230117797852 7.363914489746094 44.29230117797852 7.313863754272461 L 44.28377532958984 7.313863754272461 C 44.18378067016602 4.980844020843506 43.21725463867188 3.372733592987061 41.58412551879883 1.931257486343384 C 39.9926872253418 0.523107647895813 37.02640533447266 -0.6933929324150085 32.1604118347168 -0.6933929324150085 C 27.31107902526855 -0.6933929324150085 24.33647155761719 0.523107647895813 22.74501800537109 1.931257009506226 C 21.10357856750488 3.372733116149902 20.13703918457031 4.980843067169189 20.0537109375 7.313863277435303 L 20.03664970397949 7.313863277435303 C 20.03664970397949 7.363862037658691 20.03664970397949 7.422222137451172 20.04518127441406 7.488824844360352 C 20.03664970397949 7.547183990478516 20.03664970397949 7.597182750701904 20.03664970397949 7.655542850494385 L 20.0537109375 7.655542850494385 C 20.13715744018555 9.988563537597656 21.10357856750488 11.60501670837402 22.74501800537109 13.03815078735352 C 24.33647155761719 14.43795585632324 27.31107902526855 15.66279983520508 32.1604118347168 15.66279983520508 C 37.02640914916992 15.66279983520508 39.9926872253418 14.43795585632324 41.58412933349609 13.03815078735352 C 43.21726226806641 11.60501670837402 44.18378067016602 9.988563537597656 44.28377532958984 7.655543804168701 L 44.29230499267578 7.655543804168701 C 44.29230499267578 7.597183704376221 44.28377532958984 7.547183990478516 44.28377532958984 7.488824844360352 M 115.2991180419922 3.414387464523315 C 111.9662475585938 2.531170845031738 107.683479309082 2.689476728439331 105.5671157836914 4.130953311920166 C 104.3922500610352 4.922516822814941 103.6840057373047 5.889042377471924 103.6840057373047 7.472169399261475 C 103.6840057373047 8.896973609924316 104.508903503418 10.01349449157715 105.8003997802734 10.83003997802734 C 107.7751083374023 12.07986545562744 111.9412460327148 12.22151851654053 115.6990585327148 11.32997417449951 L 115.3324356079102 14.91282176971436 C 107.9917373657227 16.72090911865234 103.0757598876953 14.93773555755615 100.9010696411133 13.62966728210449 C 98.77633666992188 12.32984161376953 97.30155944824219 10.18012714385986 97.30155944824219 7.422171115875244 C 97.30155944824219 4.964170932769775 98.29308319091797 3.322734355926514 100.009521484375 1.847931623458862 C 102.1508712768555 0.02317294292151928 107.1585311889648 -1.626590847969055 114.7241744995117 -0.09346266835927963 L 115.2991180419922 3.414387464523315 Z M 115.2991180419922 3.414387464523315 M 17.83735275268555 3.414387464523315 C 14.50446605682373 2.531170845031738 10.22172451019287 2.689476728439331 8.10533618927002 4.130953311920166 C 6.93881893157959 4.922516822814941 6.222269535064697 5.889042377471924 6.222269535064697 7.472169399261475 C 6.222269535064697 8.896973609924316 7.047159671783447 10.01349449157715 8.338640213012695 10.83003997802734 C 10.31337833404541 12.07986545562744 14.48781204223633 12.22151851654053 18.24563407897949 11.32997417449951 L 17.86235237121582 14.91282176971436 C 10.53000926971436 16.72090911865234 5.614009380340576 14.93773555755615 3.439311027526855 13.62966728210449 C 1.31461226940155 12.32984161376953 -0.1602081060409546 10.18012714385986 -0.1602081060409546 7.422171115875244 C -0.1602081060409546 4.964170932769775 0.8230054974555969 3.322734355926514 2.547767400741577 1.847931623458862 C 4.680810928344727 0.02317294292151928 9.680118560791016 -1.626590847969055 17.2707462310791 -0.09346266835927963 L 17.83735275268555 3.414387464523315 Z M 17.83735275268555 3.414387464523315" fill="#004ea2" stroke="none" stroke-width="0.125" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a3zu6 =
    '<svg viewBox="0.0 0.0 11.0 7.0" ><path transform="translate(-2.6, -4.6)" d="M 8.09999942779541 11.60000038146973 L 2.599999666213989 6.041176319122314 L 4.02592658996582 4.599999904632568 L 8.09999942779541 8.717647552490234 L 12.17407512664795 4.599999904632568 L 13.59999942779541 6.041176319122314 L 8.09999942779541 11.60000038146973 Z" fill="#a4afb7" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d0b6pw =
    '<svg viewBox="0.0 0.0 864.7 142.3" ><path transform="translate(-330.0, -354.42)" d="M 330.0000610351563 468.819091796875 C 330.0000610351563 468.819091796875 330.0000610351563 354.4216918945313 330.0000610351563 354.4216918945313 C 330.0000610351563 354.4216918945313 427.3154296875 468.1566772460938 507.255615234375 472.4368896484375 C 596.4491577148438 471.472900390625 597.18017578125 413.3927001953125 675.5581665039063 381.597412109375 C 741.1739501953125 356.6319580078125 791.2421875 424.7329711914063 846.127197265625 426.39404296875 C 901.0120849609375 428.0551147460938 938.8906860351563 379.720458984375 1013.770446777344 376.3623657226563 C 1110.7861328125 381.4193725585938 1188.633911132813 445.9964599609375 1194.6748046875 449.4685668945313 C 1194.6748046875 456.2315673828125 1194.6748046875 496.6805419921875 1194.6748046875 496.6805419921875 C 1194.6748046875 496.6805419921875 330.0000610351563 496.763671875 330.0000610351563 496.763671875 C 330.0000610351563 496.763671875 330.0000610351563 468.819091796875 330.0000610351563 468.819091796875 Z" fill="none" fill-opacity="0.7" stroke="none" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_btd0tw =
    '<svg viewBox="0.8 0.6 863.9 116.9" ><path transform="translate(-312.15, -278.54)" d="M 312.9531555175781 279.1640625 C 312.9531555175781 279.1640625 413.2918090820313 394.9948120117188 491.7105712890625 396.0779724121094 C 570.12939453125 397.1611328125 596.945556640625 327.8305969238281 659.90966796875 304.45703125 C 722.873779296875 281.0834655761719 777.4954223632813 349.0411071777344 830.0645751953125 349.8938293457031 C 882.6337280273438 350.7465209960938 932.965087890625 298.8387451171875 997.556640625 300.2494812011719 C 1062.148193359375 301.6602172851563 1135.996704101563 340.9256286621094 1176.82373046875 371.8994445800781" fill="none" stroke="#009dd2" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o3g0k9 =
    '<svg viewBox="321.0 245.0 865.0 223.0" ><path transform="translate(321.0, 245.0)" d="M 0 223 L 0 222.1553802490234 L 0 0 L 0.7934984564781189 0 L 0.7934984564781189 222.1553802490234 L 177.7615814208984 222.1553802490234 L 177.7615814208984 171.4732513427734 L 1.029905557632446 171.4732513427734 L 1.029905557632446 170.6286468505859 L 177.7615814208984 170.6286468505859 L 177.7615814208984 119.9465179443359 L 1.029905557632446 119.9465179443359 L 1.029905557632446 119.1019058227539 L 177.7615814208984 119.1019058227539 L 177.7615814208984 68.4205322265625 L 1.029905557632446 68.4205322265625 L 1.029905557632446 67.57592010498047 L 177.7615814208984 67.57592010498047 L 177.7615814208984 16.89378929138184 L 1.029905557632446 16.89378929138184 L 1.029905557632446 16.04917526245117 L 177.7615814208984 16.04917526245117 L 177.7615814208984 0 L 178.5550842285156 0 L 178.5550842285156 16.04917526245117 L 346.00048828125 16.04917526245117 L 346.00048828125 0 L 346.7939758300781 0 L 346.7939758300781 16.04917526245117 L 515.82568359375 16.04917526245117 L 515.82568359375 0 L 516.619140625 0 L 516.619140625 16.04917526245117 L 683.27099609375 16.04917526245117 L 683.27099609375 0 L 684.0645141601563 0 L 684.0645141601563 16.04917526245117 L 863.9708862304688 16.04917526245117 L 863.9708862304688 16.89378929138184 L 684.0645141601563 16.89378929138184 L 684.0645141601563 67.57592010498047 L 863.9708862304688 67.57592010498047 L 863.9708862304688 68.4205322265625 L 684.0645141601563 68.4205322265625 L 684.0645141601563 119.1019058227539 L 863.9708862304688 119.1019058227539 L 863.9708862304688 119.9465179443359 L 684.0645141601563 119.9465179443359 L 684.0645141601563 170.6286468505859 L 863.9708862304688 170.6286468505859 L 863.9708862304688 171.4732513427734 L 684.0645141601563 171.4732513427734 L 684.0645141601563 222.1553802490234 L 864.20654296875 222.1553802490234 L 864.20654296875 0 L 865 0 L 865 222.1553802490234 L 865 223 L 0 223 Z M 683.27099609375 222.1553802490234 L 683.27099609375 171.4732513427734 L 516.619140625 171.4732513427734 L 516.619140625 222.1553802490234 L 683.27099609375 222.1553802490234 Z M 515.82568359375 222.1553802490234 L 515.82568359375 171.4732513427734 L 346.7939758300781 171.4732513427734 L 346.7939758300781 222.1553802490234 L 515.82568359375 222.1553802490234 Z M 346.00048828125 222.1553802490234 L 346.00048828125 171.4732513427734 L 178.5550842285156 171.4732513427734 L 178.5550842285156 222.1553802490234 L 346.00048828125 222.1553802490234 Z M 683.27099609375 170.6286468505859 L 683.27099609375 119.9465179443359 L 516.619140625 119.9465179443359 L 516.619140625 170.6286468505859 L 683.27099609375 170.6286468505859 Z M 515.82568359375 170.6286468505859 L 515.82568359375 119.9465179443359 L 346.7939758300781 119.9465179443359 L 346.7939758300781 170.6286468505859 L 515.82568359375 170.6286468505859 Z M 346.00048828125 170.6286468505859 L 346.00048828125 119.9465179443359 L 178.5550842285156 119.9465179443359 L 178.5550842285156 170.6286468505859 L 346.00048828125 170.6286468505859 Z M 683.27099609375 119.1019058227539 L 683.27099609375 68.4205322265625 L 516.619140625 68.4205322265625 L 516.619140625 119.1019058227539 L 683.27099609375 119.1019058227539 Z M 515.82568359375 119.1019058227539 L 515.82568359375 68.4205322265625 L 346.7939758300781 68.4205322265625 L 346.7939758300781 119.1019058227539 L 515.82568359375 119.1019058227539 Z M 346.00048828125 119.1019058227539 L 346.00048828125 68.4205322265625 L 178.5550842285156 68.4205322265625 L 178.5550842285156 119.1019058227539 L 346.00048828125 119.1019058227539 Z M 683.27099609375 67.57592010498047 L 683.27099609375 16.89378929138184 L 516.619140625 16.89378929138184 L 516.619140625 67.57592010498047 L 683.27099609375 67.57592010498047 Z M 515.82568359375 67.57592010498047 L 515.82568359375 16.89378929138184 L 346.7939758300781 16.89378929138184 L 346.7939758300781 67.57592010498047 L 515.82568359375 67.57592010498047 Z M 346.00048828125 67.57592010498047 L 346.00048828125 16.89378929138184 L 178.5550842285156 16.89378929138184 L 178.5550842285156 67.57592010498047 L 346.00048828125 67.57592010498047 Z" fill="#eaf0f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u0fae2 =
    '<svg viewBox="0.0 0.9 864.7 187.1" ><path transform="translate(-330.0, -300.4)" d="M 330.0000305175781 460.4660034179688 C 330.0000305175781 460.4660034179688 330.0000305175781 385.5514221191406 330.0000305175781 385.5514221191406 C 330.0000305175781 385.5514221191406 429.7062377929688 434.6889343261719 509.371826171875 437.7750244140625 C 595.5153198242188 434.7841186523438 610.4319458007813 413.7550964355469 677.5313110351563 385.5514221191406 C 734.8707885742188 362.0434265136719 792.0533447265625 355.5914916992188 846.9384765625 357.2525939941406 C 901.823486328125 358.9136657714844 949.3946533203125 384.308349609375 1014.226501464844 386.9107055664063 C 1128.597534179688 376.4259948730469 1186.949951171875 323.416748046875 1194.67724609375 301.2768249511719 C 1194.67724609375 308.0398254394531 1194.67724609375 488.3274536132813 1194.67724609375 488.3274536132813 C 1194.67724609375 488.3274536132813 330.0000305175781 488.4105834960938 330.0000305175781 488.4105834960938 C 330.0000305175781 488.4105834960938 330.0000305175781 460.4660034179688 330.0000305175781 460.4660034179688 Z" fill="none" fill-opacity="0.7" stroke="none" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c4knc5 =
    '<svg viewBox="0.8 0.0 863.8 136.8" ><path transform="translate(-312.16, -245.24)" d="M 313.0000305175781 330.58447265625 C 313.0000305175781 330.58447265625 412.0567321777344 380.8933715820313 490.3780822753906 381.9765014648438 C 568.69970703125 383.0596923828125 598.78271484375 356.0150756835938 658.7718505859375 330.6513061523438 C 718.7611083984375 305.28759765625 775.7899780273438 300.9588012695313 828.2938842773438 301.8114624023438 C 880.7976684570313 302.6641845703125 931.839111328125 329.2434692382813 996.3505859375 330.6541748046875 C 1060.861938476563 332.06494140625 1165.228759765625 284.7096557617188 1176.834228515625 245.240234375" fill="none" stroke="#0070ad" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1iz2sh =
    '<svg viewBox="0.0 0.0 9.3 5.9" ><path transform="translate(-2.6, -4.6)" d="M 7.23553466796875 10.4997730255127 L 2.59999942779541 5.814658641815186 L 3.801805734634399 4.599999904632568 L 7.23553466796875 8.070454597473145 L 10.66926574707031 4.599999904632568 L 11.87106990814209 5.814658641815186 L 7.23553466796875 10.4997730255127 Z" fill="#a4afb7" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ikwjma =
    '<svg viewBox="367.0 412.3 10.7 10.7" ><path transform="translate(367.0, 412.28)" d="M 9.526041984558105 0 L 1.190755248069763 0 C 0.5298860669136047 0 0 0.535839855670929 0 1.190755248069763 L 0 9.526041984558105 C 0 10.18095779418945 0.5298860669136047 10.716796875 1.190755248069763 10.716796875 L 9.526041984558105 10.716796875 C 10.18691158294678 10.716796875 10.716796875 10.18095779418945 10.716796875 9.526041984558105 L 10.716796875 1.190755248069763 C 10.716796875 0.535839855670929 10.18691158294678 0 9.526041984558105 0 Z" fill="#0070ad" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_70b35h =
    '<svg viewBox="475.9 412.3 10.7 10.7" ><path transform="translate(475.86, 412.28)" d="M 9.526041984558105 0 L 1.190755248069763 0 C 0.5298860669136047 0 0 0.535839855670929 0 1.190755248069763 L 0 9.526041984558105 C 0 10.18095779418945 0.5298860669136047 10.716796875 1.190755248069763 10.716796875 L 9.526041984558105 10.716796875 C 10.18691158294678 10.716796875 10.716796875 10.18095779418945 10.716796875 9.526041984558105 L 10.716796875 1.190755248069763 C 10.716796875 0.535839855670929 10.18691158294678 0 9.526041984558105 0 Z" fill="#0070ad" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_66vn9n =
    '<svg viewBox="571.9 412.3 10.7 10.7" ><path transform="translate(571.86, 412.28)" d="M 9.526041984558105 0 L 1.190755248069763 0 C 0.5298860669136047 0 0 0.535839855670929 0 1.190755248069763 L 0 9.526041984558105 C 0 10.18095779418945 0.5298860669136047 10.716796875 1.190755248069763 10.716796875 L 9.526041984558105 10.716796875 C 10.18691158294678 10.716796875 10.716796875 10.18095779418945 10.716796875 9.526041984558105 L 10.716796875 1.190755248069763 C 10.716796875 0.535839855670929 10.18691158294678 0 9.526041984558105 0 Z" fill="#0070ad" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_531yri =
    '<svg viewBox="368.2 414.4 8.3 6.2" ><path transform="translate(368.19, 414.41)" d="M 2.976888179779053 6.203835010528564 L 0 3.226946830749512 L 0.8394824266433716 2.38746452331543 L 2.976888179779053 4.518916130065918 L 7.495804309844971 0 L 8.335287094116211 0.8454362154006958 L 2.976888179779053 6.203835010528564 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_3xtbwd =
    '<svg viewBox="477.0 414.4 8.3 6.2" ><path transform="translate(477.05, 414.41)" d="M 2.976888179779053 6.203835010528564 L 0 3.226946830749512 L 0.8394824266433716 2.38746452331543 L 2.976888179779053 4.518916130065918 L 7.495804309844971 0 L 8.335287094116211 0.8454362154006958 L 2.976888179779053 6.203835010528564 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hx0fgd =
    '<svg viewBox="573.0 414.4 8.3 6.2" ><path transform="translate(573.05, 414.41)" d="M 2.976888179779053 6.203835010528564 L 0 3.226946830749512 L 0.8394824266433716 2.38746452331543 L 2.976888179779053 4.518916130065918 L 7.495804309844971 0 L 8.335287094116211 0.8454362154006958 L 2.976888179779053 6.203835010528564 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rvkfj5 =
    '<svg viewBox="367.0 412.0 10.7 10.7" ><path transform="translate(367.0, 412.0)" d="M 9.526041984558105 0 L 1.190755248069763 0 C 0.5298860669136047 0 0 0.535839855670929 0 1.190755248069763 L 0 9.526041984558105 C 0 10.18095779418945 0.5298860669136047 10.716796875 1.190755248069763 10.716796875 L 9.526041984558105 10.716796875 C 10.18691158294678 10.716796875 10.716796875 10.18095779418945 10.716796875 9.526041984558105 L 10.716796875 1.190755248069763 C 10.716796875 0.535839855670929 10.18691158294678 0 9.526041984558105 0 Z" fill="#0070ad" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_1qr9qi =
    '<svg viewBox="475.9 412.0 10.7 10.7" ><path transform="translate(475.86, 412.0)" d="M 9.526041984558105 0 L 1.190755248069763 0 C 0.5298860669136047 0 0 0.535839855670929 0 1.190755248069763 L 0 9.526041984558105 C 0 10.18095779418945 0.5298860669136047 10.716796875 1.190755248069763 10.716796875 L 9.526041984558105 10.716796875 C 10.18691158294678 10.716796875 10.716796875 10.18095779418945 10.716796875 9.526041984558105 L 10.716796875 1.190755248069763 C 10.716796875 0.535839855670929 10.18691158294678 0 9.526041984558105 0 Z" fill="#0070ad" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_sj2c9f =
    '<svg viewBox="571.9 412.0 10.7 10.7" ><path transform="translate(571.86, 412.0)" d="M 9.526041984558105 0 L 1.190755248069763 0 C 0.5298860669136047 0 0 0.535839855670929 0 1.190755248069763 L 0 9.526041984558105 C 0 10.18095779418945 0.5298860669136047 10.716796875 1.190755248069763 10.716796875 L 9.526041984558105 10.716796875 C 10.18691158294678 10.716796875 10.716796875 10.18095779418945 10.716796875 9.526041984558105 L 10.716796875 1.190755248069763 C 10.716796875 0.535839855670929 10.18691158294678 0 9.526041984558105 0 Z" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8s5wft =
    '<svg viewBox="3.2 3.2 9.0 9.0" ><path transform="translate(3.21, 3.21)" d="M 9 5.142857074737549 L 5.142857074737549 5.142857074737549 L 5.142857074737549 9 L 3.857142925262451 9 L 3.857142925262451 5.142857074737549 L 0 5.142857074737549 L 0 3.857142925262451 L 3.857142925262451 3.857142925262451 L 3.857142925262451 0 L 5.142857074737549 0 L 5.142857074737549 3.857142925262451 L 9 3.857142925262451 L 9 5.142857074737549 Z" fill="#ffffff" fill-opacity="0.87" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_17s4n2 =
    '<svg viewBox="9465.5 14023.0 34.0 1.0" ><path transform="translate(9465.5, 14023.0)" d="M 0 0 L 34 0" fill="none" stroke="#2b0a3d" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_zaxf60 =
    '<svg viewBox="9465.5 14037.0 34.0 1.0" ><path transform="translate(9465.5, 14037.0)" d="M 0 0 L 34 0" fill="none" stroke="#2b0a3d" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_mlwc1k =
    '<svg viewBox="9465.5 14051.0 34.0 1.0" ><path transform="translate(9465.5, 14051.0)" d="M 0 0 L 34 0" fill="none" stroke="#2b0a3d" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_92acwb =
    '<svg viewBox="0.0 0.0 1920.0 104.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path  d="M 0 0 L 1920 0 L 1920 104 L 0 104 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_jen8 =
    '<svg viewBox="118.3 0.0 54.3 50.2" ><path transform="translate(-13.56, 9.49)" d="M 174.0828704833984 31.81494140625 C 180.8665008544922 31.81494140625 186.1052703857422 26.28685188293457 186.172607421875 19.73248291015625 C 185.7013092041016 16.87017822265625 184.6987152099609 11.57500267028809 177.2690582275391 11.57500267028809 C 169.1461639404297 11.57500267028809 166.4512329101563 22.92960357666016 159.8368225097656 30.24822807312012 C 159.300048828125 34.41158294677734 155.3641662597656 38.13639831542969 150.4420013427734 38.76053619384766 C 151.6502532958984 40.02337646484375 154.3287963867188 40.70210266113281 157.5277404785156 40.70210266113281 C 163.3869781494141 40.70210266113281 170.4799499511719 38.93886566162109 174.1902465820313 35.27590942382813 C 169.2407531738281 35.339599609375 166.0564117431641 32.15885925292969 165.7415924072266 27.74984931945801 C 168.1562652587891 30.67584419250488 170.8857421875 31.81494140625 174.0828399658203 31.81494140625" fill="#12abdb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.0, 0.0)" d="M 172.6012573242188 28.73687553405762 C 172.4539184570313 21.11801147460938 168.8273010253906 14.68919658660889 163.2391662597656 9.55778980255127 C 158.9957885742188 5.681941032409668 153.9535522460938 2.73957085609436 148.6674499511719 0.5232394933700562 C 148.2421875 0.3435300290584564 147.8144836425781 0.1694361120462418 147.3845825195313 0.0009994508000090718 L 147.3827819824219 0.001000643940642476 C 140.8738708496094 7.798190116882324 118.335693359375 13.61742305755615 118.335693359375 29.96513366699219 C 118.335693359375 36.35574340820313 122.371711730957 42.33146286010742 128.2983093261719 44.72975921630859 C 131.7337799072266 46.02898406982422 135.1711273193359 46.09995651245117 138.6102294921875 44.94448089599609 C 141.667236328125 43.94003295898438 144.1819763183594 42.04396057128906 146.2727508544922 39.73300552368164 C 152.8926696777344 32.41438293457031 155.585693359375 21.06341743469238 163.706787109375 21.06341743469238 C 171.1382141113281 21.06341743469238 172.1390380859375 26.3531322479248 172.6139831542969 29.21725845336914 C 172.6139831542969 29.20998001098633 172.6103210449219 29.00981903076172 172.6012268066406 28.73687171936035" fill="#0070ad" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
