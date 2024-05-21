Map<String, dynamic> data = {
  "data": {
    "questionCard": [
      {
        //Answer: A) Mercury1
        "questionName": "Which planet is the closest to the Sun?",
        "questionNumber1": "Mercury",
        "questionNumber2": "Venus",
        "questionNumber3": "Earth",
        "questionNumber4": "Mars"
      },
      {
        //Answer: B) Saturn1
        "questionName": "Which planet has the most moons in our solar system?",
        "questionNumber1": "Jupiter",
        "questionNumber2": "Saturn",
        "questionNumber3": "Uranus",
        "questionNumber4": "Naptune"
      },
      {
        //Answer: A) Jupiter1
        "questionName": "Which planet is the largest in our solar system?",
        "questionNumber1": "Jupiter",
        "questionNumber2": "Saturn",
        "questionNumber3": "Uranus",
        "questionNumber4": "Naptune"
      },
      {
        //Answer: B) Venus1
        "questionName": "Which planet is the hottest in our solar system?",
        "questionNumber1": "Mercury",
        "questionNumber2": "Venus",
        "questionNumber3": "Earth",
        "questionNumber4": "Mars"
      },
      {
        //Answer: A) Mercury
        "questionName": "Which planet does not have any moon or satellite?",
        "questionNumber1": "Mercury",
        "questionNumber2": "Venus",
        "questionNumber3": "Earth",
        "questionNumber4": "Mars"
      },
      {
        //Answer: D) Mars
        "questionName": "Which planet is known as the red planet?",
        "questionNumber1": "Mercury",
        "questionNumber2": "Saturn",
        "questionNumber3": "Earth",
        "questionNumber4": "Mars"
      },
      {
        //Answer: C) Earth
        "questionName":
            "Which planet is the only one that can support life as we know it?",
        "questionNumber1": "Mercury",
        "questionNumber2": "Venus",
        "questionNumber3": "Earth",
        "questionNumber4": "Mars"
      },
      {
        //Answer: B) Saturn
        "questionName":
            "Which planet has rings made of ice and dust particles?",
        "questionNumber1": "Jupiter",
        "questionNumber2": "Saturn",
        "questionNumber3": "Earth",
        "questionNumber4": "Naptune"
      },
      {
        //Answer: C) Uranus
        "questionName":
            "Which planet is tilted on its axis by about 98 degrees, making it appear to spin on its side?",
        "questionNumber1": "Uranus",
        "questionNumber2": "Saturn",
        "questionNumber3": "Earth",
        "questionNumber4": "Naptune"
      },
    ]
  }
};

class DataModel {
  Data? data;

  DataModel({this.data});

  DataModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<QuestionCard>? questionCard;

  Data({this.questionCard});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['questionCard'] != null) {
      questionCard = <QuestionCard>[];
      json['questionCard'].forEach((v) {
        questionCard!.add(new QuestionCard.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.questionCard != null) {
      data['questionCard'] = this.questionCard!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QuestionCard {
  String? questionName;
  String? questionNumber1;
  String? questionNumber2;
  String? questionNumber3;
  String? questionNumber4;

  QuestionCard(
      {this.questionName,
      this.questionNumber1,
      this.questionNumber2,
      this.questionNumber3,
      this.questionNumber4});

  QuestionCard.fromJson(Map<String, dynamic> json) {
    questionName = json['questionName'];
    questionNumber1 = json['questionNumber1'];
    questionNumber2 = json['questionNumber2'];
    questionNumber3 = json['questionNumber3'];
    questionNumber4 = json['questionNumber4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['questionName'] = this.questionName;
    data['questionNumber1'] = this.questionNumber1;
    data['questionNumber2'] = this.questionNumber2;
    data['questionNumber3'] = this.questionNumber3;
    data['questionNumber4'] = this.questionNumber4;
    return data;
  }
}
