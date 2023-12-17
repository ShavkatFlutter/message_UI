import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:uidesgin/main.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Message> messages = [
    Message(
        text: 'Assalomu Alaykum',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'Va Alaykum assalom',
      date: DateTime.now().subtract(Duration(days: 4, minutes: 2)),
      isSentByMe: true,
    ),
    Message(
      text: 'Ahvollaringiz yaxshimi?',
      date: DateTime.now().subtract(Duration(days: 5, minutes: 5)),
      isSentByMe: false,
    ),
    Message(
      text: 'Yaxshi rahmat',
      date: DateTime.now().subtract(Duration(days: 6, minutes: 9)),
      isSentByMe: true,
    ),
    Message(
      text: 'Sizga bir-ikkita savolim bor edi.',
      date: DateTime.now().subtract(Duration(days: 7, minutes: 2)),
      isSentByMe: false,
    ),
    Message(
      text: 'Bemalol?',
      date: DateTime.now().subtract(Duration(days: 8, minutes: 2)),
      isSentByMe: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text('Profile Page'),
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
            },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(2),
            child: GestureDetector(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                    "https://zelda.nintendo.com/links-awakening/assets/img/home/hero-char.png"),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: GroupedListView<Message, DateTime>(
                padding: EdgeInsets.all(8),
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  useStickyGroupSeparators: true,
                  floatingHeader: true,
                  elements: messages,
                  groupBy: (message)=> DateTime(
                    message.date.year,
                    message.date.month,
                    message.date.day,
                  ),
                groupHeaderBuilder: (Message message) => SizedBox(
                  height: 40,
                  child: Center(
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                          padding: EdgeInsets.all(8),
                        child: Text(
                          DateFormat.yMMMd().format(message.date),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                itemBuilder: (context, Message message)=> Align(
                  alignment: message.isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Card(
                    elevation: 8,
                    child: Padding(
                        padding: EdgeInsets.all(12),
                      child: Text(message.text),
                    ),
                  ),
                ),
              ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onSubmitted: (text){
                        final message = Message(
                            text: text, 
                            date: DateTime.now(), 
                            isSentByMe: true,
                        );
                        setState(() {
                          messages.add(message);
                        });
                      },
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                icon: Icon(Icons.send, size: 50, color: Colors.blueAccent,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
});
}