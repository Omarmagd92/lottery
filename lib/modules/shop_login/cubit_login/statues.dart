import '../../../layout/cubit/states.dart';
import '../../../models/shop_model.dart';

abstract class LotteryLoginStatues {}

class LotteryLoginInitialStatue extends LotteryLoginStatues {}

class LotteryLoginLoadingStatue extends LotteryLoginStatues {}

class LotteryLoginSuccessStatue extends LotteryLoginStatues {
  final LotteryLoginModel loginModel;

  LotteryLoginSuccessStatue(this.loginModel);
}

class LotteryLoginErrorStatue extends LotteryLoginStatues {
  final String error;

  LotteryLoginErrorStatue(this.error);
}

class LotteryChangePasswordStatue extends LotteryLoginStatues {}

///General States

class ChangeBottomNavState extends LotteryStates {}

class ChangeSuffixIconState extends LotteryStates {}

class GetTokenSuccessState extends LotteryStates {}

///End of General states
