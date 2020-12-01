import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes= [
    Quote(author: 'kajan', text:'Accept the Truth or Live with the lies'),
  Quote(author:'sabinaya', text:'We are What we think'),
  Quote(author:'pankajan',text:'Our life is our design'),
    Quote(author:'kunfu panda', text:'Yesterday is past, Tomorrow is future, Today is gift that is why we call it present')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}



