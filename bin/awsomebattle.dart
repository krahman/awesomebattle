abstract class Warrior{
  equip(Weapon weapon);
}

abstract class Weapon{
  speed();
  damage();
  range();
}

class Sword implements Weapon{
  void speed(){
    print('reasonable speed');
  }
  
  void damage(){
    print('lethal cut');
  }
  
  void range(){
    print('close combat');
  }
}

class Pistol implements Weapon{
  
  void speed(){
    print('in a blink of eye');
  }
  
  void damage(){
    print('stops your heart from beating');
  }
  
  void range(){
    print('long range combat');
  }
}

class Pirate implements Warrior{
  equip(Weapon weapon){
    weapon.speed();
    weapon.range();
    weapon.damage();
  } 
}

class Ninja implements Warrior{
  equip(Weapon weapon){
    weapon.speed();
    weapon.damage();
    weapon.range();
  }
}

equipForBattle(Warrior warrior, Weapon weapon){
  warrior.equip(weapon);
}


void main() {
  print('Pirate, Pistol Stats:');
  equipForBattle(new Pirate(), new Pistol());
  
  print('\n');
  
  print('Ninja, Sword Stats:');
  equipForBattle(new Ninja(), new Sword());
}

