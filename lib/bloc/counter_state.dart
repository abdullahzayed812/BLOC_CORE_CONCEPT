import 'package:flutter/material.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterValueChangedState extends CounterState {
  final int count;

  CounterValueChangedState({required this.count});
}
