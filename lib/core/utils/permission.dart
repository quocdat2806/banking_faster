import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PermissionUtils {
  PermissionUtils._();

  static Future<bool> requestNotificationService() async {
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    final androidPlugin = flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    if (androidPlugin != null) {
      final granted = await androidPlugin.requestNotificationsPermission();
      return granted ?? false;
    }

    return false;
  }
}
