import 'dart:ui';

class TagsList {
  String tag;
  Color tagColor;

  TagsList(this.tag, this.tagColor);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TagsList &&
              runtimeType == other.runtimeType &&
              tag == other.tag &&
              tagColor == other.tagColor;

  @override
  int get hashCode =>
      tag.hashCode ^
      tagColor.hashCode;



}