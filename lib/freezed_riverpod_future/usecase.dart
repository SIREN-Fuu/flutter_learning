import 'dart:async';

import 'package:flutter_learning/freezed_riverpod_future/delay.dart';
import 'package:flutter_learning/freezed_riverpod_future/riverpod.dart';
import 'package:flutter_learning/plugins/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecase.g.dart';

@riverpod
SimpleUsecase simpleAccountInfo(SimpleAccountInfoRef ref) {
  SimpleUsecase().info(
    getAccountInfoNotifier: ref.watch(simpleNotifierProvider.notifier),
    data: 0,
  );
  return SimpleUsecase();
}

@riverpod
FutureOrUsecase futureOrAccountInfo(FutureOrAccountInfoRef ref) {
  FutureOrUsecase().info(
    getAccountInfoNotifier: ref.watch(futureOrNotifierProvider.notifier),
    data: 0,
  );
  return FutureOrUsecase();
}

/// ポジション情報取得 Usecase
class SimpleUsecase {
  factory SimpleUsecase() => _instance;
  SimpleUsecase._();
  static final SimpleUsecase _instance = SimpleUsecase._();

  late SimpleNotifier _getAccountInfoNotifier;
  bool _isExecuting = false;

  void info({
    required SimpleNotifier getAccountInfoNotifier,
    required int data,
  }) {
    _getAccountInfoNotifier = getAccountInfoNotifier;
  }

  Future<void> execute({
    bool loadingState = true,
    String? symbolCode,
  }) async {
    logger.w('SimpleUsecase executeきてる');
    if (!_isExecuting) {
      _isExecuting = true;
      // タイマーの前に1度取得
      _getAccountInfoNotifier.updateState(
        loadingState: loadingState,
      );

      final timer = Timer.periodic(const Duration(seconds: 2), (t) async {
        //タイマー間隔で取得
        _getAccountInfoNotifier.updateState(
          loadingState: loadingState,
        );
      });

      _getAccountInfoNotifier.ref.onDispose(() {
        logger.w('StopTimer!! SimpleUsecase');
        timer.cancel();
        _isExecuting = false;
      });
    }
  }
}

/// ポジション情報取得 Usecase
class FutureOrUsecase {
  factory FutureOrUsecase() => _instance;
  FutureOrUsecase._();
  static final FutureOrUsecase _instance = FutureOrUsecase._();

  late FutureOrNotifier _getAccountInfoNotifier;
  bool _isExecuting = false;

  void info({
    required FutureOrNotifier getAccountInfoNotifier,
    required int data,
  }) {
    _getAccountInfoNotifier = getAccountInfoNotifier;
  }

  Future<void> execute({
    bool loadingState = true,
    String? symbolCode,
    int counter = 0,
  }) async {
    logger.w('FutureOrUsecase execute');
    if (!_isExecuting) {
      _isExecuting = true;
      // タイマーの前に1度取得
      await _getAccountInfoNotifier.updateState(
        ApiSimulator().accountFuture(),
        loadingState: loadingState,
      );

      final timer = Timer.periodic(const Duration(seconds: 6), (t) async {
        //タイマー間隔で取得
        await _getAccountInfoNotifier.updateState(
          ApiSimulator().accountFuture(),
          loadingState: loadingState,
        );
      });

      _getAccountInfoNotifier.ref.onDispose(() {
        logger.w('StopTimer!! FutureOrUsecase');
        timer.cancel();
        _isExecuting = false;
      });
    }
  }
}
