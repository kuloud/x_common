class TimeFormatter {
  static String getTimeDuration(String comTime, String? locale) {
    var nowTime = DateTime.now();
    var compareTime = DateTime.parse(comTime);

    if (nowTime.isAfter(compareTime)) {
      var difference = nowTime.difference(compareTime);

      if (difference.inSeconds < 60) {
        return _translate('just_now', locale);
      } else if (difference.inMinutes < 60) {
        return _translate(
            'minutes_ago', locale, [difference.inMinutes.toString()]);
      } else if (difference.inHours < 24) {
        return _translate('hours_ago', locale, [difference.inHours.toString()]);
      } else if (difference.inDays < 30) {
        return _translate('days_ago', locale, [difference.inDays.toString()]);
      } else if (difference.inDays < 365) {
        int months = (difference.inDays / 30).floor();
        return _translate('months_ago', locale, [months.toString()]);
      } else {
        int years = (difference.inDays / 365).floor();
        return _translate('years_ago', locale, [years.toString()]);
      }
    }

    return _translate('time_error', locale);
  }

  static String _translate(String key, String? locale, [List<String>? args]) {
    Map<String, Map<String, String>> translations = {
      'en': {
        'just_now': 'just now',
        'minutes_ago': '{0} minutes ago',
        'hours_ago': '{0} hours ago',
        'days_ago': '{0} days ago',
        'months_ago': '{0} months ago',
        'years_ago': '{0} years ago',
        'time_error': 'time error',
      },
      'zh': {
        'just_now': '片刻之间',
        'minutes_ago': '{0}分钟前',
        'hours_ago': '{0}小时前',
        'days_ago': '{0}天前',
        'months_ago': '{0}月前',
        'years_ago': '{0}年前',
        'time_error': '时间错误',
      },
    };

    String translation =
        translations[locale ?? 'en']?[key] ?? translations['en']![key]!;

    if (args != null) {
      for (int i = 0; i < args.length; i++) {
        translation = translation.replaceAll('{$i}', args[i]);
      }
    }

    return translation;
  }
}
