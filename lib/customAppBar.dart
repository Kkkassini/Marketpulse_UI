import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String logoCapgemini =
    '<svg viewBox="118.3 0.0 54.3 50.2" ><path transform="translate(-13.56, 9.49)" d="M 174.0828704833984 31.81494140625 C 180.8665008544922 31.81494140625 186.1052703857422 26.28685188293457 186.172607421875 19.73248291015625 C 185.7013092041016 16.87017822265625 184.6987152099609 11.57500267028809 177.2690582275391 11.57500267028809 C 169.1461639404297 11.57500267028809 166.4512329101563 22.92960357666016 159.8368225097656 30.24822807312012 C 159.300048828125 34.41158294677734 155.3641662597656 38.13639831542969 150.4420013427734 38.76053619384766 C 151.6502532958984 40.02337646484375 154.3287963867188 40.70210266113281 157.5277404785156 40.70210266113281 C 163.3869781494141 40.70210266113281 170.4799499511719 38.93886566162109 174.1902465820313 35.27590942382813 C 169.2407531738281 35.339599609375 166.0564117431641 32.15885925292969 165.7415924072266 27.74984931945801 C 168.1562652587891 30.67584419250488 170.8857421875 31.81494140625 174.0828399658203 31.81494140625" fill="#12abdb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.0, 0.0)" d="M 172.6012573242188 28.73687553405762 C 172.4539184570313 21.11801147460938 168.8273010253906 14.68919658660889 163.2391662597656 9.55778980255127 C 158.9957885742188 5.681941032409668 153.9535522460938 2.73957085609436 148.6674499511719 0.5232394933700562 C 148.2421875 0.3435300290584564 147.8144836425781 0.1694361120462418 147.3845825195313 0.0009994508000090718 L 147.3827819824219 0.001000643940642476 C 140.8738708496094 7.798190116882324 118.335693359375 13.61742305755615 118.335693359375 29.96513366699219 C 118.335693359375 36.35574340820313 122.371711730957 42.33146286010742 128.2983093261719 44.72975921630859 C 131.7337799072266 46.02898406982422 135.1711273193359 46.09995651245117 138.6102294921875 44.94448089599609 C 141.667236328125 43.94003295898438 144.1819763183594 42.04396057128906 146.2727508544922 39.73300552368164 C 152.8926696777344 32.41438293457031 155.585693359375 21.06341743469238 163.706787109375 21.06341743469238 C 171.1382141113281 21.06341743469238 172.1390380859375 26.3531322479248 172.6139831542969 29.21725845336914 C 172.6139831542969 29.20998001098633 172.6103210449219 29.00981903076172 172.6012268066406 28.73687171936035" fill="#0070ad" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String name;
  final String job;
  final String profilePicture;

  CustomAppBar({
    this.name = "Alice RICHARD",
    this.job = "Capgemini Sales",
    this.profilePicture = "null",
    Key key,})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title:
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
            SvgPicture.string(
            logoCapgemini,
            allowDrawingOutsideViewBox: true,
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Market\nPulse',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 15,
                color: const Color(0xff0070ad),
                fontWeight: FontWeight.w700,
                height: 1.08,
              )
            ),
          )
            ],
          ),
        ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.notifications,
                color: const Color(0xff0070ad),
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Column(
                children: [
                  Text(name,
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      )
                  ),
                  Text(job,
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      )
                  ),
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
/*import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  final String name;
  final String job;
  final String profilePicture;

  const Header({
    Key key,
    this.name ="Alice RICHARD",
    this.job = "Capgemini Sales",
    this.profilePicture,
  }): super (key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding
    )
    throw UnimplementedError();
  }
}*/