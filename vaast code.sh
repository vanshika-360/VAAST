#!/bin/bash

function firstpage()
 {
  echo "CHOOSE  AN   OPTION" | toilet -F border --gay
       espeak -s 150- -p 70 " CHOOSE AN OPTION"
echo "1. CALCULATOR
2. SITES
3. TOOLS
4. SHUTDOWN"
 }

function calculator()
 {
  echo "  WELCOME   TO  THE  CALCULATOR " | toilet -F border --gay -w 500 | lolcat
       espeak -s 150 -p 70 "welcome to the calculator"
  echo " ENTER FIRST NUMBER "
      read x
  echo " ENTER SECOND NUMBER "
      read y
  echo "Entered Numbers are $x and $y" | lolcat
      espeak -s 130 -p 70 "entered Numbers are  $x and $y"
  echo "Select the operation" | figlet -c -w 200
  echo "1. Addition
2. Subtraction
3. Multiplication
4. Divide
5. Factors
6. Square
7. Cube
8. Exit"
    read op
   echo "Selected operation - $op"
       espeak -s 150 -p 70 "Selected operation - $op"
 if (( $op == 1 ))
 then 
      res=`echo "scale=4;$x + $y" | bc`
      echo "*******************"
      figlet -c -w 200 "YOUR RESULT IS -- $res" 
      echo "*******************"
 elif (( $op == 2 ))
 then
      res=`echo "scale=4;$x - $y" | bc`
      echo "*******************"
      figlet -c -w 200 "YOUR RESULT IS -- $res"
      echo "*******************"
 elif (( $op == 3 ))
 then
      res=`echo "scale=4;$x * $y" | bc`
      echo "*******************"
      figlet -c -w 200 "YOUR RESULT IS -- $res"
      echo "*******************"
 elif (( $op == 4 ))
 then
      res=`echo "scale=4;$x / $y" | bc`
      echo "*******************"
      figlet -c -w 200 "YOUR RESULT IS -- $res"
      echo "*******************"
 elif (( $op == 5 ))
 then
     echo "Factos are"
     factor $x
     factor $y
 elif (( $op == 6 ))
 then
     res=`echo "sacle=4;$x * $x" | bc`
     echo "Square of $x is $res"
     res=`echo "sacle=4;$y * $y" | bc`
     echo "Square of $y is $res"
 elif (( $op == 7 ))
 then
     res=`echo "scale=4;$x * $x * $x" | bc`
     echo "Cube of $x is $res"
     res=`echo "scale=4;$y * $y * $y" | bc`
     echo "Cube of $y is $res"
 elif (( $op == 8 ))
 then
     clear
     loop
 else 
 cowsay -f gnu "Wrong option"
fi
sleep 2s
echo "DO YOU WANT TO USE CALCULATOR
1. YES
2. NO" | figlet -c -w 200
read move
if (( $move == 1 ))
then 
clear
calculator
elif (( $move == 2 ))
then 
clear
loop 
else
echo "wrong choice"
fi
}

#site selection
function secondpage()
{
    echo " CHOOSE THE SITE" | toilet -f mono12 -F border --gay
    espeak -s 150 -p 70 " CHOOSE THE SITE"
echo "1.  Google
2.  Facebook
3.  Instagram
4.  G-Mail
5.  You-Tube
6.  Netflix
7.  Twitter
8.  Hotstar
9.  Prime video
10. Amazon
11. Back"
 read sh
 while (( $sh > 11 ))
  do
    toilet -f mono12 -F border --gay -w 150 "SORRY"
    espeak -s 120 -p 70 "SORRY "
  read sh
 done
if (( $sh == 1 ))
  then
  echo "               GOOGLE                 " | figlet -c -w 200
  xdg-open https://www.google.com/
elif (( $sh == 2 ))
  then 
  echo "               FACEBOOK                 " | figlet -c -w 200
  xdg-open https://www.facebook.com/
elif (( $sh == 3 ))
  then
  echo "               INSTAGRAM                " | figlet -c -w 200
  xdg-open https://www.instagram.com/
elif (( $sh == 4 ))
  then
  echo "               G-MAIL                   " | figlet -c -w 200
  xdg-open https://accounts.google.com/v3/signin/identifier
dsh=S-1710398024%3A1669615617696694&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=ARgdvAvseZdYFzAV2VBN1UccfYuno50UwjF-Hx4317wLbeLhOUoD1nuu8X-b57z7I17kyueDM42DAA
elif (( $sh == 5 ))
  then
  echo "               You-Tube                " | figlet -c -w 200
  xdg-open https://www.youtube.com/
elif (( $sh == 6 ))
  then
  echo "               Netflix                " | figlet -c -w 200
  xdg-open https://www.netflix.com/in/
elif (( $sh == 7 ))
  then
  echo "               Twitter                " | figlet -c -w 200
  xdg-open https://twitter.com/i/flow/login
elif (( $sh == 8 ))
  then
  echo "               Hotstar                " | figlet -c -w 200
  xdg-open https://www.hotstar.com/in
elif (( $sh == 9 ))
  then
  echo "               Prime video                " | figlet -c -w 200
  xdg-open https://www.primevideo.com/?ref_=dvm_pds_gen_in_as_s_gm_sm1&gclid=EAIaIQobChMI5duqh8zT-wIVOpNmAh2K5QJpEAAYASABEgKgZfD_BwE
elif (( $sh == 10 ))
  then
  echo "               Amazon                " | figlet -c -w 200
  xdg-open https://www.amazon.in/?&ext_vrnc=hi&tag=googhydrabk1-21&ref=pd_sl_6b31gegj9g_e&adgrpid=60612964962&hvpone=&hvptwo=&hvadid=486380734071&hvpos=&hvnetw=g&hvrand=8191549605994450355&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9301898&hvtargid=kwd-49491430&hydadcr=14454_2154375&gclid=EAIaIQobChMItc7IpczT-wIVTpVLBR0L6wC9EAAYASAAEgIBu_D_BwE
elif (( $sh == 11 ))
  then
  clear 
  loop
else
    echo "Wrong Choice" | figlet -c -w 200
    espeak -s 150 -p 70 "Wrong Choice"
fi
}

#thirdpage
function thirdpage()
{
  echo " CHOOSE THE TOOL" | toilet -f mono12 -F border --gay
   espeak -s 150 -p 70 "Choose the tool"
echo "1. RedHawk
2. Zphisher
3. TBomb
4. BlackPhish
5. CamHacker
6. Osintgram
7. Knockpy
8. Bug Bounty
9. Back"
   read tool
while (( $tool > 9 ))
 do 
  echo " Change the input " | figlet -c -w 180 | lolcat
  espeak -s 150 -p 70 " change the input "
  read tool
done
  echo "Tool selected $tool" | figlet -c -w 150
  espeak -s 150 -p 70 "Tool selected $tool"
if (( tool == 1 ))
  then 
  xdotool type 'redhawk/RED_HAWK'
  espeak -s 150 -p 70 "welcome to red hawk"
  clear
elif (( tool == 2 ))
  then 
  xdotool type 'zphisher/zphisher.sh'
  espeak -s 150 -p 70 "welcome to zphisher"
  clear
elif (( tool == 3 ))
  then 
  xdotool type 'TBomb/TBomb.sh'
  espeak -s 150 -p 70  "welcome to TBomb"
  clear
elif (( tool == 4 ))
  then 
  xdotool type 'BlackPhish'
  espeak -s 150 -p 70 "welcome to BlackPhish"
  clear
elif (( tool == 5 ))
  then 
  xdotool type 'CamHacker'
  espeak -s 150 -p 70 "welcome to CamHacker"
  clear
elif (( tool == 6 ))
  then 
  xdotool type 'Osintgram'
  espeak -s 150 -p 70 "welcome to Osintgram"
  clear
elif (( tool == 7 ))
  then 
  xdotool type 'Knockpy'
  espeak -s 150 -p 70 "welcome to knockpy"
  clear
elif (( tool == 8 ))
  then 
  espeak -s 150 -p 70 "Let's go for Bug bounty"
  xdg-open https://www.openbugbounty.org/report/
  clear
elif (( $tool == 9 ))
  then
  clear 
  loop
else
echo "bye"
fi 
}

#loop after firstpage
function loop()
{
firstpage 
read option

while (( $option > 4 ))
   do
   echo "WRONG INPUT PLEASE CHOOSE THE CORRECT ONE" | figlet -c -w 200
       espeak -s 150 -p 70 "WRONG INPUT PLEASE CHOOSE THE CORRECT ONE"
read option
done
echo " Selected option is $option" | figlet
clear

if (( $option == 1 ))
then 
calculator

elif (( $option == 2 ))
then
secondpage

elif (( $option == 3 ))
  then
  clear
thirdpage
 
elif (( $option == 4 ))
 then
 figlet -c -w 200 "THANKS FOR USING THE TOOL" | lolcat
 espeak -s 150 -p 70 "THANKS FOR USING THE TOOL" 
 cmatrix &&shutdown 

else
    echo "WRONG INPUT PLEASE CHOOSE THE CORRECT ONE" | figlet -c -w 200
    espeak -s 150 -p 70 "WRONG INPUT PLEASE CHOOSE THE CORRECT ONE"
  clear
fi
#main choice page end
}



clear
toilet -f mono12 -F metal -w 500 "WELCOME TO VAAST" | lolcat
             espeak -s 150 -p 70 "WELCOME TO VAAST" 
             sleep 2
             sl
clear 
figlet -c -f slant -w 200 "ENTER USERNAME --" |  lolcat
      espeak -s 150 -p 70 "ENTER USERNAME "
      read user
figlet -c -f slant -w 200 "ENTER PASSWORD --" | lolcat
      espeak -s 150 -p 70 "ENTER PASSWORD "
      read pass
      
      
if [[ $user == "vanshika" && $pass == "148vanshika" ]]
then
    clear
    echo "  WELCOME  TO   THE   TERMINAL" | toilet -F border --gay -w 500
        espeak -s 150 -p 70 "WELCOME TO THE TERMINAL"

clear
#option selection terminal 
firstpage 
read option

while (( $option > 4 ))
   do
   echo "WRONG INPUT PLEASE CHOOSE THE CORRECT ONE" | figlet -c -w 200
       espeak -s 150 -p 70 "WRONG INPUT PLEASE CHOOSE THE CORRECT ONE"
read option
done
echo " Selected option is $option" | figlet
clear

if (( $option == 1 ))
then 
calculator

elif (( $option == 2 ))
then
secondpage

elif (( $option == 3 ))
  then
  clear
thirdpage
 
elif (( $option == 4 ))
 then
 figlet -c -w 200 "THANKS FOR USING THE TOOL" | lolcat
 espeak -s 150 -p 70 "THANKS FOR USING THE TOOL" 
 cmatrix &&shutdown 

else
    echo "WRONG INPUT PLEASE CHOOSE THE CORRECT ONE" | figlet -c -w 200
    espeak -s 150 -p 70 "WRONG INPUT PLEASE CHOOSE THE CORRECT ONE"
  clear
fi
#main choice page end

else
 clear
     cowsay -f gnu "Incorrect password, bye" | lolcat
     espeak -s 180 -p 70 "incorrect password"
     espeak -s 150 -p 70 "bye" 
shutdown && cmatrix && sl
sl
sl
sl
sl
sl
sl
sl
sl
sl
fi
