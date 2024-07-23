// ignore_for_file: unreachable_from_main

import 'package:flutter_learning/plugins/logger.dart';

sealed class HomeState {}

class LoadingState extends HomeState {}

class LoadedState extends HomeState {
  LoadedState(this.data);
  final String data;
}

class ErrorState extends HomeState {
  ErrorState(this.message);
  final String message;
}

void main(List<String> args) {
  final HomeState state = LoadedState('data');
  final msg = switch (state) {
    LoadingState() => 'we are loading',
    LoadedState() => 'we are loaded',
    ErrorState() => 'we are error'
  };
  logger.d(msg);

  switch (state) {
    case LoadingState():
      logger.d('LoadedState');
    case ErrorState() || LoadedState():
      logger.d('ErrorState');
  }

  final msg2 = switch (state) {
    LoadingState() => 'we are loading',
    ErrorState() || LoadedState() => 'we are done'
  };
  logger.d(msg2);

  final msg3 = switch (state) {
    LoadingState() => 'we are loading',
    LoadedState(data: final data) => 'we are loaded $data',
    ErrorState(message: final message) => 'error is $message'
  };
  logger.d(msg3);

  switch (state) {
    case LoadingState():
      logger.d('LoadedState');
    case LoadedState(data: final data):
      logger.d('LoadedState $data');
    case ErrorState(message: final message):
      logger.d('ErrorState $message');
  }

  switch (state) {
    case final LoadingState obj:
      logger.d('LoadingState $obj');
    case final LoadedState obj:
      logger.d('LoadedState ${obj.data}');
    case ErrorState() && final obj:
      logger.d('ErrorState $obj');
  }

  final msg4 = switch (state) {
    LoadingState() => 'we are loading',
    ErrorState(message: final data) => 'error is $data',
    LoadedState(data: final data) when data.length > 10 =>
      'length more than 10',
    LoadedState() => 'length less than 10'
  };
  logger.d(msg4);
}

// void main(List<String> args) {
//   final HomeState state = const LoadedState('data');
//   final msg = switch (state) {
//     LoadingState() => 'we are loading',
//     LoadedState() => 'we are loaded',
//     ErrorState() => 'we are error'
//   };
//   print(msg);
// }
