/*
    Author: Jpeng
    Email: peng8350@gmail.com
    createTime: 2019-07-20 20:58
 */

import 'package:flutter/material.dart'
    hide RefreshIndicatorState, RefreshIndicator;
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TestHeader extends RefreshIndicator {
  const TestHeader();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TestHeaderState();
  }
}

class _TestHeaderState extends RefreshIndicatorState<TestHeader> {
  @override
  Widget buildContent(BuildContext context, RefreshStatus? mode) {
    // TODO: implement buildContent
    return Text(mode == RefreshStatus.idle
        ? "idle"
        : mode == RefreshStatus.refreshing
            ? "refreshing"
            : mode == RefreshStatus.canRefresh
                ? "canRefresh"
                : mode == RefreshStatus.canTwoLevel
                    ? "canTwoLevel"
                    : mode == RefreshStatus.completed
                        ? "completed"
                        : mode == RefreshStatus.failed
                            ? "failed"
                            : mode == RefreshStatus.twoLevelClosing
                                ? "twoLevelClosing"
                                : mode == RefreshStatus.twoLevelOpening
                                    ? "twoLevelOpening"
                                    : "twoLeveling");
  }

  @override
  void onModeChange(RefreshStatus? mode) {
    // TODO: implement onModeChange
  }

  @override
  void onOffsetChange(double offset) {
    // TODO: implement onOffsetChange
  }
}

class TestFooter extends LoadIndicator {
  const TestFooter();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TestFooterState();
  }
}

class _TestFooterState extends LoadIndicatorState<TestFooter> {
  @override
  Widget buildContent(BuildContext context, LoadStatus? mode) {
    // TODO: implement buildContent
    return Text(mode == LoadStatus.failed
        ? "failed"
        : mode == LoadStatus.loading
            ? "loading"
            : mode == LoadStatus.idle
                ? "idle"
                : "noData");
  }

  @override
  void onModeChange(LoadStatus? mode) {
    // TODO: implement onModeChange
  }

  @override
  void onOffsetChange(double offset) {
    // TODO: implement onOffsetChange
  }

  @override
  Future readyToLoad() {
    // TODO: implement readyToLoad
    throw UnimplementedError();
  }

  @override
  void resetValue() {
    // TODO: implement resetValue
  }
}
