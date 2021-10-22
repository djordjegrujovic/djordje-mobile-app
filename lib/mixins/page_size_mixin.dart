import 'package:flutter/material.dart';

enum PageSize { large, medium, small }

mixin PageSizeMixin on Widget {
  final mediumResolutionThreshold = 1440.0;
  final smallResolutionThreshold = 1280.0;

  PageSize getPageSize(BuildContext context) {
    assert(mediumResolutionThreshold >= smallResolutionThreshold);
    final width = MediaQuery.of(context).size.width;
    PageSize pageSize;
    if (width < smallResolutionThreshold) {
      pageSize = PageSize.small;
    } else if (width < mediumResolutionThreshold) {
      pageSize = PageSize.medium;
    } else {
      pageSize = PageSize.large;
    }
    return pageSize;
  }
}
