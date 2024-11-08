part of 'internet_bloc.dart';

@immutable
sealed class InternetEvent {}

class ConnectedEvent extends InternetEvent {}

class NotConnectedEvent extends InternetEvent {}
