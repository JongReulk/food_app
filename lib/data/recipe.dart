class Recipe {
  String label;
  String imageUrl;
  int people;
  double time;
  String difficulty;
  String foodDetail1;
  String foodDetail2;
  List<IngredientsDetail> ingredientsDetail;
  List<Seasoning> seasoning;
  List<Steps> step;

  Recipe(this.label, this.imageUrl, this.people, this.time, this.difficulty, this.foodDetail1,this.foodDetail2, this.ingredientsDetail, this.seasoning, this.step);
}

class IngredientsDetail {
  String name;
  String measure;
  
  IngredientsDetail(this.name, this.measure);
}

class Seasoning {
  String name;
  String measure;

  Seasoning(this.name, this.measure);
}

class Steps {
  int num;
  String step;
  
  Steps(this.num, this.step);
}

List<Recipe> recipes = [
  Recipe('비빔밥', 'assets/bibimbap.jpg', 2, 30.0, '중수', '한국을 대표하는 맛', '비빔밥은 한국의 밥 요리이다. 쌀밥에 고기나 나물 등과 여러 가지 양념을 넣어 비벼 먹는 음식이다. 과거 궁중에서는 비빔이라 불렀다.',
      [IngredientsDetail('밥','2 공기'), IngredientsDetail('돼지고기', '100 g'), IngredientsDetail('애호박', '1 / 5 개'), IngredientsDetail('양파', '1 / 2 개'), IngredientsDetail('당근', '1 / 3 개')],
      [Seasoning('고추장', '2 T'), Seasoning('간장', '2 T'),Seasoning('설탕', '1.5 T'),Seasoning('깨소금', '1 T')],
  [Steps(1, '양파, 당근, 애호박을 채썰어서 준비합니다.'), Steps(2, '비빔밥에 비벼먹을 양념장을 준비합니다. 고추장 2T + 간장 2T + 설탕 1.5T + 깨소금, 참기름 + 식초 1T를 넣고 잘섞어 양념장을 만듭니다.'),
  Steps(3, '먼저 당근을 소금 1꼬집 넣고 색깔이 나게 볶아줍니다.'), Steps(4, '애호박도 소금 1꼬집 넣고 볶아줍니다.'), Steps(5, '양파는 간장 1T 넣고 중불에 볶아줍니다. 꽤 오래 볶아서 단맛이 나게 볶아줍니다.'),
  Steps(6, '소금 후추로 밑간해 놓은 채썰어준 돼지고기를 볶아줍니다. 익은 돼지고기를 아까 만들어 놓은 양념장과 섞어 줍니다'), Steps(7, '따뜻한 밥 위에 볶아 놓은 야채를 올리고 반숙 계란 후라이, 양념장을 크게 1T 떠 셋팅하면 비빔밥 완성!')]),
  Recipe('핫도그', 'assets/hotdog.jpg', 1, 10.0, '*기름 주의', '한국을 대표하는 맛', '밥과 여러가지 나물들을 섞어 드셔보세요',
      [IngredientsDetail('밥','2 공기'), IngredientsDetail('돼지고기', '100 g'), IngredientsDetail('애호박', '1 / 5 개'), IngredientsDetail('양파', '1 / 2 개'), IngredientsDetail('당근', '1 / 3 개')],
      [Seasoning('고추장', '2 T'), Seasoning('간장', '2 T'),Seasoning('설탕', '1.5 T'),Seasoning('깨소금', '1 T')],
      [Steps(1, '양파, 당근, 애호박을 채썰어서 준비합니다.'), Steps(2, '비빔밥에 비벼먹을 양념장을 준비합니다. 고추장 2T + 간장 2T + 설탕 1.5T + 깨소금, 참기름 + 식초 1T를 넣고 잘섞어 양념장을 만듭니다.'),
        Steps(3, '먼저 당근을 소금 1꼬집 넣고 색깔이 나게 볶아줍니다.'), Steps(4, '애호박도 소금 1꼬집 넣고 볶아줍니다.'), Steps(5, '양파는 간장 1T 넣고 중불에 볶아줍니다. 꽤 오래 볶아서 단맛이 나게 볶아줍니다.'),
        Steps(6, '소금 후추로 밑간해 놓은 채썰어준 돼지고기를 볶아줍니다. 익은 돼지고기를 아까 만들어 놓은 양념장과 섞어 줍니다'), Steps(7, '따뜻한 밥 위에 볶아 놓은 야채를 올리고 반숙 계란 후라이, 양념장을 크게 1T 떠 셋팅하면 비빔밥 완성!')]),
  Recipe('김치볶음밥', 'assets/kimchibap.jpg', 2, 15.0, '누구나', '한국을 대표하는 맛', '밥과 여러가지 나물들을 섞어 드셔보세요',
      [IngredientsDetail('밥','2 공기'), IngredientsDetail('돼지고기', '100 g'), IngredientsDetail('애호박', '1 / 5 개'), IngredientsDetail('양파', '1 / 2 개'), IngredientsDetail('당근', '1 / 3 개')],
      [Seasoning('고추장', '2 T'), Seasoning('간장', '2 T'),Seasoning('설탕', '1.5 T'),Seasoning('깨소금', '1 T')],
      [Steps(1, '양파, 당근, 애호박을 채썰어서 준비합니다.'), Steps(2, '비빔밥에 비벼먹을 양념장을 준비합니다. 고추장 2T + 간장 2T + 설탕 1.5T + 깨소금, 참기름 + 식초 1T를 넣고 잘섞어 양념장을 만듭니다.'),
        Steps(3, '먼저 당근을 소금 1꼬집 넣고 색깔이 나게 볶아줍니다.'), Steps(4, '애호박도 소금 1꼬집 넣고 볶아줍니다.'), Steps(5, '양파는 간장 1T 넣고 중불에 볶아줍니다. 꽤 오래 볶아서 단맛이 나게 볶아줍니다.'),
        Steps(6, '소금 후추로 밑간해 놓은 채썰어준 돼지고기를 볶아줍니다. 익은 돼지고기를 아까 만들어 놓은 양념장과 섞어 줍니다'), Steps(7, '따뜻한 밥 위에 볶아 놓은 야채를 올리고 반숙 계란 후라이, 양념장을 크게 1T 떠 셋팅하면 비빔밥 완성!')]),
  Recipe('감자탕', 'assets/gamjatang.jpg', 2, 50.0, '고수', '한국을 대표하는 맛', '밥과 여러가지 나물들을 섞어 드셔보세요',
      [IngredientsDetail('밥','2 공기'), IngredientsDetail('돼지고기', '100 g'), IngredientsDetail('애호박', '1 / 5 개'), IngredientsDetail('양파', '1 / 2 개'), IngredientsDetail('당근', '1 / 3 개')],
      [Seasoning('고추장', '2 T'), Seasoning('간장', '2 T'),Seasoning('설탕', '1.5 T'),Seasoning('깨소금', '1 T')],
      [Steps(1, '양파, 당근, 애호박을 채썰어서 준비합니다.'), Steps(2, '비빔밥에 비벼먹을 양념장을 준비합니다. 고추장 2T + 간장 2T + 설탕 1.5T + 깨소금, 참기름 + 식초 1T를 넣고 잘섞어 양념장을 만듭니다.'),
        Steps(3, '먼저 당근을 소금 1꼬집 넣고 색깔이 나게 볶아줍니다.'), Steps(4, '애호박도 소금 1꼬집 넣고 볶아줍니다.'), Steps(5, '양파는 간장 1T 넣고 중불에 볶아줍니다. 꽤 오래 볶아서 단맛이 나게 볶아줍니다.'),
        Steps(6, '소금 후추로 밑간해 놓은 채썰어준 돼지고기를 볶아줍니다. 익은 돼지고기를 아까 만들어 놓은 양념장과 섞어 줍니다'), Steps(7, '따뜻한 밥 위에 볶아 놓은 야채를 올리고 반숙 계란 후라이, 양념장을 크게 1T 떠 셋팅하면 비빔밥 완성!')]),
];