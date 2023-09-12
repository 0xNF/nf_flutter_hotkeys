import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:keymap/keymap.dart';
import 'package:nf_flutter_hotkeys/src/impls/tab_hotkeys.dart';
import 'package:nf_flutter_undo/nf_flutter_undo.dart';

class UserHotkeys {
  TabHotkeys tabHotkeys = TabHotkeys.webBrowser();

  static KeyAction keyActionFromSingleActivator(SingleActivator activator, ICommand command) {
    final ka1 = KeyAction(
      activator.trigger,
      command.commandName,
      () {
        if (command.canExecute()) {
          command.execute();
        }
      },
      isControlPressed: activator.control,
      isAltPressed: activator.alt,
      isShiftPressed: activator.shift,
      isMetaPressed: activator.meta,
    );
    return ka1;
  }

  static String commandStringFromHotkey(SingleActivator? hotkey) {
    SingleActivator? key = hotkey;
    if (key == null) {
      return "unbound";
    }
    List<String> buf = [];
    if (key.control) {
      buf.add("ctrl");
    }
    if (key.alt) {
      if (Platform.isMacOS) {
        buf.add("⌥");
      } else {
        buf.add("alt");
      }
    }
    if (key.shift) {
      buf.add("shift");
    }
    if (key.meta) {
      if (Platform.isWindows) {
        buf.add("Win");
      } else if (Platform.isMacOS) {
        buf.add("⌘");
      } else {
        buf.add("◆");
      }
    }
    buf.add(key.trigger.keyLabel);
    return buf.join("+");
  }
}
