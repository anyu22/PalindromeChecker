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
  String oword = noSpaces(word);
  oword = noCapitals(word);
  oword = numLetters(word);
  if(oword.equals(reverse(word))){
    return true;
  }
  else{
    return false;
  }
}
public String reverse(String str)
{
    String sNew = new String();
    for(int x = str.length()-1; x <= 0; x--){
      sNew = sNew + str.substring(x,x+1);
    }
    return sNew;
}
public String numLetters(String sString)
{
  String emptyThree = new String();
 
  for (int i=0; i< sString.length(); i++){
   
    if (Character.isLetter(sString.charAt(i)) == true){
      emptyThree = emptyThree +sString.charAt(i);
    }
  }
  return emptyThree;
}

public String noSpaces(String sWord){
  String result = new String();
  for(int i = 0; i < sWord.length(); i++)
     if(!sWord.substring(i,i+1).equals(" "))
       result=result + sWord.substring(i,i+1);
  return result;
}
public String noCapitals(String sWord){
  String word = sWord.toLowerCase();
  return word;
}
