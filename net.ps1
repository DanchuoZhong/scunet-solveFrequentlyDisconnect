while(1){
    $x=ping -n 1 baidu.com
    sleep 1
    if($x[5][30] -eq "0"){
        echo "Already connected"
        sleep 3
    }else{
        echo "using scunet script to log in..."
        scunet
        echo "done"
    }
}