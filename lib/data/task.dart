import 'package:flutter/material.dart';

import './status.dart';

@immutable
class Task {
  Task(this.title, this.status);

  final String title;
  final Status status;

  changeState(Status toStatus) {
    return Task(title, toStatus);
  }
}
