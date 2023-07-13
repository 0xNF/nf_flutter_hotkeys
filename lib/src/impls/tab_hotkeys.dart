import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:nf_flutter_hotkeys/src/ihotkey_set.dart';

class TabHotkeys extends IHotkeySet {
  final SingleActivator? closeTab;
  final SingleActivator? newTab;
  final SingleActivator? activateNextTab;
  final SingleActivator? activatePreviousTab;
  final SingleActivator? activateTabFirst;
  final SingleActivator? activateTab2;
  final SingleActivator? activateTab3;
  final SingleActivator? activateTab4;
  final SingleActivator? activateTab5;
  final SingleActivator? activateTab6;
  final SingleActivator? activateTab7;
  final SingleActivator? activateTab8;
  final SingleActivator? activateTab9;
  final SingleActivator? activateTabLast;

  const TabHotkeys({
    this.closeTab,
    this.newTab,
    this.activateNextTab,
    this.activatePreviousTab,
    this.activateTabFirst,
    this.activateTab2,
    this.activateTab3,
    this.activateTab4,
    this.activateTab5,
    this.activateTab6,
    this.activateTab7,
    this.activateTab8,
    this.activateTab9,
    this.activateTabLast,
  }) : super(name: "Tabs");

  factory TabHotkeys.webBrowser() {
    return const TabHotkeys(
      closeTab: SingleActivator(LogicalKeyboardKey.keyW, control: true),
      newTab: SingleActivator(LogicalKeyboardKey.keyT, control: true),
      activateNextTab: SingleActivator(LogicalKeyboardKey.tab, control: true),
      activatePreviousTab: SingleActivator(LogicalKeyboardKey.tab, control: true, shift: true),
      activateTabFirst: SingleActivator(LogicalKeyboardKey.digit1, control: true),
      activateTab2: SingleActivator(LogicalKeyboardKey.digit2, control: true),
      activateTab3: SingleActivator(LogicalKeyboardKey.digit3, control: true),
      activateTab4: SingleActivator(LogicalKeyboardKey.digit4, control: true),
      activateTab5: SingleActivator(LogicalKeyboardKey.digit5, control: true),
      activateTab6: SingleActivator(LogicalKeyboardKey.digit6, control: true),
      activateTab7: SingleActivator(LogicalKeyboardKey.digit7, control: true),
      activateTab8: SingleActivator(LogicalKeyboardKey.digit8, control: true),
      activateTab9: SingleActivator(LogicalKeyboardKey.digit9, control: true),
      activateTabLast: SingleActivator(LogicalKeyboardKey.digit0, control: true),
    );
  }
}
