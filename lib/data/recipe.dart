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

  Recipe(this.label, this.imageUrl, this.people, this.time, this.difficulty, this.foodDetail1,this.foodDetail2, this.ingredientsDetail, this.seasoning);
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

List<Recipe> recipes = [
  Recipe('비빔밥', 'assets/bibimbap.jpg', 2, 30.0, '중수', '한국을 대표하는 맛', '비빔밥은 한국의 밥 요리이다. 쌀밥에 고기나 나물 등과 여러 가지 양념을 넣어 비벼 먹는 음식이다. 과거 궁중에서는 비빔이라 불렀다.',
      [IngredientsDetail('밥','2 공기'), IngredientsDetail('돼지고기', '100 g'), IngredientsDetail('애호박', '1 / 5 개'), IngredientsDetail('양파', '1 / 2 개'), IngredientsDetail('당근', '1 / 3 개')],
      [Seasoning('고추장', '2 T'), Seasoning('간장', '2 T'),Seasoning('설탕', '1.5 T'),Seasoning('깨소금', '1 T')]),
  Recipe('핫도그', 'assets/hotdog.jpg', 1, 10.0, '*기름 주의', '한국을 대표하는 맛', '밥과 여러가지 나물들을 섞어 드셔보세요',
      [IngredientsDetail('밥','2 공기'), IngredientsDetail('돼지고기', '100 g'), IngredientsDetail('애호박', '1 / 5 개'), IngredientsDetail('양파', '1 / 2 개'), IngredientsDetail('당근', '1 / 3 개')],
      [Seasoning('고추장', '2 T'), Seasoning('간장', '2 T'),Seasoning('설탕', '1.5 T'),Seasoning('깨소금', '1 T')]),
  Recipe('김치볶음밥', 'assets/kimchibap.jpg', 2, 15.0, '누구나', '한국을 대표하는 맛', '밥과 여러가지 나물들을 섞어 드셔보세요',
      [IngredientsDetail('밥','2 공기'), IngredientsDetail('돼지고기', '100 g'), IngredientsDetail('애호박', '1 / 5 개'), IngredientsDetail('양파', '1 / 2 개'), IngredientsDetail('당근', '1 / 3 개')],
      [Seasoning('고추장', '2 T'), Seasoning('간장', '2 T'),Seasoning('설탕', '1.5 T'),Seasoning('깨소금', '1 T')]),
  Recipe('감자탕', 'assets/gamjatang.jpg', 2, 50.0, '고수', '한국을 대표하는 맛', '밥과 여러가지 나물들을 섞어 드셔보세요',
      [IngredientsDetail('밥','2 공기'), IngredientsDetail('돼지고기', '100 g'), IngredientsDetail('애호박', '1 / 5 개'), IngredientsDetail('양파', '1 / 2 개'), IngredientsDetail('당근', '1 / 3 개')],
      [Seasoning('고추장', '2 T'), Seasoning('간장', '2 T'),Seasoning('설탕', '1.5 T'),Seasoning('깨소금', '1 T')]),
];