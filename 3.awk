cont=si
n=$1
i=2

# mientras i es menor que n
while [ $i -lt $n]
do

# dividimos por i
div=´expr $n / $i´

# calculamos el producto del resultado con i
prod=´expr $div ´*´ $i´
# tomamos la diferencia
mod=´expr $n - $prod´

# si la diferencia es cero
if [ $mod -eq 0 ]
 then
        echo $n "no es primo, tiene divisores" $i "y" $div"."
        exit 0
 fi
i=´expr $i + 1´
done
echo $n "es primo."
exit 0