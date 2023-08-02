import 'dart:async';
import 'package:get/get.dart';

import '../../../common/common.dart';
import 'index.dart';

class TertisController extends GetxController {
  final state = TertisState();
  Timer? downTimer;
  Timer? gameTimer;
  Timer? paushTimer;

  Duration downDuration = const Duration(milliseconds: 1000);

  void onStartGame() {
    state.isPause = false;
    state.isDisable = false;
    state.isStart = false;
    if (paushTimer != null) paushTimer!.cancel();
    state.paushTime = 0;
    downTimerStart();
    gameTimerStart();
  }

  // 初始化
  Future<void> init() async {
    state.gameData.value = GameData.get();
    state.gameData.update((val) {});

    state.gameTime = 0;
    state.grade = 1;
    state.score = 0;

    state.isDisable = true;
    state.isPause = true;
    state.isStart = true;
    state.isGameOver = false;

    downDuration = const Duration(milliseconds: 1000);

    setData(state.gameData.value.current.boxData);
    await MyTimer.futureDelayed(milliseconds: 300);
  }

  // 暂停
  Future<void> onPauseGame() async {
    if (state.isDisable) return;
    state.isPause = true;
    state.isDisable = true;
    if (downTimer != null) downTimer!.cancel();
    if (gameTimer != null) gameTimer!.cancel();
    paushTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state.paushTime++;
    });
  }

  // 重置
  void onReset() {
    if (downTimer != null) downTimer!.cancel();
    if (gameTimer != null) gameTimer!.cancel();
    init();
    onStartGame();
  }

  // 开始下落
  void downTimerStart() {
    if (downTimer == null || !downTimer!.isActive) {
      downTimer = Timer.periodic(downDuration, (timer) {
        onDownSlow();
      });
    }
  }

  // 开始游戏计时
  void gameTimerStart() {
    if (gameTimer == null || !gameTimer!.isActive) {
      gameTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        state.gameTime++;
      });
    }
  }

  // 判断是否可以下降
  bool isCanDown() {
    BoxData data = state.gameData.value.current.getDownData();
    return (isValidData(data)) ? true : false;
  }

  // 判断是否可以左移
  bool isCanLeft() {
    BoxData data = state.gameData.value.current.getLeftData();
    return (isValidData(data)) ? true : false;
  }

  // 判断是否可以右移
  bool isCanRight() {
    BoxData data = state.gameData.value.current.getRightData();
    return (isValidData(data)) ? true : false;
  }

  // 判断是否可以旋转
  bool isCanRotate() {
    BoxData data = state.gameData.value.current.getRotateData();
    return (isValidData(data)) ? true : false;
  }

  // 下降
  void down() {
    clearData(state.gameData.value.current.boxData);
    state.gameData.update((val) {
      val!.current.down();
    });
    setData(state.gameData.value.current.boxData);
  }

  // 单步下落
  Future<void> onDownSlow() async {
    if (isCanDown()) {
      down();
    } else {
      await land(state.gameData.value.current.boxData);
    }
  }

  // 左移
  void onLeft() {
    if (state.isDisable) return;
    if (isCanLeft()) {
      clearData(state.gameData.value.current.boxData);
      state.gameData.update((val) {
        val!.current.left();
      });
      setData(state.gameData.value.current.boxData);
    }
  }

  // 右移
  void onRight() {
    if (state.isDisable) return;

    if (isCanRight()) {
      clearData(state.gameData.value.current.boxData);
      state.gameData.update((val) {
        val!.current.right();
      });
      setData(state.gameData.value.current.boxData);
    }
  }

  // 旋转
  void onRotate() {
    if (state.isDisable) return;

    if (isCanRotate()) {
      clearData(state.gameData.value.current.boxData);
      state.gameData.update((val) {
        val!.current.rotate();
      });
      setData(state.gameData.value.current.boxData);
    }
  }

  // 一步到底
  Future<void> onDownFast() async {
    if (state.isDisable) return;

    if (isCanDown()) {
      down();
      onDownFast();
    } else {
      await land(state.gameData.value.current.boxData);
    }
  }

  // 把当前数据设置到游戏数据中
  void setData(BoxData boxData) {
    for (int y = 0; y < boxData.data.length; y++) {
      for (int x = 0; x < boxData.data[0].length; x++) {
        if (boxData.data[y][x] != 0) {
          state.gameData.update((val) {
            val!.data[y + boxData.origin.y][x + boxData.origin.x] =
                boxData.data[y][x];
          });
        }
      }
    }
  }

  // 游戏结束的动画
  Future<void> gameOverAnimation() async {
    for (int y = state.gameData.value.data.length - 1; y >= 0; y--) {
      await MyTimer.futureDelayed(
        milliseconds: 30,
        computation: () {
          for (int x = 0; x < state.gameData.value.data[0].length; x++) {
            state.gameData.update((val) {
              val!.data[y][x] = 2;
            });
          }

          if (y <= state.gameData.value.next.child.length - 1) {
            for (int x = 0;
                x < state.gameData.value.next.child[0].length;
                x++) {
              state.gameData.update((val) {
                val!.next.child[y][x] = 2;
              });
            }
          }
        },
      );
    }
  }

  // 着陆
  Future<void> land(BoxData boxData) async {
    state.isDisable = true;
    if (downTimer != null) downTimer!.cancel();

    // 先渲染
    for (int y = 0; y < boxData.data.length; y++) {
      for (int x = 0; x < boxData.data[0].length; x++) {
        if (boxData.data[y][x] != 0) {
          state.gameData.update((val) {
            val!.data[y + boxData.origin.y][x + boxData.origin.x] = 2;
          });
        }
      }
    }

    // 然后判断游戏是否结束
    if (isGameOver()) {
      if (gameTimer != null) gameTimer!.cancel();
      await gameOverAnimation();
      state.isGameOver = true;
    } else {
      await remove(state.gameData.value.current.boxData);
      await next();
    }
  }

  Future<void> next() async {
    await MyTimer.futureDelayed(
      milliseconds: 500,
      computation: () {
        state.gameData.update((val) {
          var data = val!.next.data;
          var angle = val.next.angle;
          val.current = Current(
            data: data,
            angle: angle,
            boxData: BoxData(data: data[angle], origin: Origin(x: 3, y: 0)),
          );
          val.next = val.getNext();
        });
        setData(state.gameData.value.current.boxData);
        state.isDisable = false;
        downTimerStart();
        gameTimerStart();
      },
    );
  }

  // 是否可以消除
  bool isCanRemove(List<int> data) {
    for (int x = 0; x < data.length; x++) {
      if (data[x] != 2) return false;
    }
    return true;
  }

  // 检查是否可以消除
  // 如何可以消除就会直接消除
  Future<void> remove(BoxData boxData) async {
    int count = 0;
    int y = state.gameData.value.data.length - 1;
    while (y >= boxData.origin.y) {
      if (isCanRemove(state.gameData.value.data[y])) {
        count++;
        // 为消行准备的一行空数据
        List<int> emptyLine = [];
        for (int x = 0; x < state.gameData.value.data[0].length; x++) {
          emptyLine.add(0);
        }
        await MyTimer.futureDelayed(
            milliseconds: 100,
            computation: () {
              state.gameData.update((val) {
                val!.data.removeAt(y);
                val.data.insert(0, emptyLine);
              });
            });
      } else {
        y--;
      }
    }

    if (count > 0) addScore(count);
  }

  // 加分和更换游戏等级
  void addScore(int count) {
    state.score += count * count * 100;

    if (state.score < 1600) {
      state.grade = 1;
    } else if (state.score < 3200) {
      state.grade = 2;
    } else if (state.score < 6400) {
      state.grade = 3;
    } else if (state.score < 12800) {
      state.grade = 4;
    } else if (state.score < 25600) {
      state.grade = 5;
    }

    downDuration = Duration(milliseconds: 1000 ~/ state.grade);
  }

  // 判断游戏是否结束
  bool isGameOver() {
    for (int x = 0; x < state.gameData.value.data[0].length; x++) {
      if (state.gameData.value.data[0][x] == 2) {
        return true;
      }
    }
    return false;
  }

  // 判断点是否合法
  bool isValidPoint(Origin origin, int x, int y) {
    if (origin.x + x < 0) {
      return false;
    } else if (origin.x + x >= state.gameData.value.data[0].length) {
      return false;
    } else if (origin.y + y >= state.gameData.value.data.length) {
      return false;
    } else if (state.gameData.value.data[origin.y + y][origin.x + x] == 2) {
      return false;
    }
    return true;
  }

  // 判断数据的合法性
  bool isValidData(BoxData boxData) {
    for (int y = 0; y < boxData.data.length; y++) {
      for (int x = 0; x < boxData.data[0].length; x++) {
        if (boxData.data[y][x] == 1 && !isValidPoint(boxData.origin, x, y)) {
          return false;
        }
      }
    }
    return true;
  }

  // 清空移动数据，为移动做准备
  void clearData(BoxData boxData) {
    for (int y = 0; y < boxData.data.length; y++) {
      for (int x = 0; x < boxData.data[0].length; x++) {
        if (boxData.data[y][x] != 0) {
          state.gameData.update((val) {
            val!.data[y + boxData.origin.y][x + boxData.origin.x] = 0;
          });
        }
      }
    }
  }
}
