class StatisticsInfo {
  final InfoType type;
  final String totalCount;
  final String weekChange;
  final String dayChange;
  final String dayCount;

  String get typeString {
    switch (type) {
      case InfoType.itterm:
        return "IT Terms";
      case InfoType.software:
        return "Softwares";
      case InfoType.organisation:
        return "Organisations";
      case InfoType.location:
        return "Locations";
      case InfoType.cybersecurity:
        return "Cybersecurity";
      default:
        return "";
    }
  }

  StatisticsInfo(this.type, this.totalCount, this.weekChange, this.dayChange,
      this.dayCount);
}

enum InfoType { itterm, software, organisation, location, cybersecurity}
