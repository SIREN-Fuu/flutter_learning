import 'package:intl/intl.dart';

/// 日付をカンマ区切り文字列として扱うモデルクラス
/// Freezedを使用しているため、イミュータブルなクラスとなっている
///
/// 👇バリデーションがないインスタンス生成
/// * const DateTimeString();
/// * const DateTimeString(value: '2000.01.01.01.01.01');
///
/// 👇バリデーションがあるインスタンス生成
/// * DateTimeString.fromString('2000.01.01.01.01.01');
/// * DateTimeString.fromDateTime(DateTime.now());;

class DateTimeString {
  DateTimeString({
    required this.value,
  });

  factory DateTimeString.fromString(String dateString) {
    final parts = dateString.split('.');
    if (parts.length != 6) {
      throw const FormatException(
        "Invalid date string format, expected 'YYYY.MM.DD.HH.MM.SS'",
      );
    }
    final year = int.tryParse(parts[0]);
    final month = int.tryParse(parts[1]);
    final day = int.tryParse(parts[2]);
    final hour = int.tryParse(parts[3]);
    final minute = int.tryParse(parts[4]);
    final second = int.tryParse(parts[5]);

    if (year == null ||
        month == null ||
        day == null ||
        hour == null ||
        minute == null ||
        second == null) {
      throw const FormatException(
        'Invalid date string parts, expected integers',
      );
    }

    return DateTimeString(
      value:
          '$year.${month.toString().padLeft(2, '0')}.${day.toString().padLeft(2, '0')}.${hour.toString().padLeft(2, '0')}.${minute.toString().padLeft(2, '0')}.${second.toString().padLeft(2, '0')}',
    );
  }

  factory DateTimeString.fromStringEx({
    int year = 2001,
    int month = 1,
    int day = 1,
    int hour = 0,
    int minute = 0,
    int second = 0,
  }) =>
      DateTimeString.fromString('$year.$month.$day.$hour.$minute.$second');

  factory DateTimeString.fromDateTime(DateTime dateTime) =>
      DateTimeString(value: DateFormat('yyyy.MM.dd.HH.mm.ss').format(dateTime));

  final String value;

  DateTime toDateTime() {
    final split = value.split('.');
    return DateTime(
      int.parse(split[0]),
      int.parse(split[1]),
      int.parse(split[2]),
      int.parse(split[3]),
      int.parse(split[4]),
      split.length == 6 ? int.parse(split[5]) : 0,
    );
  }

  String toHHmm() {
    final split = value.split('.');
    return '${split[3]}:${split[4]}';
  }

  String toYyMMdd() {
    final split = value.split('.');
    return '${split[0].substring(2)}/${split[1]}/${split[2]}';
  }

  String toYyyyMMdd() {
    final split = value.split('.');
    return '${split[0]}/${split[1]}/${split[2]}';
  }

  List<String> toList() {
    return value.split('.');
  }

  int get year => int.parse(toList()[0]);

  int get month => int.parse(toList()[1]);

  int get day => int.parse(toList()[2]);

  int get hour => int.parse(toList()[3]);

  int get minute => int.parse(toList()[4]);

  int get second => int.parse(toList()[5]);
}
