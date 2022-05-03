class Recipe {
  String label;
  String imageUrl;
  int people;
  double time;
  String difficulty;
  String foodDetail1;
  String foodDetail2;
  String youtubeUrl;
  List<IngredientsDetail> ingredientsDetail;
  List<Seasoning> seasoning;
  List<Steps> step;
  Reviews? reviews;

  Recipe(this.label, this.imageUrl, this.people, this.time, this.difficulty, this.foodDetail1,this.foodDetail2, this.youtubeUrl,this.ingredientsDetail, this.seasoning, this.step, reviews);
}

class Reviews {
  int stars;
  int reviews;

  Reviews(this.stars, this.reviews);
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
  Recipe('비빔밥', 'assets/bibimbap.jpg', 2, 30.0, '중수', '한국을 대표하는 맛', '비빔밥은 한국의 밥 요리입니다. 쌀밥에 고기나 나물 등과 여러 가지 양념을 넣어 비벼 먹는 음식입니다. 과거 궁중에서는 비빔이라 불렀습니다.','sfsfr4Lw_D4',
      [IngredientsDetail('밥','2 공기'), IngredientsDetail('돼지고기', '100 g'), IngredientsDetail('애호박', '1 / 5 개'), IngredientsDetail('양파', '1 / 2 개'), IngredientsDetail('당근', '1 / 3 개')],
      [Seasoning('고추장', '2 T'), Seasoning('간장', '2 T'),Seasoning('설탕', '1.5 T'),Seasoning('깨소금', '1 T')],
  [Steps(1, '양파, 당근, 애호박을 채썰어서 준비합니다.'), Steps(2, '비빔밥에 비벼먹을 양념장을 준비합니다. 고추장 2T + 간장 2T + 설탕 1.5T + 깨소금, 참기름 + 식초 1T를 넣고 잘섞어 양념장을 만듭니다.'),
  Steps(3, '먼저 당근을 소금 1꼬집 넣고 색깔이 나게 볶아줍니다.'), Steps(4, '애호박도 소금 1꼬집 넣고 볶아줍니다.'), Steps(5, '양파는 간장 1T 넣고 중불에 볶아줍니다. 꽤 오래 볶아서 단맛이 나게 볶아줍니다.'),
  Steps(6, '소금 후추로 밑간해 놓은 채썰어준 돼지고기를 볶아줍니다. 익은 돼지고기를 아까 만들어 놓은 양념장과 섞어 줍니다'), Steps(7, '따뜻한 밥 위에 볶아 놓은 야채를 올리고 반숙 계란 후라이, 양념장을 크게 1T 떠 셋팅하면 비빔밥 완성!')],
  Reviews(3, 142)),
  Recipe('한국식 핫도그', 'assets/hotdog.jpg', 4, 30.0, '아무나', '한국식 핫도그는 사실 콘도그!', '한국식 핫도그는 사실 정통 핫도그가 아닌 콘도그입니다. 최근에 해외에서도 유행하고 있는 한국식 핫도그를 맛있게 즐겨보세요!','-p7YMtvYvSM',
      [IngredientsDetail('유기농 통밀','130 g'), IngredientsDetail('비정제 설탕', '30 g'), IngredientsDetail('계란', '1 개'), IngredientsDetail('포토씨유', '20 g'), IngredientsDetail('프랭크햄', '9 개'),
      IngredientsDetail('기름', '적당량'), IngredientsDetail('옥수수가루', '120 g'), IngredientsDetail('베이킹파우더', '1 ts'), IngredientsDetail('우유', '230 g'),
        IngredientsDetail('소금', '1 꼬집'), IngredientsDetail('식빵', '3 개'),],
      [Seasoning('', '')],
      [Steps(1, '먼저 빵가루를 미리 만들어두어요. 저는 일반 식빵 사다가 커티기에 부드럽게 갈아주었습니다. 그리고 프랑크햄은 뜨거운 물에 가볍게 씻은 뒤, 꼬치를 끼워 준비해주세요.'), Steps(2, '반죽을 만듭니다. 볼에 계란을 풀고 설탕과 소금을 넣고 잘 섞어주세요. 분량의 오일을 넣고 잘 섞은 후, 우유를 넣고 잘 섞어주세요.'),
        Steps(3, '여기에 통밀과 콘밀, 베이킹 파우더를 체쳐 넣고 잘 섞어주세요. 저는 아이허브에서 구매한 중간굵기의 콘밀을 사용했는데요~ 그냥 사용하면 입자가 씹힐것 같아 곱게 갈아 사용했습니다. 갈았지만 아직 약간의 까슬까슬한 입자가 만져지는 정도로 갈았어요~ 만약 콘밀을 사용하신다면 곱게 갈아 사용하시면 될것 같구요.. 옥수수 가루로 대체하셔도 될것 같아요~'),
        Steps(4, '완성된 반죽은 약간 걸쭉한 느낌입니다. 실온에 10분 정도 두면 옥수수가루가 불어 좀더 농도가 짙은 반죽으로 변해요. 되직하게 걸쭉한 느낌이면 됩니다. 그러면 길쭉한 컵에 반죽을 적당량 덜어낸 후, 꼬치끼운 프랑크햄을 컵 속으로 쑥 밀어넣습니다. 그리고 빼내면 반죽이 골고루 잘 묻을꺼에요.'),
        Steps(5, '그 상태 그대로 튀겨도 되지만, 저는 좀더 바삭하게 먹고 싶어서 빵가루를 고루 묻혀주었어요. 그런 후 바삭하고 노릇하게 튀겨내면 됩니다. 반죽이 걸쭉하긴 하지만 흐르는 상태라, 프랑크햄에 반죽을 입힌 후에는 빠르게 움직이시는게 좋아요~ 빵가루를 묻히고 바로 튀겨야 모양을 쉽게 잡을수 있습니다. 그래서 반죽을 묻히기 전에 빵가루도 미리 준비하고, 튀김기름도 미리 불에 올려 준비하면 좀더 수월하게 튀기실수 있어요~'),
        Steps(6, '튀김은 바로바로 먹는게 제일 맛있습니다~') ], Reviews(3, 2)),
  Recipe('김치볶음밥', 'assets/kimchibap.jpg', 1, 15.0, '누구나', '백전백승! 실패없는 김치볶음밥', '김치볶음밥은 한국의 대중적인 요리의 하나이자 볶음밥의 일종으로서 김치와 밥을 주재료로 프라이팬 등에서 볶은 요리입니다. 조리하기 편하고 간단하여, 대한민국의 서민 음식점인 분식점에서 거의 대부분 팔고 있는 음식이 되었습니다.','dLTurW0BBDc',
      [IngredientsDetail('밥','1 공기'), IngredientsDetail('다진양파', '3 T'), IngredientsDetail('다진 김치', '1 / 2 컵'), IngredientsDetail('다진 햄', '3 T')],
      [Seasoning('설탕', '2 / 3 T'), Seasoning('김칫국물', '2 T'),Seasoning('고추장', '2 / 3 T'),Seasoning('부순 참깨', '1 T') , Seasoning('들기름 또는 참기름', '1 T')],
      [Steps(1, '밥을 넓은 접시에 펼쳐 뜨거운 김을 날립니다.'), Steps(2, '양념장을 만듭니다.'),
        Steps(3, '중간 불로 달군 팬에 식용유(2 T)를 두른 뒤 다진 양파와 다진 김치, 다진 햄을 넣고 볶습니다.'), Steps(4, '양념장을 넣고 살짝 더 볶은 뒤 밥을 넣고 고루 간이 배도록 볶아 마무리. Tip – 취향에 따라 달걀프라이와 김가루를 뿌려요.')],
      Reviews(3, 142)),
  Recipe('감자탕', 'assets/gamjatang.jpg', 3, 120.0, '중수', '감자탕, 생각보다 너무 쉽고 맛있어요!', '감자탕은 돼지 등뼈(감자)로 국물을 낸 탕(湯)으로, 채소, 파, 붉은 고추, 간 들깨 등이 들어가 매운 맛이 나는 한국의 국물 요리입니다. 전라도 지방에서 유래되어 전국 각지로 전파되었다고 합니다','6hLnQ5c03L8',
      [IngredientsDetail('돼지등뼈','1.3 kg'), IngredientsDetail('감자', '2 개'), IngredientsDetail('무청', '1 줌'), IngredientsDetail('대파', '1 대'), IngredientsDetail('깻잎', '약간'), IngredientsDetail('물', '적당량')],
      [Seasoning('고추장', '1 T'), Seasoning('된장', '1 T'), Seasoning('고춧가루', '3 T'),Seasoning('다진마늘', '1 T'), Seasoning('국간장', '1 / 2 T'), Seasoning('액젓', '3 T'), Seasoning('들깨가루', '4~5 T')],
      [Steps(1, '돼지등뼈는 핏물을 어느정도 제거해주어야 하는데요. 물안에 푹 담궈놓고 두번정도 물갈이 해주고 2시간정도 담궈놨어요'), Steps(2, '핏물이 어느정도 제거된다음 한번 팔팔 끓여주어야해요. 끓는물에 등뼈를 넣어서 한번 푹 삶아주세요'),
        Steps(3, '무청도 한팩사왔는데 양이 많아서 반정도만 사용했어요. 팩에 들어있는 무청은 한번 씻어주고 살짝 잘라주세요'), Steps(4, '감자도 먹기 좋게 잘라서 준비해주었어요'), Steps(5, '어느정도 삶아낸 등뼈는 고기만 따로 건져내주시구요'),
        Steps(6, '등뼈를 냄비에 넣고 잠길정도로 물을 넣어주었어요'), Steps(7, '그리고 감자를 넣어주고 나머지 양념을 바로 넣어주세요. 된장 1큰술, 고추장 1큰술, 다진마늘 1큰술, 고춧가루 3큰술,국간장 1/2컵, 액젓 3큰술을 먼저 넣어주었구요'),
      Steps(8, '대파도 큼직하게 잘라서 넣어주고 무청은 위쪽에 수북이 얹어주세요'), Steps(9, '들깨가루도 넉넉히 5큰술 정도 넣어주고 팔팔 끓여주세요'), Steps(10, '간은 보시면서 쎄다 싶으시면 물을 더 넣어주세요'),
      Steps(11, '마지막에 깻잎도 넣어주면서 마무리 ~')],
      Reviews(3, 142)),
];