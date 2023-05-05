import 'package:go_router/go_router.dart';
import 'package:step1/interface/onboard/page_view.dart';
import 'package:step1/interface/router/router_name.dart';
import 'package:step1/interface/screens/app/cards.dart';
import 'package:step1/interface/screens/app/dashboard.dart';
import 'package:step1/interface/screens/app/fixed_deposit.dart';
import 'package:step1/interface/screens/app/home.dart';
import 'package:step1/interface/screens/app/investment.dart';
import 'package:step1/interface/screens/app/loan.dart';
import 'package:step1/interface/screens/app/testPage.dart';
import 'package:step1/interface/screens/app/transfer.dart';
import 'package:step1/interface/screens/app/wallet.dart';
import 'package:step1/interface/screens/auth/login/login.dart';
import 'package:step1/interface/screens/auth/signup/signup.dart';

final GoRouter router = GoRouter(routes: [
  //GoRoute( path: RouterPath.test, builder: ((context, state) =>  const TestPage())),
  GoRoute(name: RouterName.test, path: RouterPath.test, builder: (context, state) =>  TestPage()),
  GoRoute(path: '/', builder: ((context, state) => const OnBoarding())),
  GoRoute(path: RouterPath.signup, builder: ((context, state) =>  const Signup())),
  GoRoute( path: RouterPath.login, builder: ((context, state) =>  const Login())),
  
  GoRoute(name: RouterName.dashboard, path: RouterPath.dashboard, builder: ((context, state) =>  const Dashboard())),
  GoRoute(name: RouterName.wallet, path: RouterPath.wallet, builder: ((context, state) =>  const WalletScreen())),
  GoRoute(name: RouterName.home, path: RouterPath.home, builder: (context, state) =>  const HomeScreen()),
  GoRoute(name: RouterName.transfer, path: RouterPath.transfer, builder: ((context, state) =>  const TransferPage())),
  GoRoute(name: RouterName.loan, path: RouterPath.loan, builder: ((context, state) =>  const LoanPage())),
  GoRoute(name: RouterName.investment, path: RouterPath.investment, builder: ((context, state) =>  const Investment())),
  GoRoute(name: RouterName.fixed, path: RouterPath.fixed, builder: ((context, state) =>  const FixedDeposit())),
  GoRoute(name: RouterName.cards, path: RouterPath.cards, builder: ((context, state) =>  const CardScreen())),

]);


/*
  GoRoute( path: RouterPath.dashboard, builder: ((context, state) =>  const Dashboard())),
  GoRoute( path: RouterPath.wallet, builder: ((context, state) =>  const WalletScreen())),
  GoRoute( path: RouterPath.home, builder: ((context, state) =>  const HomeScreen())),
  GoRoute( path: RouterPath.transfer, builder: ((context, state) =>  const TransferPage())),
  GoRoute( path: RouterPath.loan, builder: ((context, state) =>  const LoanPage())),
  GoRoute( path: RouterPath.investment, builder: ((context, state) =>  const Investment())),
  GoRoute( path: RouterPath.fixed, builder: ((context, state) =>  const FixedDeposit())),
  GoRoute( path: RouterPath.cards, builder: ((context, state) =>  const CardScreen())),

  */

/*
final GoRouter routerNested = GoRouter(routes: [
  GoRoute(path: '/login/:name', builder: (context, state) => const Login(
    name:state.params["name"]!
  )),
  GoRoute(path: '/', builder: (context, state) => const Login(), routes: [
    GoRoute(
        path: '/login',
        builder: (context, state) => const Login(),
        routes: [
          GoRoute(
              path: '/Dashboard',
              builder: (context, state) => const Login(),
              routes: []),
        ]),
  ]),
]);
*/
// to navigate GoRouter.of(ccontext).go("/profile");
// easy navigate: context.go("/profile"); or namedrouter context.go(RouterNames.profile);
// to pass data: onTap(){name ='peter'; context.go("$routerName/$name")}
