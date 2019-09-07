$count=0
while(1){
    $x=ping -n 1 -w 1000 baidu.com
    if($x[5][30] -eq "0"){
        $count=$count+1
        echo "Already connected,count=$count"
        sleep 1
    }else{
        $a=get-date
        do{
            $a=get-date
            echo "using scunet script to log in..."
            python scunet.py
            $b=get-date
            $span=(NEW-TIMESPAN -start $a -end $b).totalseconds
            $a=$b
            echo "done,span=$span"
            sleep 0.7
            $x=ping -n 1 -w 1000 baidu.com
            # echo $x[5]
        }while($x[5][30] -eq "1");
        $count=0
    }
}