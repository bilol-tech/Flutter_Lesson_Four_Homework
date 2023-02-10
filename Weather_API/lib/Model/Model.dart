class Name {
  final int? count;
  final String? gender;
  final String? name;
  final num? probabilitty;

  Name(
      { this.count,
         this.gender,
         this.name,
         this.probabilitty});

  factory Name.fromJson(Map data) {

    return Name(
        count: data["count"],
        gender: data["gender"],
        name: data['name'],
        probabilitty: data["probabilitty"]);
  }
}