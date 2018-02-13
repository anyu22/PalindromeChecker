public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{

  if(word.equals(reverse(word))==true){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int x = str.length()-1; x <= 0; x--){
      sNew = sNew + str.substring(x,x+1);
    }
    return sNew;
}


