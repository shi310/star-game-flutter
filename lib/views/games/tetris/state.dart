import 'dart:math';

import 'package:get/get.dart';

class TertisState {
  final gameData = GameData.get().obs;

  final _gameTime = 0.obs;
  set gameTime(int value) => _gameTime.value = value;
  int get gameTime => _gameTime.value;

  final _paushTime = 0.obs;
  set paushTime(int value) => _paushTime.value = value;
  int get paushTime => _paushTime.value;

  final _score = 0.obs;
  set score(int value) => _score.value = value;
  int get score => _score.value;

  final _grade = 1.obs;
  set grade(int value) => _grade.value = value;
  int get grade => _grade.value;

  final _isDisable = false.obs;
  set isDisable(bool value) => _isDisable.value = value;
  bool get isDisable => _isDisable.value;

  final _isPause = true.obs;
  set isPause(bool value) => _isPause.value = value;
  bool get isPause => _isPause.value;

  final _isStart = true.obs;
  set isStart(bool value) => _isStart.value = value;
  bool get isStart => _isStart.value;

  final _isGameOver = false.obs;
  set isGameOver(bool value) => _isGameOver.value = value;
  bool get isGameOver => _isGameOver.value;
}

class Origin {
  Origin({
    required this.x,
    required this.y,
  });
  int x;
  int y;
}

class BoxData {
  BoxData({
    required this.data,
    required this.origin,
  });
  List<List<int>> data;
  Origin origin;
}

class Next {
  Next({
    required this.data,
    required this.angle,
    required this.child,
  });
  List<List<List<int>>> data;
  int angle;
  List<List<int>> child;
}

class Current {
  Current({
    required this.data,
    required this.angle,
    required this.boxData,
  });
  List<List<List<int>>> data;
  int angle;
  BoxData boxData;

  BoxData getDownData() {
    return BoxData(
      data: boxData.data,
      origin: Origin(x: boxData.origin.x, y: boxData.origin.y + 1),
    );
  }

  void down() {
    boxData.origin.y++;
  }

  BoxData getLeftData() {
    return BoxData(
      data: boxData.data,
      origin: Origin(x: boxData.origin.x - 1, y: boxData.origin.y),
    );
  }

  void left() {
    boxData.origin.x--;
  }

  BoxData getRightData() {
    return BoxData(
      data: boxData.data,
      origin: Origin(x: boxData.origin.x + 1, y: boxData.origin.y),
    );
  }

  void right() {
    boxData.origin.x++;
  }

  BoxData getRotateData() {
    var angleTemp = angle;
    angleTemp++;
    return BoxData(
      data: data[angleTemp % 4],
      origin: boxData.origin,
    );
  }

  void rotate() {
    angle++;
    boxData = BoxData(data: data[angle % 4], origin: boxData.origin);
  }
}

class GameData {
  GameData({
    required this.current,
    required this.data,
    required this.next,
  });
  Current current;
  List<List<int>> data;
  Next next;

  Next getNext() {
    var nextData = copyBoxData(boxList[Random().nextInt(7)]);
    var nextAngle = Random().nextInt(4);
    return Next(data: nextData, angle: nextAngle, child: nextData[nextAngle]);
  }

  factory GameData.get() {
    var currentData = copyBoxData(boxList[Random().nextInt(7)]);
    var currentAngle = Random().nextInt(4);

    var nextData = copyBoxData(boxList[Random().nextInt(7)]);
    var nextAngle = Random().nextInt(4);

    return GameData(
      data: [
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      ],
      current: Current(
        data: currentData,
        angle: currentAngle,
        boxData: BoxData(
          data: currentData[currentAngle],
          origin: Origin(x: 3, y: 0),
        ),
      ),
      next: Next(data: nextData, angle: nextAngle, child: nextData[nextAngle]),
    );
  }
}

List<List<List<int>>> copyBoxData(List<List<List<int>>> list) {
  List<List<List<int>>> copyList = [];
  for (var i in list) {
    List<List<int>> listI = [];
    for (var j in i) {
      List<int> listJ = [];
      for (var k in j) {
        listJ.add(k);
      }
      listI.add(listJ);
    }
    copyList.add(listI);
  }
  return copyList;
}

List<List<List<List<int>>>> boxList = [
  [
    [
      [0, 1, 1, 0],
      [0, 1, 1, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 1, 1, 0],
      [0, 1, 1, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 1, 1, 0],
      [0, 1, 1, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 1, 1, 0],
      [0, 1, 1, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
  ],
  [
    [
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 0, 0],
    ],
    [
      [0, 0, 0, 0],
      [1, 1, 1, 1],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 0, 0],
    ],
    [
      [0, 0, 0, 0],
      [1, 1, 1, 1],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
  ],
  [
    [
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 0, 0, 0],
    ],
    [
      [1, 1, 1, 0],
      [1, 0, 0, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [1, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 0, 1, 0],
      [1, 1, 1, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
  ],
  [
    [
      [0, 1, 1, 0],
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [1, 1, 1, 0],
      [0, 0, 1, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [1, 1, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [1, 0, 0, 0],
      [1, 1, 1, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
  ],
  [
    [
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [1, 1, 1, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 1, 0, 0],
      [1, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 1, 0, 0],
      [1, 1, 1, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
  ],
  [
    [
      [0, 0, 1, 0],
      [0, 1, 1, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [1, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 0, 1, 0],
      [0, 1, 1, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [1, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
  ],
  [
    [
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 0, 1, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 1, 1, 0],
      [1, 1, 0, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 0, 1, 0],
      [0, 0, 0, 0],
    ],
    [
      [0, 1, 1, 0],
      [1, 1, 0, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0],
    ],
  ],
];
