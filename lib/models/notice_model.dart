class NoticeModel {
  int noticeId;
  String noticeTitle;
  String noticeSubtitle;
  DateTime noticeDate;
  List<String> noticeAttachments;
  List<String> noticeImages;
  String noticePosterName;
  String noticePosterEmail;

  NoticeModel({
    required this.noticeId,
    required this.noticeTitle,
    this.noticeSubtitle = '',
    required this.noticeDate,
    this.noticeAttachments = const [],
    this.noticeImages = const [],
    required this.noticePosterName,
    required this.noticePosterEmail,
  });
}
