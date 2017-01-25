public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = noSpaces(word);
  word = noCapitals(word);
  word = allLetters(word);
  if(reverse(word).equals(word)){
    return true;
  }
  return false;
}

public String reverse(String str)
{
  String sNew = new String();
  for(int i = str.length(); i > 0; i --){
    if(str.length() <= 1){
      sNew = str.substring(0);
    }
    else{
      sNew = sNew + str.charAt(i-1);
    }
  }
  return sNew;
}

public String noSpaces(String sWord){
  String result = new String();
  for(int i = 0; i < sWord.length(); i++)
     if(!sWord.substring(i,i+1).equals(" "))
       result=result + sWord.substring(i,i+1);
  return result;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String allLetters(String sString){
  String bob = new String();
  for(int i = 0; i < sString.length(); i = i + 1){
    if(Character.isLetter(sString.charAt(i)) == true){
      bob = bob + sString.charAt(i);
    }
  }
  return bob;
}



