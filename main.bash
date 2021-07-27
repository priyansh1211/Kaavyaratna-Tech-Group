echo "Enter first number a:";
read a;
echo "Enter second number b:";
read b;
echo "1.Addition";
echo "2.Subtraction";
echo "3.Multiplication";
echo "4.Division";
echo "5.Modulo";
echo "Enter choice from above...";
read c;
case $c in
1)echo "Addition= "$(($a+$b));
;;
2)echo "Subtraction= "$(($a-$b));
;;
3)echo "Multiplication= "$(($a*$b));
;;
4)echo "Division= "$(($a/$b));
;;
5)echo "Modulo= "$(($a%$b));
;;
*)echo "Invalid choice...";
;;
esac
echo "Do you want to continue?";
echo "1.Yes";
echo "2.No";
read d;
echo "Your choice "$d;
case $d in
1)sh ./main.bash
;;
2)echo "Exiting..";
exit;
esac