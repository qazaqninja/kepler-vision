import 'package:flutter/material.dart';
import 'package:kepler_vision/src/core/extensions/build_context_extension.dart';

extension StringExtenstion on String {
  String getRoleText(BuildContext context) {
    switch (this) {
      case 'parent':
        return context.loc.parent;
      case 'teacher':
        return context.loc.teacher;
      case 'psychologist':
        return context.loc.psychologist;
      default:
        return '';
    }
  }
}
