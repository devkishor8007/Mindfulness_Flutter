import 'package:flutter/material.dart';

push(BuildContext context, Widget widget) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => widget),
  );
}

pop(BuildContext context) {
  Navigator.pop(context);
}
