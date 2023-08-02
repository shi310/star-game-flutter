import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/common.dart';
import 'index.dart';

class TertisView extends GetView<TertisController> {
  const TertisView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = controller.state;
    // 方块之间的间距
    const paddingOutline = EdgeInsets.all(1);

    // 方块内部的间距
    const paddingInline = EdgeInsets.all(3);

    // 方块的大小
    const size = 12.0;

    // 默认的方块样式
    var defaultBox = Container(
      padding: paddingInline,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).tetrisDefaultPrimaryColor,
          width: 1,
        ),
        color: Theme.of(context).tetrisDefaultSecondColor,
      ),
      child: Container(
        color: Theme.of(context).tetrisDefaultPrimaryColor,
        width: size,
        height: size,
      ),
    );

    // 移动和着陆的样式
    var selectBox = Container(
      padding: paddingInline,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).tetrisMovePrimaryColor,
          width: 1,
        ),
        color: Theme.of(context).tetrisMoveSecondColor,
      ),
      child: Container(
        color: Theme.of(context).tetrisMovePrimaryColor,
        width: size,
        height: size,
      ),
    );

    Widget buildGameBox() {
      List<Widget> children = state.gameData.value.data
          .map((e) => Row(
              children: e
                  .map((e) => Container(
                        padding: paddingOutline,
                        child: e == 0 ? defaultBox : selectBox,
                      ))
                  .toList()))
          .toList();
      return Column(children: children);
    }

    Widget buildNextBox() {
      List<Widget> children = state
          .gameData.value.next.data[state.gameData.value.next.angle]
          .map((e) => Row(
              children: e.map((i) => i == 0 ? defaultBox : selectBox).toList()))
          .toList();
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: children,
          )
        ],
      );
    }

    var topLeft = Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).tetrisOutline,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(6),
      child: Obx(buildGameBox),
    );

    var topRight = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Text(
          '游戏时间',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 10),
        Obx(() => Text(
              MyTimer.getDuration(state.gameTime),
              style: Theme.of(context).textTheme.titleLarge,
            )),
        const SizedBox(height: 20),
        Text(
          '游戏等级',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 10),
        Obx(() => Text(
              '${state.grade}',
              style: Theme.of(context).textTheme.titleLarge,
            )),
        const SizedBox(height: 20),
        Text(
          '得分',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 10),
        Obx(() => Text(
              '${state.score}',
              style: Theme.of(context).textTheme.titleLarge,
            )),
        const SizedBox(height: 20),
        Text(
          '下一个',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 10),
        Obx(buildNextBox),
        const SizedBox(height: 40),
        FilledButton(
            onPressed: controller.onPauseGame, child: const Text('暂停')),
      ],
    );

    var topBox = Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [topLeft, Expanded(child: topRight)],
      ),
    );

    var buttonLeft = SizedBox(
      width: 80,
      height: 80,
      child: FilledButton(
        onPressed: controller.onLeft,
        child: const Icon(Icons.chevron_left),
      ),
    );

    var buttonRight = SizedBox(
      width: 80,
      height: 80,
      child: FilledButton(
        onPressed: controller.onRight,
        child: const Icon(Icons.chevron_right),
      ),
    );

    var bottomLeftTop = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonLeft,
            const SizedBox(width: 10),
            buttonRight,
          ],
        ),
      ],
    );

    var bottomLeftBottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: FilledButton(
              onPressed: state.isDisable ? null : controller.onDownFast,
              child: const Icon(Icons.expand_more)),
        )
      ],
    );

    var bottomLeft = Column(children: [
      Expanded(child: bottomLeftTop),
      Expanded(child: bottomLeftBottom),
    ]);

    var bottomRotate = Center(
      child: SizedBox(
        width: 120,
        height: 120,
        child: FilledButton(
          onPressed: state.isDisable ? null : controller.onRotate,
          child: const Center(
            child: Icon(Icons.refresh),
          ),
        ),
      ),
    );

    var bottomBox = Container(
      padding: const EdgeInsets.all(10),
      width: Get.width,
      height: Get.height,
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: SafeArea(
        top: false,
        left: false,
        right: false,
        child: Row(children: [
          Expanded(child: bottomLeft),
          Expanded(child: bottomRotate),
        ]),
      ),
    );

    var gameBody = Column(children: [topBox, Expanded(child: bottomBox)]);

    var startBody = Stack(
      children: [
        gameBody,
        Container(
          width: Get.width,
          height: Get.height,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text('经典游戏 - 80后的回忆'),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: controller.onStartGame,
                child: const Text('开始游戏'),
              ),
            ],
          ),
        ),
      ],
    );

    var paushBody = Stack(
      children: [
        gameBody,
        Container(
          width: Get.width,
          height: Get.height,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text('游戏暂停中'),
              const SizedBox(height: 20),
              Obx(() => Text(
                    MyTimer.getDuration(controller.state.paushTime),
                    style: Theme.of(context).textTheme.headlineLarge,
                  )),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: controller.onStartGame,
                child: const Text('继续游戏'),
              ),
            ],
          ),
        ),
      ],
    );

    var gameOverBody = Stack(
      children: [
        gameBody,
        Container(
          width: Get.width,
          height: Get.height,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                '游戏结束',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              const Text('你的得分'),
              const SizedBox(height: 10),
              Obx(() => Text(
                    '${controller.state.score}',
                    style: Theme.of(context).textTheme.headlineLarge,
                  )),
              const SizedBox(height: 20),
              const Text('你的等级'),
              const SizedBox(height: 10),
              Obx(() => Text(
                    '${controller.state.grade}',
                    style: Theme.of(context).textTheme.headlineLarge,
                  )),
              const SizedBox(height: 20),
              const Text('游戏时长'),
              const SizedBox(height: 10),
              Obx(() => Text(
                    MyTimer.getDuration(controller.state.gameTime),
                    style: Theme.of(context).textTheme.headlineLarge,
                  )),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: controller.onReset,
                child: const Text('重新开始'),
              ),
            ],
          ),
        ),
      ],
    );

    var body = Obx(() => controller.state.isStart
        ? startBody
        : controller.state.isPause
            ? paushBody
            : controller.state.isGameOver
                ? gameOverBody
                : gameBody);

    return Scaffold(
      appBar: AppBar(title: const Text('Tertis')),
      body: body,
    );
  }
}
