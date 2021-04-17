import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

import 'package:emoji_logger/emoji_logger.dart';

void main() {
  test('EmojiLogge d should print', () {
  runZoned((){
    EmojiLogger.d('test');
  }, zoneSpecification: ZoneSpecification(
    print: (Zone self, ZoneDelegate parent, Zone zone, String line){
      expect(line, 'test');
    }
  ));
  });
}
