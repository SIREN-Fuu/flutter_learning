import 'package:flutter/foundation.dart';

import '../../application/interfaces/logger.dart';
import '../../infrastructure/logger/log.dart';
import '../../infrastructure/logger/log_level.dart';

/// 保存機能を持たず出力するだけのシンプルなロガー
class FakeLogger implements CleanArchLogger {
  FakeLogger({
    this.consoleFilterTag,
    this.consoleFilterMinLevel = LogLevel.debug,
  });
  final String? consoleFilterTag;
  final LogLevel consoleFilterMinLevel;

  final Map<LogLevel, String> _logLevelPrefixes = {
    LogLevel.fatal: 'FATAL',
    LogLevel.error: 'ERROR',
    LogLevel.warn: 'WARN',
    LogLevel.info: 'INFO',
    LogLevel.debug: 'DEBUG',
    LogLevel.trace: 'TRACE',
  };

  void _printToConsoleIfNeeded(Log log) {
    // filter by tag
    if (consoleFilterTag != null) {
      final shouldPrint = log.tags.contains(consoleFilterTag);
      if (!shouldPrint) {
        return;
      }
    }
    // filter by log level
    if (log.level.priority < consoleFilterMinLevel.priority) {
      return;
    }
    final levelPrefix = _logLevelPrefixes[log.level] ?? 'UNKNOWN_LOG_LEVEL:';
    final msg = log.msg;
    final text = '$levelPrefix $msg';
    debugPrint(text);
  }

  void _onCreateLog(Log log) {
    _printToConsoleIfNeeded(log);
  }

  @override
  void fatal(String msg) {
    final now = DateTime.now().toIso8601String();
    final log = Log(
      createdAt: now,
      level: LogLevel.fatal,
      tags: [],
      msg: msg,
    );
    _onCreateLog(log);
  }

  @override
  void error(String msg) {
    final now = DateTime.now().toIso8601String();
    final log = Log(
      createdAt: now,
      level: LogLevel.error,
      tags: [],
      msg: msg,
    );
    _onCreateLog(log);
  }

  @override
  void info(String msg) {
    final now = DateTime.now().toIso8601String();
    final log = Log(
      createdAt: now,
      level: LogLevel.info,
      tags: [],
      msg: msg,
    );
    _onCreateLog(log);
  }

  @override
  void debug(String msg) {
    final now = DateTime.now().toIso8601String();
    final log = Log(
      createdAt: now,
      level: LogLevel.debug,
      tags: [],
      msg: msg,
    );
    _onCreateLog(log);
  }
}
