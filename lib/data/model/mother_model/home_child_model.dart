class Child {
    int? id;
    String? name;
    String? age;
    String? childGender;
    String? featuredImage;
    String? meal;
    int? mom;

    Child({this.id, this.name, this.age, this.childGender, this.featuredImage, this.meal, this.mom});

    Child.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        name = json["name"];
        age = json["age"];
        childGender = json["child_gender"];
        featuredImage = json["featured_image"];
        meal = json["meal"];
        mom = json["mom"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        _data["age"] = age;
        _data["child_gender"] = childGender;
        _data["featured_image"] = featuredImage;
        _data["meal"] = meal;
        _data["mom"] = mom;
        return _data;
    }
}