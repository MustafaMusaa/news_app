import 'package:flutter/cupertino.dart';

import '../../../app_utls/app_styles.dart';
import '../../../model/SourceResponse.dart';

class SourceNameWidget extends StatefulWidget {
  bool isSelected;
  Source source;
  SourceNameWidget({
    required this.source,
    required this.isSelected
});

  @override
  State<SourceNameWidget> createState() => _SourceNameWidgetState();
}

class _SourceNameWidgetState extends State<SourceNameWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.source.name?? '',
      style:widget.isSelected ?
      AppStyle.black16medium:
      AppStyle.blue16medium,
    );;
  }
}
