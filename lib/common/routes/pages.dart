import 'package:get/get.dart';

import '../../views/views.dart';
import '../common.dart';

class AppPages {
  // 未知页面
  static final unknownRoute = GetPage(
    name: MyRoutes.unknownRoute,
    page: () => const UnknownView(),
    binding: UnknownBinding(),
  );

  static final List<GetPage> getPages = [
    // 初始页面
    GetPage(
      name: MyRoutes.index,
      page: () => const IndexView(),
      binding: IndexBinding(),
      middlewares: [MiddlewareIndex()],
    ),

    // 欢迎页面
    GetPage(
      name: MyRoutes.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),

    // 首页
    GetPage(
      name: MyRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),

    // 登陆
    GetPage(
      name: MyRoutes.signIn,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),

    // 注册
    GetPage(
      name: MyRoutes.signUp,
      page: () => const SingUpView(),
      binding: SingUpBinding(),
    ),

    // 俄罗斯方块
    GetPage(
      name: MyRoutes.tetris,
      page: () => const TertisView(),
      binding: TertisBinding(),
    ),
  ];
}
