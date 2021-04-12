import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDSidemenu extends StatelessWidget {
  XDSidemenu({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(1373.0, 163.0),
            child: SizedBox(
              width: 547.0,
              height: 872.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(91.0, 0.0, 456.0, 872.0),
                    size: Size(547.0, 872.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 100.0, 86.0),
                    size: Size(547.0, 872.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 91.0, 78.0),
                          size: Size(100.0, 86.0),
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(91.0, 0.0, 9.0, 86.0),
                          size: Size(100.0, 86.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(134.5, 27.0, 281.0, 50.0),
                    size: Size(547.0, 872.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 281.0, 34.0),
                          size: Size(281.0, 50.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: '✏️ Headline 6' (text)
                              Text(
                            'Analyse preview',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 30,
                              color: const Color(0xde000000),
                              letterSpacing: 0.22500001430511474,
                              fontWeight: FontWeight.w700,
                              height: 0.8,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 34.0, 254.0, 16.0),
                          size: Size(281.0, 50.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: '✏️ Headline 6' (text)
                              Text(
                            'Full analyse view on the analyse section',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 14,
                              color: const Color(0xffafafaf),
                              letterSpacing: 0.10500000667572021,
                              height: 1.7142857142857142,
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
                    bounds: Rect.fromLTWH(134.5, 97.0, 391.5, 745.0),
                    size: Size(547.0, 872.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(385.5, 0.0, 6.0, 745.0),
                          size: Size(391.5, 745.0),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 6.0, 745.0),
                                size: Size(6.0, 745.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(236.0),
                                    color: const Color(0x332b0a3d),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 6.0, 396.0),
                                size: Size(6.0, 745.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(236.0),
                                    color: const Color(0xff2b0a3d),
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
                    bounds: Rect.fromLTWH(26.5, 27.0, 34.0, 28.5),
                    size: Size(547.0, 872.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Ligne 1' (shape)
                        SvgPicture.string(
                      _svg_kwog9f,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.5, 41.0, 34.0, 1.0),
                    size: Size(547.0, 872.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Ligne 1' (shape)
                        SvgPicture.string(
                      _svg_sy7jgb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.5, 27.5, 34.0, 27.5),
                    size: Size(547.0, 872.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Ligne 1' (shape)
                        SvgPicture.string(
                      _svg_fnzkub,
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

const String _svg_kwog9f =
    '<svg viewBox="9465.5 14023.0 34.0 28.5" ><path transform="translate(9465.5, 14023.0)" d="M 0 0 L 34 28.5" fill="none" stroke="#2b0a3d" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_sy7jgb =
    '<svg viewBox="9465.5 14037.0 34.0 1.0" ><path transform="translate(9465.5, 14037.0)" d="M 0 0 L 34 0" fill="none" fill-opacity="0.0" stroke="#2b0a3d" stroke-width="5" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_fnzkub =
    '<svg viewBox="9465.5 14023.5 34.0 27.5" ><path transform="translate(9465.5, 14023.5)" d="M 0 27.5 L 34 0" fill="none" stroke="#2b0a3d" stroke-width="5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
