import 'package:flutter/material.dart';
import 'quote.dart';

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

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 6),
            Text(quote.author,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[800],
            ),
            ),
          ],
        ),
      ),
    );
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

