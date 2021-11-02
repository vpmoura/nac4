void breakRow() {
  print('\n');
}

void main() {
  Creature creature = Creature('Ser vivo');
  creature.create();
  creature.breath();

  breakRow();

  Fish fish = Fish('Lambari');
  fish.create();
  fish.breath();
  fish.swin();

   breakRow();

  Whale whale = Whale('Moby Dick');
  whale.create();
  whale.breath();
  whale.swin();
  whale.breastFeed();

  breakRow();

  FlyerFish flyerFish = FlyerFish('Super Peixe');
  flyerFish.create();
  flyerFish.breath();
  flyerFish.swin();
  flyerFish.fly();

  breakRow();

  Human human = Human('Irineu');
  human.create();
  human.breath();
  human.talk();
  human.swin();
  human.write();

  breakRow();

  Insect insect = Insect('Formiga');
  insect.create();
  insect.breath();
  insect.pollinate();

  breakRow();

  Bird bird = Bird('Periquito', 'rosa');
  bird.create();
  bird.breath();
  bird.fly();

  breakRow();

  Papagaio papagaio = Papagaio('Tico', 'verde');
  papagaio.create();
  papagaio.breath();
  papagaio.fly();
  papagaio.sing();

  breakRow();

  Duck duck = Duck('Donald', 'branco');
  duck.create();
  duck.breath();
  duck.swin();

  breakRow();


}

class Creature {
  String name;

  Creature(this.name);

  void create() {
    print('A criatura $name foi criada!');
  }

  void breath() {
    print('A criatura $name está respirando!');
  }
}

class Fish extends Creature {
  Fish(String name) : super(name);

  void swin() {
    print('O peixe $name está nadando!');
  }
}

class Whale extends Fish {
  Whale(String name) : super(name);

  void breastFeed() {
    print('A baleia $name está amamentando!');
  }
}

class FlyerFish extends Fish {
  FlyerFish(String name) : super(name);

  void fly() {
    print('O peixe voador $name está voando!');
  }
}

class Human extends Creature {
  Human(String name) : super(name);

  void talk() {
    print('O humano $name está falando!');
  }

  void swin() {
    print('O humano $name está nadando!');
  }

  void write() {
    print('O humano $name está escrevendo!');
  }
}

class Insect extends Creature {
  Insect(String name) : super(name);

  @override
  void breath() {
    print('O inseto $name está respirando!');
  }

  void pollinate() {
    print('O inseto $name está polinizando!');
  }
}

class Bird extends Creature {
  String color;

  Bird(String name, this.color) : super(name);

  void fly() {
    print('A ave $name da cor $color está voando!');
  }
}

class Papagaio extends Bird {
  Papagaio(String name, String color) : super(name, color);

  void sing() {
    print('O papagaio $name da cor $color está cantando!');
  }
}

class Duck extends Bird {
  Duck(String name, String color) : super(name, color);

  void swin() {
    print('O pato $name da cor $color está nadando!');
  }
}