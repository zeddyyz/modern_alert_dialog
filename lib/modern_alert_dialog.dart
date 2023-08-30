library modern_alert_dialog;

import 'package:flutter/material.dart';

class ModernAlertDialog {
  alertDialogInfo(
    BuildContext context, {
    required String title,
    required String message,
  }) {
    bool isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: isDarkMode
            ? const Color.fromARGB(255, 30, 30, 30)
            : const Color.fromARGB(255, 249, 249, 249),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 40),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isDarkMode ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "OK",
                  style: TextStyle(
                    color: isDarkMode ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  alertDialogButton(
    BuildContext context, {
    required String title,
    required String message,
    required Function() onPressed,
  }) {
    bool isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: isDarkMode
            ? const Color.fromARGB(255, 30, 30, 30)
            : const Color.fromARGB(255, 249, 249, 249),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 40),
            InkWell(
              onTap: onPressed,
              child: Container(
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isDarkMode ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "OK",
                  style: TextStyle(
                    color: isDarkMode ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            InkWell(
              child: Container(
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:
                      isDarkMode ? Colors.white.withOpacity(0.15) : Colors.black.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: isDarkMode ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
