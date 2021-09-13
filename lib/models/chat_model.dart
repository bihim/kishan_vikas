class ChatModel {
  int chatId;
  String profileUrl;
  String userName;
  String productName;
  String message;
  String date;

  ChatModel(
      {required this.chatId,
      required this.profileUrl,
      required this.userName,
      required this.productName,
      required this.message,
      required this.date});
}
