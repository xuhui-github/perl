class Person
{
  has Str $.name;
  has Str $.birthday;


  has Person $.father;
  has Person $.mother;
  has Person $.spouse;
  has Person @.child;
}


