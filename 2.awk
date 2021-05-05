echo "hola", $1
echo "la fecha y hora actual:"
date
sum=0
count=0
for file in ´ls -1´
do
    lines=´wc -1 $file | awk ´{print $1}´´
    echo "El archivo" $file "tiene" $lines "lineas."
    sum=´expr $sum + $lines´
    count=´expr $count +1´
done
echo "En total son" $sum "lineas en los" $count "archivos."
prom=´expr $sum / $count´
echo "Promedio redondeado:" $prom
exit 0