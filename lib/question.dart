class Questions {
  String question;
  String correct_answer;
  String incorrect_answer;

  Questions(this.question, this.correct_answer, this.incorrect_answer);

  static List<Questions> listQuestion = [
    Questions("You can legally drink alcohol while driving in Mississippi.", "True", "False",),
    Questions("When you cry in space, your tears stick to your face.", "True", "False",),
    Questions("Bulls are attracted to the color red.", "False", "True",),
    Questions("The National Animal of Scotland is the Unicorn.", "True", "False",),
    Questions("Greenland is covered with grass and Iceland covered with ice.", "False", "True",),
    Questions("The communication protocol NFC stands for Near-Field Control.", "False", "True",),
    Questions("On average, at least 1 person is killed by a drunk driver in the United States every hour.", "True", "False",),
    Questions("In Norse mythology, Thor once dressed as a woman.", "True", "False",),
    Questions("Toronto is the capital city of the North American country of Canada.", "False", "True",),
    Questions("Igneous rocks are formed by excessive heat and pressure.", "False", "True",),
  ];
}