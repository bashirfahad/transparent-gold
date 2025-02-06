class Dealer {
  String name;
  int yearOfEstablishment;
  String location;

  Dealer({
    required this.name,
    required this.yearOfEstablishment,
    required this.location,
  });

  @override
  String toString() {
    return 'Dealer(name: $name, yearOfEstablishment: $yearOfEstablishment, location: $location)';
  }
}

void main() {
  // List of dealers
  List<Dealer> dealers = [
    Dealer(
      name: 'Gold Mart Inc.',
      yearOfEstablishment: 1995,
      location: 'New York, USA',
    ),
    Dealer(
      name: 'Shiny Gold Dealers',
      yearOfEstablishment: 2005,
      location: 'Dubai, UAE',
    ),
    Dealer(
      name: 'Precious Metals Ltd.',
      yearOfEstablishment: 1980,
      location: 'London, UK',
    ),
    Dealer(
      name: 'Pure Gold Traders',
      yearOfEstablishment: 2010,
      location: 'Mumbai, India',
    ),
    Dealer(
      name: 'Golden Times',
      yearOfEstablishment: 1975,
      location: 'Cape Town, South Africa',
    ),
  ];

  // Print the list of dealers
  for (var dealer in dealers) {
    print(dealer);
  }
}
