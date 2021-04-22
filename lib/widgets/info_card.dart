import 'package:flutter/material.dart';
import 'package:marketpulse_ui/model/statistics_info.dart';
import 'package:marketpulse_ui/provider/ChangeThemeProvider.dart';
import 'package:provider/provider.dart';

class InfoCard extends StatelessWidget {
  final StatisticsInfo statisticsInfo;

  const InfoCard({Key key, this.statisticsInfo}) : super(key: key);

  IconData _getIcon() {
    switch (statisticsInfo.type) {
      case InfoType.itterm:
        return Icons.computer;
      case InfoType.software:
        return Icons.computer_outlined;
      case InfoType.organisation:
        return Icons.people;
      case InfoType.location:
        return Icons.place;
      case InfoType.cybersecurity:
        return Icons.network_cell;
      default:
        return Icons.remove;
    }
  }

  Color _getIconColor() {
    switch (statisticsInfo.type) {
      case InfoType.itterm:
        return Colors.blue;
      case InfoType.software:
        return Colors.pink;
      case InfoType.organisation:
        return Colors.yellow[800];
      case InfoType.location:
        return Colors.green;
      case InfoType.cybersecurity:
        return Colors.red;
      default:
        return Colors.white;
    }
  }

  Color _getIconContainerColor() {
    switch (statisticsInfo.type) {
      case InfoType.itterm:
        return Colors.blue[50];
      case InfoType.software:
        return Colors.pink[50];
      case InfoType.organisation:
        return Colors.yellow[100];
      case InfoType.location:
        return Colors.green[50];
      case InfoType.cybersecurity:
        return Colors.red[50];
      default:
        return Colors.white;
    }
  }

  Widget _titleIconRow() => Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Total ${statisticsInfo.typeString}"),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: _getIconContainerColor()),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                _getIcon(),
                size: 14.0,
                color: _getIconColor(),
              ),
            ),
          )
        ],
      ));

  final TextStyle _smallBold = const TextStyle(fontWeight: FontWeight.bold);
  final TextStyle _whiteFont =
      const TextStyle(color: Colors.white, fontSize: 16);

  Widget _percentChangeRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Weeks: "),
              Text(
                "${statisticsInfo.weekChange} %",
                style: _smallBold,
              ),
              Icon(
                Icons.arrow_drop_up,
                color: Colors.green,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text("Days: "),
              Text(
                "${statisticsInfo.dayChange} %",
                style: _smallBold,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.red,
              )
            ],
          ),
        ],
      );

  Widget _total() => Text(
        statisticsInfo.totalCount,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
      );

  Widget _totalDailyContainer() => Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          color: _getIconColor(),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Daily ${statisticsInfo.typeString}",
              style: _whiteFont,
            ),
            Text(
              statisticsInfo.dayCount,
              style: _whiteFont,
            )
          ],
        ),
      );

  Widget _paddingContainer(Widget child) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: 12), child: child);

  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeThemeProvider>(
      builder: (context,change,_){
        return Container(
          width: 340,
          decoration: BoxDecoration(
            color: change.colorValue,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _paddingContainer(_titleIconRow()),
              _paddingContainer(_total()),
              _paddingContainer(_percentChangeRow()),
              _totalDailyContainer()
            ],
          ),
        );
      },
    );
  }
}
