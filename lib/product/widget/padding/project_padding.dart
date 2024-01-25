// ignore_for_file: public_member_api_docs, unused_element

import 'package:flutter/material.dart';

// Project general general paddings items
final class ProjectPadding extends EdgeInsets {
  const ProjectPadding._() : super.all(0);

  /// ALL
  const ProjectPadding.allNormal() : super.all(20);
  const ProjectPadding.allMedium() : super.all(16);
  const ProjectPadding.allSmall() : super.all(8);
  const ProjectPadding.allLarge() : super.all(32);

  /// /// Symmetric
  /// Only,left,right,top,bottom
}
