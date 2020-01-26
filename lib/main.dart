import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';


void main() => runApp(MaterialApp(
  home:  QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes1= [
    Quote(author: 'auth1', text:'quote1'),
    Quote(author: 'auth2', text:'quote2'),
    Quote(author: 'auth3', text:'quote3'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Awesome Quotes",

        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes1.map((quotes){
          return QuoteCard(
              quote:quotes,
              delete:(){
                setState(() {
                  quotes1.remove(quotes);
                });
              }
          );
      }).toList()

      ),
    );
  }
}


