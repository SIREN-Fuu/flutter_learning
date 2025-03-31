// ignore_for_file: invalid_annotation_target

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_implements.freezed.dart';
// part 'freezed_implements.g.dart';

@Freezed(fromJson: true, toJson: true)
class OsRedHat with _$OsRedHat {
  OsRedHat({
    this.key = 'RedHat-Key',
    this.displayName = 'RedHat',
    this.color = Colors.red,
  });

  // factory OsRedHat.fromJson(Map<String, dynamic> json) =>
  //     _$OsRedHatFromJson(json);

  @override
  final String key;
  @override
  final String displayName;
  @override
  final Color color;

  // String toStringEx() => json.encode(toJson());
}
