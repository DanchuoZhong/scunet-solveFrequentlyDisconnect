$count=0
while(1){
    $x=ping -n 1 baidu.com
    if($x[5][30] -eq "0"){
        $count=$count+1
        echo "Already connected,count=$count"
        sleep 1
    }else{
        do{
	echo "using scunet script to log in..."
	scunet
	echo "done"
	sleep 1
	$x=ping -n 1 baidu.com
        }while($x[5][30] -eq "1");
        $count=0
    }
}