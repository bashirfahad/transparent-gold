class TransactionList{
  String amount;
  String mode;
  String date;
  TransactionList({
    required this.amount,
    required this.date,
    required this.mode
});
}
List<TransactionList>transactionlist=[
  TransactionList(amount: "PKR 22500", date: "22-06-23", mode: "Buying Gold"),
  TransactionList(amount: "PKR 20850", date: "12-03-23", mode: "Buying Gold"),
  TransactionList(amount: "PKR 18500", date: "2-02-23", mode: "Selling Gold"),
  TransactionList(amount: "PKR 100500", date: "22-06-23", mode: "Buying Gold"),
  TransactionList(amount: "PKR 15500", date: "22-06-23", mode: "Selling Gold"),

];