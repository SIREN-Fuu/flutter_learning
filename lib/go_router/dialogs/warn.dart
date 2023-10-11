import 'package:flutter/material.dart';

/// カスタムダイアログ 警告用
class WarnDialog extends StatelessWidget {
  const WarnDialog({
    super.key,
    required this.message,
    required this.onPressedOk,
  });

  final String message;
  final VoidCallback onPressedOk;

  @override
  Widget build(BuildContext context) {
    final messageArea = Expanded(
      child: Container(
        padding: const EdgeInsets.all(4),
        alignment: Alignment.center,
        child: Text(
          message,
          style: const TextStyle(
            fontSize: 24,
            fontFamily: 'NotoSansJP',
            fontWeight: FontWeight.bold,
          ),
          maxLines: 5,
        ),
      ),
    );

    final buttonArea = SizedBox(
      width: double.infinity,
      height: 40,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.yellowAccent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        onPressed: onPressedOk,
        child: const Text(
          'OK',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'NotoSansJP',
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.yellowAccent,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              messageArea,
              buttonArea,
            ],
          ),
        ),
      ),
    );
  }
}

void showWarnDialog(
  BuildContext context,
  String message,
) {
  showDialog<void>(
    context: context,
    builder: (context) {
      return WarnDialog(
        message: message,
        onPressedOk: () {
          Navigator.of(context).pop();
        },
      );
    },
  );
}
