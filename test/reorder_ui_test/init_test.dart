import 'dart:core';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/draggable_container.dart';
import '../utils.dart';


/// The items position
///
/// [0] [1] [2]
/// [3] <4> [5]
/// [6] [7] [8]
///
/// The fourth item is fixed

void main() {
  testWidgets('init', (WidgetTester tester) async {
    DraggableContainerState state = await createContainer(tester);
    await tester.pump();
    expect(state.layers.length, 9);
    expect(state.layers[1].position, Offset(100, 0));
    expect(state.layers[3].position, Offset(0, 100));
    expect(state.layers[4].item.fixed, true);
    expect(state.layers[8].position, Offset(200, 200));
  });
}
