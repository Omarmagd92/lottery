import '../../../models/shop_model.dart';

abstract class LotteryRegisterStatues {}

class LotteryRegisterInitialStatue extends LotteryRegisterStatues {}

class LotteryRegisterLoadingStatue extends LotteryRegisterStatues {}

class LotteryRegisterSuccessStatue extends LotteryRegisterStatues {
  late final LotteryLoginModel loginModel;

  LotteryRegisterSuccessStatue(this.loginModel);
}

class LotteryRegisterErrorStatue extends LotteryRegisterStatues {
  final String error;

  LotteryRegisterErrorStatue(this.error);
}

class LotteryAddPasswordStatue extends LotteryRegisterStatues {}
