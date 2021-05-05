> ls -l | awk '{print $2 "," $4}'

    > less total.awk
    #!/bin/awk -f

    {print $5; total = total + $5}
    END {print "Total = " total}
    > chmod u+x total.awk
    > ls -l | ./total.awk

if ($3 >= 100) print $0