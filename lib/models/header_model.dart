class HeaderModel{
  int id;
  String date;
  HeaderModel({this.id , this.date});
}
List<HeaderModel> headerModel=[
  HeaderModel(id: 1, date: 'april 28'),
  HeaderModel(id: 2, date: 'april 29'),
  HeaderModel(id: 3, date: 'april 30'),
  HeaderModel(id: 4, date: 'april 27'),
  HeaderModel(id: 5, date: 'april 26'),
];

// class HeaderViewModel{
// String date;
// HeaderViewModel(HeaderModel headerModel){
// date= headerModel.date;
// }
// }