
void main(){

  var deck =  Deck();
  deck.shuffle();
  print(deck);
  print("-------");
   // print(deck.cardsWithSuit('Diamonds'));
  print(" cards in hand");
  print(deck.deal(5));
  print("-------");
  print(deck);
  deck.removeCard('Diamonds', 'Ace');
  print("-------");
  print(deck);
  
}

//1.create a new deck of playing cards
class Deck{
  List<Card> cards = [];
  Deck(){
   var  ranks = ['Ace','Two','Three','Four','Five'];
    var suits = ['Diamonds','Hearts','Clubs','Spades'];
    for (var suit in suits){
      for(var rank in ranks){
       var card = Card(rank,suit);
        cards.add(card);
      }
    }
  }
  @override
  toString(){
    return cards.toString();
  }
//3.shuffle cards
  shuffle(){
    cards.shuffle();
  }

//4.find all the cards with a given suits
  cardsWithSuit(String suit){
    return cards.where((card){
      return card.suit == suit;
    });
    // Or the same method can be defined as below
    /*return cards.where((card) =>card.suit == suit);*/
  }
  
  deal(int handSize){
    var hand = cards.sublist(0,handSize);
    cards= cards.sublist(handSize);
    return hand;
  }

//6.Remove a specific card from deck
  removeCard(String suit, String rank){
    cards.removeWhere((card){
      return (card.suit == suit) && (card.rank == rank);
    });
  }
}

//2.print all the cards in this deck
class Card{
  String suit='null';
  String rank='null';
  
  Card(this.rank,this.suit);

  @override
  String toString() {
    // TODO: implement toString
    return '$rank of $suit';
  }
}