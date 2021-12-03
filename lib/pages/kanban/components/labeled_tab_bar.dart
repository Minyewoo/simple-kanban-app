import 'package:flutter/material.dart';

class LabeledTabBar extends TabBar {
  LabeledTabBar({Key? key, List<String> labels = const []})
      : super(
            key: key,
            tabs: labels
                .map(
                  (label) => Tab(
                    child: Text(
                      label,
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
                .toList());
}
