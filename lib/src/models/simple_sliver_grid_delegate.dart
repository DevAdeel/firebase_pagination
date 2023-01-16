import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SimpleGridDelegate extends SliverSimpleGridDelegate {
  /// Creates a delegate that makes grid layouts with a fixed number of tiles in
  /// the cross axis.
  ///
  /// The [crossAxisCount] argument must be greater than zero.
  const SimpleGridDelegate({
    required this.crossAxisCount,
  }) : assert(crossAxisCount > 0);

  /// {@template fsgv.global.crossAxisCount}
  /// The number of children in the cross axis.
  /// {@endtemplate}
  final int crossAxisCount;

  @override
  int getCrossAxisCount(
    SliverConstraints constraints,
    double crossAxisSpacing,
  ) {
    return crossAxisCount;
  }

  @override
  bool shouldRelayout(
    SliverSimpleGridDelegateWithFixedCrossAxisCount oldDelegate,
  ) {
    return oldDelegate.crossAxisCount != crossAxisCount;
  }
}
