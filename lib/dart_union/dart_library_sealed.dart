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
