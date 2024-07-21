import 'package:flutter/material.dart';
import 'package:x_common/global.dart';

/// 根据宽度约束布局最大宽度
double adaptesPageWidth(BoxConstraints constraints) {
  double maxWidth = constraints.maxWidth;
  if (constraints.maxWidth > kExtraLargeWidthBreakpoint) {
    maxWidth = kExtraLargeWidthBreakpoint;
  } else if (constraints.maxWidth > kLargeWidthBreakpoint) {
    maxWidth = kLargeWidthBreakpoint;
  } else if (constraints.maxWidth > kMediumWidthBreakpoint) {
    maxWidth = kMediumWidthBreakpoint;
  } else if (constraints.maxWidth > kNarrowWidthThreshold) {
    maxWidth = kNarrowWidthThreshold;
  } else {
    maxWidth = constraints.maxWidth;
  }
  return maxWidth;
}
