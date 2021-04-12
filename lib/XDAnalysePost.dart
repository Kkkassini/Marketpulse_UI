import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDAccueil.dart';
import 'package:adobe_xd/page_link.dart';
import './XDClienttrend.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDAnalysePost extends StatelessWidget {
  XDAnalysePost({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(255.3, 244.0),
            child: SizedBox(
              width: 1416.0,
              height: 1782.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.4, 242.0, 1415.3, 1540.0),
                    size: Size(1415.7, 1782.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 1415.3, 1540.0),
                          size: Size(1415.3, 1540.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 1415.3, 1540.0),
                                size: Size(1415.3, 1540.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 474.0, 532.0),
                                      size: Size(1415.3, 1540.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
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
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          34.8, 29.7, 185.0, 42.3),
                                      size: Size(1415.3, 1540.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 185.0, 25.0),
                                            size: Size(185.0, 42.3),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'TOP 10 Content',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 22,
                                                color: const Color(0xff2b0a3d),
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 26.3, 152.0, 16.0),
                                            size: Size(185.0, 42.3),
                                            child: Text(
                                              'Most relevant key words',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 14,
                                                color: const Color(0xffafafaf),
                                                fontWeight: FontWeight.w300,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          34.4, 102.0, 411.6, 364.0),
                                      size: Size(1415.3, 1540.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'Trending terms cont…' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 411.6, 364.0),
                                            size: Size(411.6, 364.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child:
                                                // Adobe XD layer: 'Name and numbers' (group)
                                                Stack(
                                              children: <Widget>[
                                                Container(),
                                                Container(),
                                                Container(),
                                                Container(),
                                                Container(),
                                                Container(),
                                                Container(),
                                                Container(),
                                                Container(),
                                                Container(),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(),
                                    Container(),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          0.0, 572.0, 1415.3, 968.0),
                                      size: Size(1415.3, 1540.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
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
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          34.4, 599.7, 470.0, 42.3),
                                      size: Size(1415.3, 1540.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 280.0, 25.0),
                                            size: Size(470.0, 42.3),
                                            pinLeft: true,
                                            pinTop: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Document comparison',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 22,
                                                color: const Color(0xff2b0a3d),
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 26.3, 470.0, 16.0),
                                            size: Size(470.0, 42.3),
                                            child: Text(
                                              'Overall datas comparison with other documents of the client and his sector ',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 14,
                                                color: const Color(0xffafafaf),
                                                fontWeight: FontWeight.w300,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          34.0, 704.0, 430.0, 56.0),
                                      size: Size(1415.3, 1540.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'Dropdown' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 430.0, 56.0),
                                            size: Size(430.0, 56.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            fixedHeight: true,
                                            child:
                                                // Adobe XD layer: 'Dropdown' (group)
                                                Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 8.0, 430.0, 48.0),
                                                  size: Size(430.0, 56.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: 'Inner group' (group)
                                                      Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            430.0,
                                                            48.0),
                                                        size: Size(430.0, 48.0),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child:
                                                            // Adobe XD layer: 'Textfield border' (shape)
                                                            Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xffffffff),
                                                            border: Border.all(
                                                                width: 1.0,
                                                                color: const Color(
                                                                    0xff666666)),
                                                          ),
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            16.0,
                                                            15.0,
                                                            87.0,
                                                            18.0),
                                                        size: Size(430.0, 48.0),
                                                        pinLeft: true,
                                                        fixedWidth: true,
                                                        fixedHeight: true,
                                                        child: Text(
                                                          'Search term',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontSize: 16,
                                                            color: const Color(
                                                                0x66666666),
                                                            height: 1.625,
                                                          ),
                                                          textHeightBehavior:
                                                              TextHeightBehavior(
                                                                  applyHeightToFirstAscent:
                                                                      false),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            401.7,
                                                            20.0,
                                                            12.3,
                                                            6.6),
                                                        size: Size(430.0, 48.0),
                                                        child:
                                                            // Adobe XD layer: 'Icon metro-chevron-…' (shape)
                                                            SvgPicture.string(
                                                          _svg_3fumam,
                                                          allowDrawingOutsideViewBox:
                                                              true,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      8.0, 0.0, 144.0, 14.0),
                                                  size: Size(430.0, 56.0),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  fixedWidth: true,
                                                  fixedHeight: true,
                                                  child:
                                                      // Adobe XD layer: 'Label Group' (group)
                                                      Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            144.0,
                                                            14.0),
                                                        size: Size(144.0, 14.0),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child:
                                                            // Adobe XD layer: 'Label BG' (shape)
                                                            Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            8.0,
                                                            0.0,
                                                            128.0,
                                                            14.0),
                                                        size: Size(144.0, 14.0),
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        fixedWidth: true,
                                                        child: Text(
                                                          'Search a specific term',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontSize: 13,
                                                            color: const Color(
                                                                0xff666666),
                                                            height: 2,
                                                          ),
                                                          textHeightBehavior:
                                                              TextHeightBehavior(
                                                                  applyHeightToFirstAscent:
                                                                      false),
                                                          textAlign:
                                                              TextAlign.left,
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
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          33.8, 672.0, 213.0, 17.0),
                                      size: Size(1415.3, 1540.0),
                                      child: Text(
                                        'Search terms to compare with',
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 15,
                                          color: const Color(0xff2b0a3d),
                                          fontWeight: FontWeight.w700,
                                          height: 1.6,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          33.8, 770.0, 108.0, 17.0),
                                      size: Size(1415.3, 1540.0),
                                      child: Text(
                                        'Selected terms',
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 15,
                                          color: const Color(0xff2b0a3d),
                                          fontWeight: FontWeight.w700,
                                          height: 1.6,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Container(),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          34.0, 798.0, 375.3, 29.0),
                                      size: Size(1415.3, 1540.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'Light 🌕/ Chips/Out…' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 375.3, 29.0),
                                            size: Size(375.3, 29.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child:
                                                // Adobe XD layer: 'Container' (group)
                                                Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 375.3, 29.0),
                                                  size: Size(375.3, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: '☁️ Elevation' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      color: const Color(
                                                          0xff2b0a3d),
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 375.3, 29.0),
                                                  size: Size(375.3, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: '🎨 Color l Container' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      color: const Color(
                                                          0xff2b0a3d),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0x1f000000)),
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 375.3, 29.0),
                                                  size: Size(375.3, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: '💡States' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                12.0, 6.0, 334.0, 16.0),
                                            size: Size(375.3, 29.0),
                                            pinRight: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child:
                                                // Adobe XD layer: '✏️ Label' (text)
                                                Text(
                                              'SaaS Testing Methodology & Development Process',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 14,
                                                color: const Color(0xffffffff),
                                                letterSpacing: 0.252,
                                                height: 1.4285714285714286,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                355.7, 10.2, 7.6, 7.6),
                                            size: Size(375.3, 29.0),
                                            pinRight: true,
                                            pinTop: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_64dnu1,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          417.3, 798.0, 215.4, 29.0),
                                      size: Size(1415.3, 1540.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'Light 🌕/ Chips/Out…' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 215.4, 29.0),
                                            size: Size(215.4, 29.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child:
                                                // Adobe XD layer: 'Container' (group)
                                                Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 215.4, 29.0),
                                                  size: Size(215.4, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: '☁️ Elevation' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      color: const Color(
                                                          0xff2b0a3d),
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 215.4, 29.0),
                                                  size: Size(215.4, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: '🎨 Color l Container' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      color: const Color(
                                                          0xff2b0a3d),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0x1f000000)),
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 215.4, 29.0),
                                                  size: Size(215.4, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: '💡States' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                12.0, 6.0, 174.0, 16.0),
                                            size: Size(215.4, 29.0),
                                            pinRight: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child:
                                                // Adobe XD layer: '✏️ Label' (text)
                                                Text(
                                              'Cloud Computing Glossary',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 14,
                                                color: const Color(0xffffffff),
                                                letterSpacing: 0.252,
                                                height: 1.4285714285714286,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                195.8, 10.2, 7.6, 7.6),
                                            size: Size(215.4, 29.0),
                                            pinRight: true,
                                            pinTop: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_6jmtch,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          33.7, 867.0, 1344.9, 647.0),
                                      size: Size(1415.3, 1540.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 348.0, 20.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinTop: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'No. Of similar document with these terms',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 18,
                                                color: const Color(0xff2b0a3d),
                                                fontWeight: FontWeight.w500,
                                                height: 1.2222222222222223,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                84.0, 130.9, 5.0, 80.2),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 5.0, 1.0),
                                                  size: Size(5.0, 80.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  fixedHeight: true,
                                                  child: SvgPicture.string(
                                                    _svg_1dw003,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 80.2, 5.0, 1.0),
                                                  size: Size(5.0, 80.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinBottom: true,
                                                  fixedHeight: true,
                                                  child: SvgPicture.string(
                                                    _svg_tc3505,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                82.0, 292.1, 5.0, 81.9),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 5.0, 1.0),
                                                  size: Size(5.0, 81.9),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  fixedHeight: true,
                                                  child: SvgPicture.string(
                                                    _svg_jg52wd,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 81.9, 5.0, 1.0),
                                                  size: Size(5.0, 81.9),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinBottom: true,
                                                  fixedHeight: true,
                                                  child: SvgPicture.string(
                                                    _svg_fktrbr,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 170.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 251.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 332.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 210.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 292.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                102.5, 130.5, 1142.9, 1.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_cemz6w,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                138.0, 276.0, 35.0, 35.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 35.0, 35.0),
                                                  size: Size(35.0, 35.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x1412abdb),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff12abdb)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                200.0, 318.0, 29.0, 29.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 29.0, 29.0),
                                                  size: Size(29.0, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x1412abdb),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff12abdb)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                291.0, 104.0, 56.0, 56.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 56.0, 56.0),
                                                  size: Size(56.0, 56.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x1412abdb),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff12abdb)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                364.9, 318.0, 29.0, 29.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 29.0, 29.0),
                                                  size: Size(29.0, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x1412abdb),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff12abdb)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1023.4, 121.0, 78.0, 78.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x1412abdb),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff12abdb)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                508.7, 339.0, 29.0, 29.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 29.0, 29.0),
                                                  size: Size(29.0, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x1412abdb),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff12abdb)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                588.8, 230.0, 43.0, 43.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x142b0a3d),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff2b0a3d)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                632.2, 318.0, 29.0, 29.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 29.0, 29.0),
                                                  size: Size(29.0, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x142b0a3d),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff2b0a3d)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                696.0, 318.0, 29.0, 29.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 29.0, 29.0),
                                                  size: Size(29.0, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x142b0a3d),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff2b0a3d)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                733.5, 293.0, 29.0, 29.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 29.0, 29.0),
                                                  size: Size(29.0, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x142b0a3d),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff2b0a3d)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                773.1, 230.0, 38.0, 38.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 38.0, 38.0),
                                                  size: Size(38.0, 38.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x1412abdb),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff12abdb)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                489.2, 133.1, 78.0, 78.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x1412abdb),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff12abdb)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                394.3, 183.0, 55.0, 55.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x142b0a3d),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff2b0a3d)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                946.4, 251.0, 42.0, 42.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x1412abdb),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff12abdb)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                987.7, 318.0, 29.0, 29.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 29.0, 29.0),
                                                  size: Size(29.0, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x1412abdb),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff12abdb)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1048.5, 279.0, 29.0, 29.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 29.0, 29.0),
                                                  size: Size(29.0, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x1412abdb),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff12abdb)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                890.8, 183.0, 55.0, 55.0),
                                            size: Size(1344.9, 647.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_bwa3sq,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                109.4, 241.8, 1134.1, 235.9),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_4wih6e,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                110.6, 131.1, 849.5, 271.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_hw8cr7,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                84.0, 629.0, 46.0, 18.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Lower',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 16,
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w500,
                                                height: 1.625,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                85.0, 454.7, 5.0, 162.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 81.4, 5.0, 1.0),
                                                  size: Size(5.0, 162.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  fixedHeight: true,
                                                  child: SvgPicture.string(
                                                    _svg_sl5pak,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 162.0, 5.0, 1.0),
                                                  size: Size(5.0, 162.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinBottom: true,
                                                  fixedHeight: true,
                                                  child: SvgPicture.string(
                                                    _svg_wv674w,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 5.0, 1.0),
                                                  size: Size(5.0, 162.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  fixedHeight: true,
                                                  child: SvgPicture.string(
                                                    _svg_lve9j7,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 413.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 495.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 576.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 373.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 454.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 535.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 616.0, 1142.9, 1.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffefefef),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffefefef)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                107.8, 616.8, 1.0, 5.1),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_1q918b,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                635.6, 628.0, 60.0, 18.0),
                                            size: Size(1344.9, 647.0),
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Medium',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 16,
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w500,
                                                height: 1.625,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1205.5, 629.0, 50.0, 18.0),
                                            size: Size(1344.9, 647.0),
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Higher',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 16,
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w500,
                                                height: 1.625,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                665.8, 616.0, 1.0, 5.1),
                                            size: Size(1344.9, 647.0),
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_gxfu27,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1290.9, 607.0, 54.0, 18.0),
                                            size: Size(1344.9, 647.0),
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Client',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 16,
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w500,
                                                height: 1.625,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1228.7, 615.8, 1.0, 5.1),
                                            size: Size(1344.9, 647.0),
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_c1rztz,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                103.0, 445.0, 21.0, 21.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 21.0, 21.0),
                                                  size: Size(21.0, 21.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x1412abdb),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff12abdb)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                260.6, 569.0, 15.0, 15.0),
                                            size: Size(1344.9, 647.0),
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x1412abdb),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff12abdb)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1114.9, 265.6, 55.0, 55.0),
                                            size: Size(1344.9, 647.0),
                                            pinRight: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x1412abdb),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff12abdb)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                558.2, 584.0, 15.0, 15.0),
                                            size: Size(1344.9, 647.0),
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x142b0a3d),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff2b0a3d)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1064.3, 535.0, 15.0, 15.0),
                                            size: Size(1344.9, 647.0),
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x1412abdb),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff12abdb)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1105.9, 529.0, 15.0, 15.0),
                                            size: Size(1344.9, 647.0),
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x1412abdb),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff12abdb)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1078.9, 550.0, 15.0, 15.0),
                                            size: Size(1344.9, 647.0),
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x1412abdb),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff12abdb)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1140.9, 438.0, 29.0, 29.0),
                                            size: Size(1344.9, 647.0),
                                            pinRight: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 29.0, 29.0),
                                                  size: Size(29.0, 29.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      color: const Color(
                                                          0x1412abdb),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff12abdb)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                1169.9, 144.0, 55.0, 55.0),
                                            size: Size(1344.9, 647.0),
                                            pinRight: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0x1412abdb),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff12abdb)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                223.1, 49.6, 1022.4, 34.9),
                                            size: Size(1344.9, 647.0),
                                            pinRight: true,
                                            pinTop: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 1022.4, 34.9),
                                                  size: Size(1022.4, 34.9),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            586.1,
                                                            6.2,
                                                            21.4,
                                                            5.3),
                                                        size:
                                                            Size(1022.4, 34.9),
                                                        child:
                                                            // Adobe XD layer: 'bar' (shape)
                                                            SvgPicture.string(
                                                          _svg_boa24i,
                                                          allowDrawingOutsideViewBox:
                                                              true,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            819.5,
                                                            6.2,
                                                            21.4,
                                                            5.3),
                                                        size:
                                                            Size(1022.4, 34.9),
                                                        child:
                                                            // Adobe XD layer: 'bar' (shape)
                                                            SvgPicture.string(
                                                          _svg_e2kxzr,
                                                          allowDrawingOutsideViewBox:
                                                              true,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            849.4,
                                                            0.9,
                                                            173.0,
                                                            33.0),
                                                        size:
                                                            Size(1022.4, 34.9),
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        fixedWidth: true,
                                                        child: Text(
                                                          'Average of client total post\nusing these specific terms',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffff304d),
                                                            height:
                                                                1.2142857142857142,
                                                          ),
                                                          textHeightBehavior:
                                                              TextHeightBehavior(
                                                                  applyHeightToFirstAscent:
                                                                      false),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            616.0,
                                                            0.9,
                                                            181.0,
                                                            33.0),
                                                        size:
                                                            Size(1022.4, 34.9),
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        fixedWidth: true,
                                                        child: Text(
                                                          'Average of sector  total post\nusing these specific terms',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xff95e616),
                                                            height:
                                                                1.2142857142857142,
                                                          ),
                                                          textHeightBehavior:
                                                              TextHeightBehavior(
                                                                  applyHeightToFirstAscent:
                                                                      false),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            27.2,
                                                            2.8,
                                                            117.0,
                                                            16.0),
                                                        size:
                                                            Size(1022.4, 34.9),
                                                        pinLeft: true,
                                                        pinTop: true,
                                                        fixedWidth: true,
                                                        fixedHeight: true,
                                                        child: Text(
                                                          'Current document',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xff2b0a3d),
                                                            height:
                                                                1.2142857142857142,
                                                          ),
                                                          textHeightBehavior:
                                                              TextHeightBehavior(
                                                                  applyHeightToFirstAscent:
                                                                      false),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.9,
                                                            19.0,
                                                            19.0),
                                                        size:
                                                            Size(1022.4, 34.9),
                                                        pinLeft: true,
                                                        pinTop: true,
                                                        fixedWidth: true,
                                                        fixedHeight: true,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius: BorderRadius
                                                                .all(Radius
                                                                    .elliptical(
                                                                        9999.0,
                                                                        9999.0)),
                                                            color: const Color(
                                                                0xff2b0a3d),
                                                          ),
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            403.6,
                                                            1.9,
                                                            160.0,
                                                            33.0),
                                                        size:
                                                            Size(1022.4, 34.9),
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        fixedWidth: true,
                                                        child: Text(
                                                          'Similar document coming\nfrom other companies ',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xff2b0a3d),
                                                            height:
                                                                1.2142857142857142,
                                                          ),
                                                          textHeightBehavior:
                                                              TextHeightBehavior(
                                                                  applyHeightToFirstAscent:
                                                                      false),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            193.9,
                                                            1.9,
                                                            160.0,
                                                            33.0),
                                                        size:
                                                            Size(1022.4, 34.9),
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        fixedWidth: true,
                                                        child: Text(
                                                          'Similar document coming\nfrom the client',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Ubuntu',
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xff2b0a3d),
                                                            height:
                                                                1.2142857142857142,
                                                          ),
                                                          textHeightBehavior:
                                                              TextHeightBehavior(
                                                                  applyHeightToFirstAscent:
                                                                      false),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            376.4,
                                                            0.0,
                                                            19.0,
                                                            19.0),
                                                        size:
                                                            Size(1022.4, 34.9),
                                                        pinTop: true,
                                                        fixedWidth: true,
                                                        fixedHeight: true,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius: BorderRadius
                                                                .all(Radius
                                                                    .elliptical(
                                                                        9999.0,
                                                                        9999.0)),
                                                            color: const Color(
                                                                0x1412abdb),
                                                            border: Border.all(
                                                                width: 1.0,
                                                                color: const Color(
                                                                    0xff0070ad)),
                                                          ),
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            166.7,
                                                            0.0,
                                                            19.0,
                                                            19.0),
                                                        size:
                                                            Size(1022.4, 34.9),
                                                        pinLeft: true,
                                                        pinTop: true,
                                                        fixedWidth: true,
                                                        fixedHeight: true,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius: BorderRadius
                                                                .all(Radius
                                                                    .elliptical(
                                                                        9999.0,
                                                                        9999.0)),
                                                            color: const Color(
                                                                0x142b0a3d),
                                                            border: Border.all(
                                                                width: 1.0,
                                                                color: const Color(
                                                                    0xff2b0a3d)),
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
                                            bounds: Rect.fromLTWH(
                                                57.5, 84.3, 60.0, 18.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinTop: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Sector',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 16,
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w500,
                                                height: 1.625,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.6, 123.0, 51.0, 18.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Higher',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 16,
                                                color: const Color(0xff2b0a3d),
                                                fontWeight: FontWeight.w700,
                                                height: 1.0625,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.6, 365.0, 61.0, 18.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Medium',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 16,
                                                color: const Color(0xff2b0a3d),
                                                fontWeight: FontWeight.w700,
                                                height: 1.0625,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.6, 608.0, 47.0, 18.0),
                                            size: Size(1344.9, 647.0),
                                            pinLeft: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Lower',
                                              style: TextStyle(
                                                fontFamily: 'Ubuntu',
                                                fontSize: 16,
                                                color: const Color(0xff2b0a3d),
                                                fontWeight: FontWeight.w700,
                                                height: 1.0625,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          Container(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(490.1, 0.0, 438.0, 532.0),
                          size: Size(1415.3, 1540.0),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 438.0, 532.0),
                                size: Size(438.0, 532.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Container(
                                  decoration: BoxDecoration(
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(28.8, 29.7, 237.0, 42.3),
                                size: Size(438.0, 532.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 237.0, 42.3),
                                      size: Size(237.0, 42.3),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 237.0, 42.3),
                                            size: Size(237.0, 42.3),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 61.0, 25.0),
                                                  size: Size(237.0, 42.3),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  fixedWidth: true,
                                                  fixedHeight: true,
                                                  child: Text(
                                                    'META',
                                                    style: TextStyle(
                                                      fontFamily: 'Ubuntu',
                                                      fontSize: 22,
                                                      color: const Color(
                                                          0xff2b0a3d),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 26.3, 237.0, 16.0),
                                                  size: Size(237.0, 42.3),
                                                  child: Text(
                                                    'Select which meta\'s content to display',
                                                    style: TextStyle(
                                                      fontFamily: 'Ubuntu',
                                                      fontSize: 14,
                                                      color: const Color(
                                                          0xffafafaf),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                    textAlign: TextAlign.left,
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(396.0, 160.0, 6.2, 344.0),
                                size: Size(438.0, 532.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 6.0, 344.0),
                                      size: Size(6.2, 344.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(236.0),
                                          color: const Color(0x332b0a3d),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.2, 0.0, 6.0, 183.0),
                                      size: Size(6.2, 344.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(236.0),
                                          color: const Color(0xff2b0a3d),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(29.0, 160.0, 352.2, 45.0),
                                size: Size(438.0, 532.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Head.BG' (shape)
                                    SvgPicture.string(
                                  _svg_xc7sqr,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(328.0, 174.0, 32.0, 16.0),
                                size: Size(438.0, 532.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(180.0, 174.0, 54.0, 16.0),
                                size: Size(438.0, 532.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Content',
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(49.0, 174.0, 79.0, 16.0),
                                size: Size(438.0, 532.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Datas types',
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(28.8, 92.0, 373.4, 48.0),
                                size: Size(438.0, 532.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Dropdown' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 373.4, 48.0),
                                      size: Size(373.4, 48.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'Dropdown' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 373.4, 48.0),
                                            size: Size(373.4, 48.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child:
                                                // Adobe XD layer: 'Inner group' (group)
                                                Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.1, 0.0, 373.4, 48.0),
                                                  size: Size(373.4, 48.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: 'Textfield border' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffffffff),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff666666)),
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      16.0, 15.0, 33.0, 18.0),
                                                  size: Size(373.4, 48.0),
                                                  pinLeft: true,
                                                  fixedWidth: true,
                                                  fixedHeight: true,
                                                  child: Text(
                                                    'date',
                                                    style: TextStyle(
                                                      fontFamily: 'Ubuntu',
                                                      fontSize: 16,
                                                      color: const Color(
                                                          0xff666666),
                                                      height: 1.625,
                                                    ),
                                                    textHeightBehavior:
                                                        TextHeightBehavior(
                                                            applyHeightToFirstAscent:
                                                                false),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      340.8, 19.8, 16.6, 8.9),
                                                  size: Size(373.4, 48.0),
                                                  child:
                                                      // Adobe XD layer: 'Icon metro-chevron-…' (shape)
                                                      SvgPicture.string(
                                                    _svg_uthcwc,
                                                    allowDrawingOutsideViewBox:
                                                        true,
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
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1027.3, 393.0, 352.0, 56.0),
                          size: Size(1415.3, 1540.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.0, -1.0),
                                end: Alignment(0.0, 1.0),
                                colors: [
                                  const Color(0x00ffffff),
                                  const Color(0xffffffff)
                                ],
                                stops: [0.0, 1.0],
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(941.3, 0.0, 474.0, 532.0),
                          size: Size(1415.3, 1540.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 474.0, 532.0),
                                size: Size(474.0, 532.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Container(
                                  decoration: BoxDecoration(
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(34.8, 29.7, 293.0, 42.3),
                                size: Size(474.0, 532.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 293.0, 42.3),
                                      size: Size(293.0, 42.3),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 293.0, 42.3),
                                            size: Size(293.0, 42.3),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 42.0, 25.0),
                                                  size: Size(293.0, 42.3),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  fixedWidth: true,
                                                  fixedHeight: true,
                                                  child: Text(
                                                    'Tag',
                                                    style: TextStyle(
                                                      fontFamily: 'Ubuntu',
                                                      fontSize: 22,
                                                      color: const Color(
                                                          0xff2b0a3d),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 26.3, 293.0, 16.0),
                                                  size: Size(293.0, 42.3),
                                                  child: Text(
                                                    'Select which document tag\'s content to display',
                                                    style: TextStyle(
                                                      fontFamily: 'Ubuntu',
                                                      fontSize: 14,
                                                      color: const Color(
                                                          0xffafafaf),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                    textAlign: TextAlign.left,
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(432.0, 160.0, 6.0, 344.0),
                                size: Size(474.0, 532.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 6.0, 344.0),
                                      size: Size(6.0, 344.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(236.0),
                                          color: const Color(0x332b0a3d),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 6.0, 93.0),
                                      size: Size(6.0, 344.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(236.0),
                                          color: const Color(0xff2b0a3d),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(35.0, 160.0, 382.0, 45.0),
                                size: Size(474.0, 532.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Head.BG' (shape)
                                    SvgPicture.string(
                                  _svg_vvzmfo,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(345.0, 174.0, 32.0, 16.0),
                                size: Size(474.0, 532.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(186.0, 174.0, 54.0, 16.0),
                                size: Size(474.0, 532.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Content',
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(55.0, 174.0, 79.0, 16.0),
                                size: Size(474.0, 532.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Datas types',
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(34.8, 92.0, 403.2, 48.0),
                                size: Size(474.0, 532.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Dropdown' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 403.2, 48.0),
                                      size: Size(403.2, 48.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'Dropdown' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 403.2, 48.0),
                                            size: Size(403.2, 48.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child:
                                                // Adobe XD layer: 'Inner group' (group)
                                                Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.1, 0.0, 403.2, 48.0),
                                                  size: Size(403.2, 48.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: 'Textfield border' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffffffff),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff666666)),
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      16.0, 15.0, 59.0, 18.0),
                                                  size: Size(403.2, 48.0),
                                                  pinLeft: true,
                                                  fixedWidth: true,
                                                  fixedHeight: true,
                                                  child: Text(
                                                    'IT TERM',
                                                    style: TextStyle(
                                                      fontFamily: 'Ubuntu',
                                                      fontSize: 16,
                                                      color: const Color(
                                                          0xff666666),
                                                      height: 1.625,
                                                    ),
                                                    textHeightBehavior:
                                                        TextHeightBehavior(
                                                            applyHeightToFirstAscent:
                                                                false),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      369.2, 19.8, 18.0, 9.6),
                                                  size: Size(403.2, 48.0),
                                                  child:
                                                      // Adobe XD layer: 'Icon metro-chevron-…' (shape)
                                                      SvgPicture.string(
                                                    _svg_vtyr5n,
                                                    allowDrawingOutsideViewBox:
                                                        true,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.4, 59.0, 1415.3, 143.0),
                    size: Size(1415.7, 1782.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Light 🌕/ Card/ΩEle…' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 1415.3, 143.0),
                          size: Size(1415.3, 143.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Surface' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(287.6, 24.0, 507.0, 87.0),
                          size: Size(1415.3, 143.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 74.0, 507.0, 13.0),
                                size: Size(507.0, 87.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: '✏️ Body 2' (text)
                                    Text(
                                  '15.02.2021 - https://apprenda.com/library/software-on-demand/applications-as-a-service/',
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 12,
                                    color: const Color(0x99000000),
                                    letterSpacing: 0.21599999999999997,
                                    height: 1.4166666666666667,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 45.0, 368.0, 25.0),
                                size: Size(507.0, 87.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: '✏️ Headline 6' (text)
                                    Text(
                                  'Application as a service - Apprenda',
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 22,
                                    color: const Color(0xff0070ad),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 421.0, 45.0),
                                size: Size(507.0, 87.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 421.0, 45.0),
                                      size: Size(421.0, 45.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Text(
                                        'Document Preview',
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 40,
                                          color: const Color(0xff2b0a3d),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(40.1, 38.3, 170.6, 29.0),
                          size: Size(1415.3, 143.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Airbus_Logo_2017' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 170.6, 29.0),
                                size: Size(170.6, 29.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_w0t7x3,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(250.5, 23.7, 1.0, 87.0),
                          size: Size(1415.3, 143.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_jvu63x,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(512.4, 84.1),
            child:
                // Adobe XD layer: 'loupe' (group)
                SizedBox(
              width: 17.0,
              height: 17.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 17.2, 17.2),
                    size: Size(17.2, 17.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 17.2, 17.2),
                          size: Size(17.2, 17.2),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_w81u7,
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
        ],
      ),
    );
  }
}

const String _svg_3fumam =
    '<svg viewBox="401.7 20.0 12.3 6.6" ><path transform="translate(396.93, 9.34)" d="M 16.22002410888672 10.79927158355713 C 16.41513061523438 10.60701847076416 16.72861862182617 10.60701847076416 16.92230224609375 10.79927158355713 C 17.11598205566406 10.99152278900146 17.11669540405273 11.30212211608887 16.92230224609375 11.49437522888184 L 11.2495756149292 17.11114120483398 C 11.0558967590332 17.30339050292969 10.74242305755615 17.30339050292969 10.54729843139648 17.11114120483398 L 4.874575614929199 11.49437522888184 C 4.781630516052246 11.40260696411133 4.729314804077148 11.27743625640869 4.729314804077148 11.14682102203369 C 4.729314804077148 11.01620864868164 4.781630516052246 10.89103603363037 4.874575614929199 10.7992696762085 C 5.068971633911133 10.60701847076416 5.383172035217285 10.60701847076416 5.576853275299072 10.79927158355713 L 10.89879322052002 15.92178726196289 L 16.22002410888672 10.79927158355713 Z" fill="#666666" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_64dnu1 =
    '<svg viewBox="355.7 10.2 7.6 7.6" ><path transform="translate(347.69, 2.19)" d="M 14.28190040588379 8 L 11.81299018859863 10.46891212463379 L 9.344078063964844 8 L 8 9.344078063964844 L 10.46891212463379 11.81299018859863 L 8 14.28190040588379 L 9.344078063964844 15.62597846984863 L 11.81299018859863 13.15706634521484 L 14.28190040588379 15.62597846984863 L 15.62597846984863 14.28190040588379 L 13.15706634521484 11.81299018859863 L 15.62597846984863 9.344078063964844 L 14.28190040588379 8 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6jmtch =
    '<svg viewBox="195.8 10.2 7.6 7.6" ><path transform="translate(187.75, 2.19)" d="M 14.28190040588379 8 L 11.81299018859863 10.46891212463379 L 9.344078063964844 8 L 8 9.344078063964844 L 10.46891212463379 11.81299018859863 L 8 14.28190040588379 L 9.344078063964844 15.62597846984863 L 11.81299018859863 13.15706634521484 L 14.28190040588379 15.62597846984863 L 15.62597846984863 14.28190040588379 L 13.15706634521484 11.81299018859863 L 15.62597846984863 9.344078063964844 L 14.28190040588379 8 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1dw003 =
    '<svg viewBox="0.0 0.0 5.0 1.0" ><path  d="M 0 0 L 5 0" fill="#95e616" stroke="#2b0a3d" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tc3505 =
    '<svg viewBox="0.0 80.2 5.0 1.0" ><path transform="translate(0.0, 80.19)" d="M 0 0 L 5 0" fill="none" stroke="#707070" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jg52wd =
    '<svg viewBox="0.0 0.0 5.0 1.0" ><path  d="M 0 0 L 5 0" fill="#d6ca17" stroke="#ff9933" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fktrbr =
    '<svg viewBox="0.0 81.9 5.0 1.0" ><path transform="translate(0.0, 81.87)" d="M 0 0 L 5 0" fill="none" stroke="#707070" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cemz6w =
    '<svg viewBox="102.5 130.5 1142.9 1.0" ><path transform="translate(102.5, 130.5)" d="M 0 0 L 1142.88671875 0" fill="none" stroke="#efefef" stroke-width="1.2000000476837158" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bwa3sq =
    '<svg viewBox="890.8 183.0 55.0 55.0" ><path transform="translate(890.83, 183.0)" d="M 27.5 0 C 42.68782806396484 0 55 12.31217098236084 55 27.5 C 55 42.68782806396484 42.68782806396484 55 27.5 55 C 12.31217098236084 55 0 42.68782806396484 0 27.5 C 0 12.31217098236084 12.31217098236084 0 27.5 0 Z" fill="#12abdb" fill-opacity="0.08" stroke="#12abdb" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4wih6e =
    '<svg viewBox="109.4 241.8 1134.1 235.9" ><path transform="translate(107.5, 131.5)" d="M 1.884765625 346.263671875 L 1136.023315429688 110.3408203125" fill="#ffffff" stroke="#ff304d" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hw8cr7 =
    '<svg viewBox="110.6 131.1 849.5 271.0" ><path transform="translate(46.5, 24.5)" d="M 64.06053924560547 377.5947265625 L 913.5224609375 106.5517578125" fill="#ffffff" stroke="#95e616" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sl5pak =
    '<svg viewBox="0.0 81.4 5.0 1.0" ><path transform="translate(0.0, 81.41)" d="M 0 0 L 5 0" fill="#95e616" stroke="#2b0a3d" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wv674w =
    '<svg viewBox="0.0 162.0 5.0 1.0" ><path transform="translate(0.0, 147.34)" d="M 0 14.69189453125 L 2.8125 14.69189453125 L 5 14.69189453125" fill="#ffffff" stroke="#707070" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lve9j7 =
    '<svg viewBox="0.0 0.0 5.0 1.0" ><path  d="M 0 0 L 5 0" fill="#95e616" stroke="#95e616" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1q918b =
    '<svg viewBox="107.8 616.8 1.0 5.1" ><path transform="translate(107.79, 616.85)" d="M 0 0 L 0 5.14892578125" fill="none" stroke="#000000" stroke-width="10" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gxfu27 =
    '<svg viewBox="665.8 616.0 1.0 5.1" ><path transform="translate(665.76, 616.0)" d="M 0 0 L 0 5.14892578125" fill="none" stroke="#000000" stroke-width="10" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c1rztz =
    '<svg viewBox="1228.7 615.8 1.0 5.1" ><path transform="translate(1228.72, 615.85)" d="M 0 0 L 0 5.14892578125" fill="none" stroke="#000000" stroke-width="10" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_boa24i =
    '<svg viewBox="586.1 6.2 21.4 5.3" ><path transform="translate(586.12, 6.21)" d="M 0 0 L 21.37409591674805 0 L 21.37409591674805 5.321332931518555 L 0 5.321332931518555 L 0 0 Z" fill="#95e616" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e2kxzr =
    '<svg viewBox="819.5 6.2 21.4 5.3" ><path transform="translate(819.49, 6.21)" d="M 0 0 L 21.37409591674805 0 L 21.37409591674805 5.3212890625 L 0 5.3212890625 L 0 0 Z" fill="#ff304d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xc7sqr =
    '<svg viewBox="29.0 160.0 352.2 45.0" ><path transform="translate(29.0, 160.0)" d="M 0 0 L 352.1767578125 0 L 352.1767578125 45 L 0 45 L 0 0 Z" fill="#2b0a3d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uthcwc =
    '<svg viewBox="340.8 19.8 16.6 8.9" ><path transform="translate(336.12, 9.15)" d="M 20.1684741973877 10.84881973266602 C 20.43062591552734 10.59050178527832 20.85183715820313 10.59050178527832 21.1120662689209 10.84881973266602 C 21.3723030090332 11.10713195800781 21.37326431274414 11.52445793151855 21.1120662689209 11.78277397155762 L 13.49007415771484 19.32958030700684 C 13.22984504699707 19.58788871765137 12.80865859985352 19.58788871765137 12.54648208618164 19.32958030700684 L 4.924491882324219 11.78277397155762 C 4.799609184265137 11.65947532653809 4.729315757751465 11.49128913879395 4.729315757751465 11.31579399108887 C 4.729315757751465 11.14029884338379 4.799609184265137 10.97211265563965 4.924491882324219 10.84881401062012 C 5.185685157775879 10.59050178527832 5.607851982116699 10.59050178527832 5.868086814880371 10.84881973266602 L 13.01875877380371 17.73153877258301 L 20.1684741973877 10.84881973266602 Z" fill="#666666" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vvzmfo =
    '<svg viewBox="35.0 160.0 382.0 45.0" ><path transform="translate(35.0, 160.0)" d="M 0 0 L 382 0 L 382 45 L 0 45 L 0 0 Z" fill="#2b0a3d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vtyr5n =
    '<svg viewBox="369.2 19.8 18.0 9.6" ><path transform="translate(364.49, 9.15)" d="M 21.51707458496094 10.86574268341064 C 21.80212593078613 10.58486080169678 22.26012992858887 10.58486080169678 22.54308891296387 10.86574268341064 C 22.82605743408203 11.1466178894043 22.82710266113281 11.60039710998535 22.54308891296387 11.88127708435059 L 14.25532150268555 20.0872917175293 C 13.97236156463623 20.36816215515137 13.51438426971436 20.36816215515137 13.22930717468262 20.0872917175293 L 4.941540718078613 11.88127708435059 C 4.805749416351318 11.74720859527588 4.729316234588623 11.5643310546875 4.729316234588623 11.37350654602051 C 4.729316234588623 11.18268203735352 4.805749416351318 10.99980449676514 4.941540718078613 10.86573600769043 C 5.225549221038818 10.58486080169678 5.684591770172119 10.58486080169678 5.967557907104492 10.86574268341064 L 13.74283695220947 18.34966278076172 L 21.51707458496094 10.86574268341064 Z" fill="#666666" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w0t7x3 =
    '<svg viewBox="0.0 0.0 170.6 29.0" ><path transform="translate(108.1, -160.53)" d="M -9.199604034423828 182.9946594238281 L -19.98462867736816 182.9946594238281 L -19.98462867736816 177.5937652587891 L -9.194190979003906 177.5937652587891 C -7.419898986816406 177.6195983886719 -5.987743377685547 178.8042602539063 -5.987743377685547 180.2837829589844 C -5.987743377685547 181.7633056640625 -7.425746917724609 182.9944610595703 -9.199977874755859 182.9944610595703 M -19.9850025177002 167.1596984863281 L -9.385601043701172 167.1596984863281 C -7.936019897460938 167.1752014160156 -6.706798553466797 168.1736145019531 -6.706798553466797 169.482421875 C -6.706798553466797 170.7860412597656 -7.994029998779297 171.8258666992188 -9.449356079101563 171.8103179931641 L -19.98489952087402 171.8103179931641 L -19.9850025177002 167.1596984863281 Z M -3.106376647949219 174.7125549316406 C -1.111778259277344 173.4606170654297 -0.3579826354980469 171.3861999511719 -0.3579826354980469 169.1049957275391 C -0.3579826354980469 164.8113098144531 -4.410987854003906 161.37109375 -9.379867553710938 161.37109375 L -27.37763786315918 161.37109375 L -27.37763786315918 188.7835388183594 L -8.672554016113281 188.7835388183594 L -8.672554016113281 188.7940673828125 C -3.419342041015625 188.7940673828125 0.9527359008789063 185.1780395507813 0.9527359008789063 180.7497253417969 C 0.9527359008789063 177.8630828857422 -0.9954833984375 175.7263793945313 -3.106056213378906 174.7124481201172 M 24.65013885498047 161.3087158203125 L 24.65013885498047 176.7195587158203 C 24.65013885498047 181.4322814941406 21.56545257568359 183.4086303710938 17.77346038818359 183.4086303710938 C 13.97562026977539 183.4086303710938 10.91409683227539 181.4376831054688 10.91409683227539 176.7248840332031 L 10.91409683227539 161.3087158203125 L 3.254344940185547 161.3087158203125 L 3.254344940185547 176.7658996582031 C 3.254344940185547 186.6257019042969 9.7484130859375 189.4970703125 17.77346038818359 189.4970703125 C 25.80391693115234 189.4970703125 32.30394744873047 186.6259918212891 32.30394744873047 176.7658996582031 L 32.30394744873047 161.3087005615234 L 24.65013885498047 161.3087158203125 Z M 51.52529907226563 171.9912414550781 C 45.32671356201172 170.7910766601563 43.23400115966797 170.2582702636719 43.23400115966797 168.5045471191406 C 43.23400115966797 166.9577789306641 45.47791290283203 166.1766662597656 49.020751953125 166.1766662597656 C 52.36638641357422 166.1766662597656 56.40775299072266 167.4492492675781 58.77916717529297 168.7166748046875 L 61.19707489013672 163.1400146484375 C 57.60211944580078 161.8053436279297 53.27647399902344 160.527587890625 47.55953216552734 160.527587890625 C 40.06212615966797 160.527587890625 35.38314819335938 164.4384765625 35.38314819335938 169.2184600830078 C 35.38314819335938 174.0036010742188 39.23900604248047 176.1088714599609 46.88089752197266 177.5525207519531 C 52.80673980712891 178.6699371337891 54.41294097900391 179.3424224853516 54.41294097900391 180.9874877929688 C 54.41294097900391 182.6325378417969 52.03562164306641 183.2378082275391 48.82316589355469 183.2378082275391 C 44.66583251953125 183.2378082275391 40.66500091552734 182.0014343261719 36.89627075195313 180.5581359863281 L 34.61756134033203 185.9947509765625 C 39.12281799316406 187.8570556640625 43.80179595947266 189.3521118164063 49.38021087646484 189.3521118164063 C 58.67485046386719 189.3521118164063 62.46684265136719 185.3894653320313 62.46684265136719 180.7698974609375 C 62.46684265136719 176.6623840332031 59.27781677246094 173.4965972900391 51.52542114257813 171.9911499023438 M -92.57798767089844 161.3709106445313 L -108.0998840332031 188.7780609130859 L -98.88047790527344 188.7828826904297 L -96.56117248535156 184.3753509521484 L -85.97367858886719 184.3753509521484 L -89.26708984375 178.3694763183594 L -93.44764709472656 178.3694763183594 L -89.51061248779297 170.8735961914063 L -79.59579467773438 188.7830810546875 L -70.35310363769531 188.7830810546875 L -86.47788238525391 161.37109375 L -92.57798767089844 161.3709106445313 Z M -30.21327209472656 170.4861755371094 C -30.21327209472656 165.4942321777344 -34.05175399780273 161.4433135986328 -41.94318389892578 161.4433135986328 L -57.88287734985352 161.4433135986328 L -57.88287734985352 188.8557739257813 L -50.49587249755859 188.8509521484375 L -50.49587249755859 167.2328948974609 L -41.43339920043945 167.2328948974609 C -38.75459671020508 167.2328948974609 -37.64134979248047 168.71240234375 -37.64134979248047 170.4712524414063 C -37.64134979248047 172.2353057861328 -38.81260681152344 173.6475830078125 -41.49141311645508 173.6475830078125 L -47.82908248901367 173.6475830078125 L -38.23896789550781 188.8512878417969 L -30.65497589111328 188.8512878417969 C -30.65497589111328 188.8512878417969 -37.21885681152344 178.9137573242188 -37.18367767333984 178.908447265625 C -32.44647216796875 177.5942840576172 -30.21392059326172 174.39208984375 -30.21392059326172 170.4865112304688 M -68.7724609375 188.7943115234375 L -61.13056182861328 188.7943115234375 L -61.13056182861328 161.3866729736328 L -68.7724609375 161.3866729736328 L -68.7724609375 188.7943115234375 Z" fill="#00205b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jvu63x =
    '<svg viewBox="250.5 23.7 1.0 87.0" ><path transform="translate(250.5, 23.72)" d="M 0 0 L 0 87" fill="none" stroke="#afafaf" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_w81u7 =
    '<svg viewBox="0.0 0.0 17.2 17.2" ><path transform="translate(0.0, 0.0)" d="M 16.97779083251953 15.96815490722656 L 12.09005641937256 11.08042144775391 C 13.03681945800781 9.910957336425781 13.6068639755249 8.424931526184082 13.6068639755249 6.806439399719238 C 13.6068639755249 3.05523943901062 10.55461597442627 0.00299072265625 6.803414821624756 0.00299072265625 C 3.052213907241821 0.00299072265625 0 3.055206060409546 0 6.806406497955322 C 0 10.55760955810547 3.052248477935791 13.60985660552979 6.803449630737305 13.60985660552979 C 8.421939849853516 13.60985660552979 9.907965660095215 13.0398120880127 11.07743072509766 12.09304904937744 L 15.965163230896 16.98078155517578 C 16.10481262207031 17.12043190002441 16.28813743591309 17.19062423706055 16.47149467468262 17.19062423706055 C 16.65485191345215 17.19062423706055 16.83817481994629 17.12042999267578 16.97782516479492 16.98078155517578 C 17.25782775878906 16.70077705383301 17.25782775878906 16.2481575012207 16.97779083251953 15.96815490722656 Z M 6.803449630737305 12.1775426864624 C 3.841436386108398 12.1775426864624 1.432314276695251 9.768420219421387 1.432314276695251 6.806406497955322 C 1.432314276695251 3.844394445419312 3.841436386108398 1.435271620750427 6.803449630737305 1.435271620750427 C 9.765462875366211 1.435271620750427 12.17458534240723 3.844393968582153 12.17458534240723 6.806406497955322 C 12.17458534240723 9.768420219421387 9.765429496765137 12.1775426864624 6.803449630737305 12.1775426864624 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_92acwb =
    '<svg viewBox="0.0 0.0 1920.0 104.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path  d="M 0 0 L 1920 0 L 1920 104 L 0 104 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_jen8 =
    '<svg viewBox="118.3 0.0 54.3 50.2" ><path transform="translate(-13.56, 9.49)" d="M 174.0828704833984 31.81494140625 C 180.8665008544922 31.81494140625 186.1052703857422 26.28685188293457 186.172607421875 19.73248291015625 C 185.7013092041016 16.87017822265625 184.6987152099609 11.57500267028809 177.2690582275391 11.57500267028809 C 169.1461639404297 11.57500267028809 166.4512329101563 22.92960357666016 159.8368225097656 30.24822807312012 C 159.300048828125 34.41158294677734 155.3641662597656 38.13639831542969 150.4420013427734 38.76053619384766 C 151.6502532958984 40.02337646484375 154.3287963867188 40.70210266113281 157.5277404785156 40.70210266113281 C 163.3869781494141 40.70210266113281 170.4799499511719 38.93886566162109 174.1902465820313 35.27590942382813 C 169.2407531738281 35.339599609375 166.0564117431641 32.15885925292969 165.7415924072266 27.74984931945801 C 168.1562652587891 30.67584419250488 170.8857421875 31.81494140625 174.0828399658203 31.81494140625" fill="#12abdb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.0, 0.0)" d="M 172.6012573242188 28.73687553405762 C 172.4539184570313 21.11801147460938 168.8273010253906 14.68919658660889 163.2391662597656 9.55778980255127 C 158.9957885742188 5.681941032409668 153.9535522460938 2.73957085609436 148.6674499511719 0.5232394933700562 C 148.2421875 0.3435300290584564 147.8144836425781 0.1694361120462418 147.3845825195313 0.0009994508000090718 L 147.3827819824219 0.001000643940642476 C 140.8738708496094 7.798190116882324 118.335693359375 13.61742305755615 118.335693359375 29.96513366699219 C 118.335693359375 36.35574340820313 122.371711730957 42.33146286010742 128.2983093261719 44.72975921630859 C 131.7337799072266 46.02898406982422 135.1711273193359 46.09995651245117 138.6102294921875 44.94448089599609 C 141.667236328125 43.94003295898438 144.1819763183594 42.04396057128906 146.2727508544922 39.73300552368164 C 152.8926696777344 32.41438293457031 155.585693359375 21.06341743469238 163.706787109375 21.06341743469238 C 171.1382141113281 21.06341743469238 172.1390380859375 26.3531322479248 172.6139831542969 29.21725845336914 C 172.6139831542969 29.20998001098633 172.6103210449219 29.00981903076172 172.6012268066406 28.73687171936035" fill="#0070ad" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_17s4n2 =
    '<svg viewBox="9465.5 14023.0 34.0 1.0" ><path transform="translate(9465.5, 14023.0)" d="M 0 0 L 34 0" fill="none" stroke="#2b0a3d" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_zaxf60 =
    '<svg viewBox="9465.5 14037.0 34.0 1.0" ><path transform="translate(9465.5, 14037.0)" d="M 0 0 L 34 0" fill="none" stroke="#2b0a3d" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_mlwc1k =
    '<svg viewBox="9465.5 14051.0 34.0 1.0" ><path transform="translate(9465.5, 14051.0)" d="M 0 0 L 34 0" fill="none" stroke="#2b0a3d" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
