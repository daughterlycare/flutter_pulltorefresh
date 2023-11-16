/*
 * Author: Jpeng
 * Email: peng8350@gmail.com
 * Time:  2019-06-26 13:17
*/
import 'package:flutter/widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// enable header link other header place outside the viewport
class LinkHeader extends RefreshIndicator {
  /// the key that widget outside viewport indicator
  final Key linkKey;

  const LinkHeader(
      {super.key,
      required this.linkKey,
      super.height = 0.0,
      super.refreshStyle = null,
      super.completeDuration = const Duration(milliseconds: 200)});

  @override
  State<StatefulWidget> createState() {
    return _LinkHeaderState();
  }
}

class _LinkHeaderState extends RefreshIndicatorState<LinkHeader> {
  @override
  void resetValue() {
    // TODO: implement resetValue
    ((widget.linkKey as GlobalKey).currentState as RefreshProcessor)
        .resetValue();
  }

  @override
  Future<void> endRefresh() {
    return ((widget.linkKey as GlobalKey).currentState as RefreshProcessor)
        .endRefresh();
  }

  @override
  void onModeChange(RefreshStatus? mode) {
    ((widget.linkKey as GlobalKey).currentState as RefreshProcessor)
        .onModeChange(mode);
  }

  @override
  void onOffsetChange(double offset) {
    ((widget.linkKey as GlobalKey).currentState as RefreshProcessor)
        .onOffsetChange(offset);
  }

  @override
  Future<void> readyToRefresh() {
    return ((widget.linkKey as GlobalKey).currentState as RefreshProcessor)
        .readyToRefresh();
  }

  @override
  Widget buildContent(BuildContext context, RefreshStatus? mode) {
    return Container();
  }
}

/// enable footer link other footer place outside the viewport
class LinkFooter extends LoadIndicator {
  /// the key that widget outside viewport indicator
  final Key linkKey;

  const LinkFooter(
      {super.key, required this.linkKey, super.height = 0.0, super.loadStyle});

  @override
  State<StatefulWidget> createState() {
    return _LinkFooterState();
  }
}

class _LinkFooterState extends LoadIndicatorState<LinkFooter> {
  @override
  void onModeChange(LoadStatus? mode) {
    ((widget.linkKey as GlobalKey).currentState as LoadingProcessor)
        .onModeChange(mode);
  }

  @override
  void onOffsetChange(double offset) {
    ((widget.linkKey as GlobalKey).currentState as LoadingProcessor)
        .onOffsetChange(offset);
  }

  @override
  Widget buildContent(BuildContext context, LoadStatus? mode) {
    return Container();
  }

  @override
  Future readyToLoad() {
    return Future.value(true);
  }

  @override
  void resetValue() {}
}
