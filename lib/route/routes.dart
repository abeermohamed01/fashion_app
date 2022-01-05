import 'package:fashion_app/views/home_view.dart';
import 'package:fashion_app/widgets/splash.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';



class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler _splashHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          SplashScreen());

  static Handler _mainHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomeView(page: params['name'][0])); // this one is for one paramter passing...

  // lets create for two parameters tooo...
  static Handler _mainHandler2 = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomeView(page: params['name'][0],extra: params['extra'][0],));

  // ok its all set now .....
  // now lets have a handler for passing parameter tooo....


  static void setupRouter(){
    router.define(
      '/',
      handler: _splashHandler,
    );
    router.define(
      '/main/:name',
      handler: _mainHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/main/:name/:extra',
      handler: _mainHandler2,
      transitionType: TransitionType.fadeIn,
    );
  }

}