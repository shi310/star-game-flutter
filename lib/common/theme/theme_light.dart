part of 'theme.dart';

ThemeData themeLight = ThemeData(
  brightness: Brightness.light, //调整亮度白天模式和夜间模式
  scaffoldBackgroundColor: const Color(0XFFEEEEEE), // 页面的背景
  splashColor: Colors.transparent, // 水波纹的颜色。InkWell
  highlightColor: Colors.transparent, // 选中在泼墨动画期间使用的突出显示颜色，或用于指示菜单中的项
  primaryColor: const Color(0xFF02BE02), // 应用程序主要部分的背景颜色(toolbars、tab bars 等)
  // MaterialColor? primarySwatch,//Material风格的组件提供主题色
  // Color? primaryColorLight,// primaryColor的浅色版
  // Color? primaryColorDark,// primaryColor的深色版
  // Color? focusColor,,//使用的焦点颜色表示组件具有输入焦点
  // Color? hoverColor,//用于指示指针悬停颜色
  // Color? shadowColor,  // 阴影层颜色
  // Color? canvasColor, ////  MaterialType.canvas 的默认颜色
  // Color? scaffoldBackgroundColor, // Scaffold的默认颜色。典型Material应用程序或应用程序内页面的背景颜色。
  // Color? bottomAppBarColor,// BottomAppBar的默认颜色
  // Color? cardColor,// Card的颜色
  // Color? dividerColor,// Divider和PopupMenuDivider的颜色，也用于ListTile之间、DataTable的行之间等。
  // Color? splashColor, // 水波纹的颜色。InkWell
  // Color? selectedRowColor,// 用于突出显示选定行的颜色。
  // Color? unselectedWidgetColor,// 用于处于非活动(但已启用)状态的小部件的颜色。例如，未选中的复选框。通常与accentColor形成对比。也看到disabledColor。
  // Color? disabledColor,// 禁用状态下部件的颜色，无论其当前状态如何。例如，一个禁用的复选框(可以选中或未选中)。
  // Color? secondaryHeaderColor,// 选定行时PaginatedDataTable标题的颜色。
  // Color? backgroundColor, // 与主色形成对比的颜色，例如用作进度条的剩余部分。
  // Color? dialogBackgroundColor, // Dialog 元素的背景颜色
  // Color? indicatorColor, // 选项卡中选定的选项卡指示器的颜色。
  // Color? hintColor, // 用于提示文本或占位符文本的颜色，例如在TextField中。
  // errorColor: Colors.red, // 用于输入验证错误的颜色，例如在TextField中
  // Color? toggleableActiveColor,// 用于突出显示Switch、Radio和Checkbox等可切换小部件的活动状态的颜色。

  // 用来设置iOS组件的样式
  // this.brightness,
  // 这个颜色一般用在按钮和可点击的文本和图标上，如果 [primaryColor] 未指定，将使用 [ThemeData] 的 colorScheme.primary。
  // this.primaryColor,
  // 如果未指定将使用 [ThemeData] 的colorScheme.onPrimary
  // this.primaryContrastingColor,
  // iOS组件默认的字体样式
  // this.textTheme,
  // iOS NavigationBar的颜色
  // this.barBackgroundColor,
  // Scaffold 背景色
  // this.scaffoldBackgroundColor,
  cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(),

  // 用于选择加入 Material 3 功能的临时标志。
  // 如果为 true，则已迁移到 Material 3 的组件将使用 Material 3 的新颜色、排版和其他功能。
  // 如果为 false，它们将使用 Material 2 的外观。如果在 [useMaterial3] 设置为 true 的情况下构造 [ThemeData]，则某些属性将获得特殊的默认值。
  // 但是，仅复制 [useMaterial3] 设置为 true 的 [ThemeData] 不会更改生成的 [ThemeData] 中的任何这些属性。
  // 这些属性是：
  // | Property        | Material 3 default           | Fallback default          |
  // | :-------------- | :--------------------------- | :------------------------ |
  // | [typography]    | [Typography.material2021]    | [Typography.material2014] |
  // | [splashFactory] | [InkSparkle]* or [InkRipple] | [InkSplash]               |
  // 在迁移到 Material 3 期间，打开它可能会在您的应用中产生不一致的外观。一些组件将在其他组件之前迁移，并且排版更改将分阶段进行。
  // [useMaterial3] 默认为 false。在所有迁移的组件都登陆稳定后，我们将默认将其更改为 true。在该更改登陆稳定版后，我们将弃用此标志并删除它的所有用途。那时一切都将使用 Material 3 的外观和感觉。
  // 已经迁移到 Material 3 的组件有：
  // * [AlertDialog]
  // * [AppBar]
  // * [Card]
  // * [Dialog]
  // * [ElevatedButton]
  // * [FloatingActionButton]
  // * [Material]
  // * [NavigationBar]
  // * [NavigationRail]
  // * [OutlinedButton]
  // * [StretchingOverscrollIndicator], replacing the [GlowingOverscrollIndicator]
  // * [TextButton]
  // * [Material Design 3](https://m3.material.io/).
  useMaterial3: true,

  // 用来添加自定义的主题颜色
  // abstract class ThemeExtension<T extends ThemeExtension<T>> {
  // Enable const constructor for subclasses.
  // const ThemeExtension();

  // The extension's type.
  // Object get type => T;

  // Creates a copy of this theme extension with the given fields
  // replaced by the non-null parameter values.
  // ThemeExtension<T> copyWith();

  // Linearly interpolate with another [ThemeExtension] object.
  //
  // {@macro dart.ui.shadow.lerp}
  // ThemeExtension<T> lerp(ThemeExtension<T>? other, double t);
  extensions: null,

  // inputDecorationTheme 用于设置TextField的样式

  // materialTapTargetSize 配置某些 Material 小部件的点击目标和布局大小。
  // 一些受影响的小部件包括：
  //
  //   * [FloatingActionButton], only the mini tap target size is increased.
  //   * [MaterialButton]
  //   * [OutlinedButton]
  //   * [TextButton]
  //   * [ElevatedButton]
  //   * [FlatButton]
  //   * [RaisedButton]
  //   * The time picker widget ([showTimePicker])
  //   * [SnackBar]
  //   * [Chip]
  //   * [RawChip]
  //   * [InputChip]
  //   * [ChoiceChip]
  //   * [FilterChip]
  //   * [ActionChip]
  //   * [Radio]
  //   * [Switch]
  //   * [Checkbox]
  //

  // pageTransitionsTheme 定义[MaterialPageRoute]使用的页面过渡动画
  // 定义[MaterialPageRoute]使用的页面过渡动画
  // 用于不同的 [TargetPlatform]。
  //
  // [MaterialPageRoute.buildTransitions] 方法使用 `Theme.of(context).pageTransitionsTheme` 查找当前当前的 [PageTransitionsTheme] 并委托给 [buildTransitions]。如果未找到具有匹配平台的构建器，则使用 [FadeUpwardsPageTransitionsBuilder]。
  //
  // 也可以看看：
  //
  // * [ThemeData.pageTransitionsTheme]，定义默认页面
  // 整体主题的过渡。
  // * [FadeUpwardsPageTransitionsBuilder]，定义了一个页面过渡
  // 与Android O提供的类似。
  // * [OpenUpwardsPageTransitionsBuilder]，定义了一个页面过渡
  // 这与Android P提供的类似。
  // * [ZoomPageTransitionsBuilder]，定义了默认的页面过渡
  // 这和Android Q提供的类似。
  // * [CupertinoPageTransitionsBuilder]，定义一个水平页面
  // 匹配原生 iOS 页面转换的转换。

  // scrollbarTheme 自定义[滚动条]颜色、粗细和形状的主题
  // 定义后代 [Scrollbar] 小部件的默认属性值。
  // 后代小部件通过 `ScrollbarTheme.of(context)` 获取当前的 [ScrollbarThemeData] 对象。 [ScrollbarThemeData] 的实例可以使用 [ScrollbarThemeData.copyWith] 进行自定义。
  //
  // 通常，[ScrollbarTheme] 的 [ScrollbarThemeData] 被指定为带有 [ThemeData.scrollbarTheme] 的整体 [Theme] 的一部分。
  //
  // 所有 [ScrollbarThemeData] 属性默认为 `null`。 当为空时，
  // [滚动条] 计算自己的默认值，通常基于整体
  // 主题的 [ThemeData.colorScheme]

  // splashFactory 定义由 [InkWell] 和 [InkResponse]产生的水波纹的外观

  // visualDensity 定义用户界面组件的视觉密度
  // 定义用户界面组件的视觉密度。
  //
  // 密度，在 UI 的上下文中，是垂直和水平的
  // UI 中组件的“紧凑性”。它是无单位的，因为它对不同的 UI 组件意味着不同的东西。
  //
  // 垂直和水平的视觉密度默认为零
  // 密度，对应Material Design规范中组件的默认视觉密度。它不影响文本大小、图标大小或填充值。
  // 例如，对于按钮，它会影响按钮子元素周围的间距。对于列表，它会影响列表中条目基线之间的距离。对于芯片，它只影响垂直尺寸，而不影响水平尺寸。
  // 以下是一些响应密度变化的小部件示例：
  //
  //  * [Checkbox]
  //  * [Chip]
  //  * [ElevatedButton]
  //  * [FlatButton]
  //  * [IconButton]
  //  * [InputDecorator] (which gives density support to [TextField], etc.)
  //  * [ListTile]
  //  * [MaterialButton]
  //  * [OutlinedButton]
  //  * [Radio]
  //  * [RawMaterialButton]
  //  * [TextButton]

  // colorScheme 一组十二种颜色，可用于配置大多数组件的颜色属性
  // * Primary colors用于整个 UI 的关键组件，例如 FAB、突出按钮和活动状态。
  // * Secondary colors 用于UI中不太突出的组件，例如滤镜芯片，同时扩大了颜色表达的机会。
  // * Tertiary colors 用于对比强调色，可用于平衡原色和二次色或提高对元素的关注，例如输入字段。第三色留给制造商自行决定使用，旨在支持
  // 产品中更广泛的色彩表达。
  // 该方案的其余颜色由用于背景和表面的中性颜色以及用于错误、分隔线和阴影的特定颜色组成。
  // 许多颜色都有匹配的“on”颜色，用于在匹配颜色之上绘制内容。例如，如果某物使用 [primary] 作为背景颜色，则 [onPrimary] 将用于在其上绘制文本和图标。出于这个原因，“打开”颜色应与其匹配颜色具有至少 4.5:1 的对比度，以便可读。
  // 如果未提供颜色，将使用与给定颜色最接近的备用颜色（例如 [primaryContainer] 将默认为 [primary]）。 Material Design 3 将这些颜色用于许多组件的默认设置，因此为了获得最佳效果，应用程序应该
  // 为所有参数提供颜色。确保这一点的一种简单方法是
  // 使用 [ColorScheme.fromSeed] 生成全套颜色。
  // 在迁移到 Material Design 3 期间，如果应用程序的 [ThemeData.useMaterial3] 为 false，则组件将仅使用以下颜色作为默认颜色：
  //
  // * [primary]
  // * [onPrimary]
  // * [secondary]
  // * [onSecondary]
  // * [error]
  // * [onError]
  // * [background]
  // * [onBackground]
  // * [surface]
  // * [onSurface]
  //
  // 主要角色用于整个 UI 中的关键组件，例如 FAB(FloatingActionButton)、突出按钮、活动状态以及提升表面的色调。
  // required this.primary,
  // 应用于位于primary之上的内容（图标、文本等）
  // required this.onPrimary,
  // 应用于需要比primary更少强调的元素
  // Color? primaryContainer,
  // 应用于位于 primary container顶部的内容（图标、文本等）
  // Color? onPrimaryContainer,
  // 次要角色用于 UI 中不太突出的组件，例如  chips，同时扩大了颜色表达的机会。
  // required this.secondary,
  // 在辅助上绘制时清晰易读的颜色。
  // required this.onSecondary,
  // 一种颜色，用于不需要强调次要的元素。
  // Color? secondaryContainer,
  // 在 secondaryContainer 上绘制时清晰易读的颜色。
  // Color? onSecondaryContainer,
  // tertiary用于对比重音，可用于平衡主色和辅助色或增加对元素的关注，例如输入字段。 tertiary的作用留给制造商自行决定使用，旨在支持产品中更广泛的颜色表达。
  // Color? tertiary,
  // 在第三级上绘制时清晰易读的颜色。
  // Color? onTertiary,
  // 一种颜色，用于需要比第三级更少强调的元素。
  // Color? tertiaryContainer,
  // 在 tertiaryContainer 上绘制时清晰易读的颜色。
  // Color? onTertiaryContainer,
  // 用于输入验证错误的颜色，例如对于 InputDecoration.errorText。
  // required this.error,
  //A color that's clearly legible when drawn on error.
  // required this.onError,
  // 一种用于错误元素的颜色，它需要的重点少于error。
  // Color? errorContainer,
  // 在 errorContainer 上绘制时清晰易读的颜色。
  // Color? onErrorContainer,
  /// 通常出现在可滚动内容后面的颜色。
  // required this.background,
  // required this.onBackground,
  // Card等小部件的背景颜色。
  // required this.surface,
  // required this.onSurface,
  // 一种表面的颜色变体，可用于区分使用表面的组件。
  // Color? surfaceVariant,
  // Color? onSurfaceVariant,
  // Color? outline,
  // 一种用于绘制elevated 组件的阴影的颜色。
  // Color? shadow,
  // 一种表面颜色，用于显示与周围 UI 中看到的相反的内容，例如在 SnackBar 中以引起对警报的注意。
  // Color? inverseSurface,
  // Color? onInverseSurface,
  // 一种强调色，用于在 inverseSurface 背景上显示高亮颜色，例如 SnackBar 中的按钮文本。
  // Color? inversePrimary,
  // 一种颜色，用作表面颜色上的overlay ，以指示组件的elevation。
  // Color? surfaceTint,

  // 文本的主题设置
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black), // 普通的文本
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFF02BE02),
  ),

  buttonTheme: const ButtonThemeData(
    minWidth: 200,
    height: 40,
    buttonColor: Color(0xFF02BE02),
    padding: EdgeInsets.zero,
  ),

  // appbar 主题
  appBarTheme: const AppBarTheme(
    elevation: 0, //投影
    centerTitle: true,
    backgroundColor: Colors.white,
    actionsIconTheme: IconThemeData(
      color: Colors.black,
      size: 18,
    ),
    iconTheme: IconThemeData(
      size: 18,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18,
      color: Colors.black,
    ),
  ),

  // 底部导航的主题
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0XFF0E0E11),
    unselectedLabelStyle: TextStyle(fontSize: 12),
    selectedLabelStyle: TextStyle(fontSize: 12),
    unselectedItemColor: Color(0xffA2A5B9),
    selectedItemColor: Color(0XFF161619),
  ),

  // tabbar 的主题设置
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.label,
    labelColor: Color(0XFF161619),
    unselectedLabelColor: Color(0X88FFFFFF),
  ),
);
