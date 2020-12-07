

class ChatModel{
  String name;
  String message;
  String time;
  String AvaterUrl;

  ChatModel(this.name,  this.message, this.time, this.AvaterUrl);

  static List<ChatModel> getList(){
    List<ChatModel> myList=new List();
    myList.add(ChatModel("Ibrahim", "I love Flutter ", "2:00", "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_960_720.jpg"));
    myList.add(ChatModel("NourHan", "I love Flutter so much ", "1:00", "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048__340.jpg"));
    myList.add(ChatModel("NourHan", "I love Flutter so much ", "1:00", "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048__340.jpg"));
    myList.add(ChatModel("NourHan", "I love Flutter so much ", "1:00", "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048__340.jpg"));
    myList.add(ChatModel("NourHan", "I love Flutter so much ", "1:00", "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048__340.jpg"));
    myList.add(ChatModel("NourHan", "I love Flutter so much ", "1:00", "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048__340.jpg"));
    myList.add(ChatModel("NourHan", "I love Flutter so much ", "1:00", "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048__340.jpg"));
    myList.add(ChatModel("NourHan", "I love Flutter so much ", "1:00", "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048__340.jpg"));
    myList.add(ChatModel("NourHan", "I love Flutter so much ", "1:00", "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048__340.jpg"));
  return myList;
  }
}