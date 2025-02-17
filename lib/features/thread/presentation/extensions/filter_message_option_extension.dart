
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:model/model.dart';
import 'package:tmail_ui_user/main/localizations/app_localizations.dart';

extension FilterMessageOptionExtension on FilterMessageOption {

  String getIconToast(ImagePaths imagePaths) {
    switch(this) {
      case FilterMessageOption.all:
        return imagePaths.icFilterMessageAll;
      case FilterMessageOption.unread:
        return imagePaths.icUnreadToast;
      case FilterMessageOption.attachments:
        return imagePaths.icFilterMessageAttachments;
      case FilterMessageOption.starred:
        return imagePaths.icStar;
    }
  }

  String getMessageToast(BuildContext context) {
    switch(this) {
      case FilterMessageOption.all:
        return AppLocalizations.of(context).disable_filter_message_toast;
      case FilterMessageOption.unread:
        return AppLocalizations.of(context).filter_message_toast(AppLocalizations.of(context).unread);
      case FilterMessageOption.attachments:
        return AppLocalizations.of(context).filter_message_toast(AppLocalizations.of(context).with_attachments);
      case FilterMessageOption.starred:
        return AppLocalizations.of(context).filter_message_toast(AppLocalizations.of(context).starred);
    }
  }

  String getTitle(BuildContext context) {
    switch(this) {
      case FilterMessageOption.all:
        return '';
      case FilterMessageOption.unread:
        return AppLocalizations.of(context).with_unread;
      case FilterMessageOption.attachments:
        return AppLocalizations.of(context).with_attachments.capitalizeFirstEach;
      case FilterMessageOption.starred:
        return AppLocalizations.of(context).with_starred;
    }
  }
}