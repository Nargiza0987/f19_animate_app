class Suroo {
  Suroo({required this.text, required this.jooptor, required this.image});
  final String text;
  final List<joop> jooptor;
  final String image;
}

List<Suroo> asiaQuestions = [s1, s2, s3, s4, s5, s6];

class joop {
  joop({required this.text, this.isTrue = false});
  final String text;
  final bool isTrue;
}

final s1 = Suroo(
    text: "Bishkek",
    jooptor: [
      joop(text: "Kyrgyzstan", isTrue: true),
      joop(text: "Russia"),
      joop(text: "Korea"),
      joop(text: "Brazil"),
    ],
    image: "Bishkek");

final s2 = Suroo(
    text: "moscow",
    jooptor: [
      joop(text: "Kyrgyzstan"),
      joop(text: "Russia", isTrue: true),
      joop(text: "Korea"),
      joop(text: "Brazil"),
    ],
    image: "moscow");

final s3 = Suroo(
    text: "NewYork",
    jooptor: [
      joop(text: "Kyrgyzstan"),
      joop(text: "Russia"),
      joop(text: "USA", isTrue: true),
      joop(text: "Brazil"),
    ],
    image: "NewYork");

final s4 = Suroo(
    text: "Paris",
    jooptor: [
      joop(
        text: "Kyrgyzstan",
      ),
      joop(text: "Russia"),
      joop(text: "Korea"),
      joop(text: "France", isTrue: true),
    ],
    image: "Paris");

final s5 = Suroo(
    text: "pekin",
    jooptor: [
      joop(text: "Kyrgyzstan"),
      joop(text: "China", isTrue: true),
      joop(text: "Korea"),
      joop(text: "Brazil"),
    ],
    image: "pekin");

final s6 = Suroo(
    text: "Sidney",
    jooptor: [
      joop(text: "Kyrgyzstan"),
      joop(text: "Australia", isTrue: true),
      joop(text: "Korea"),
      joop(text: "Brazil"),
    ],
    image: "Sidney");
