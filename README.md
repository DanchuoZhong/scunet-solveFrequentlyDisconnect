# 适用情景:
校园网WiFi的情况下不断掉线
# 环境：
- Window10
- python3与pip3
# 更新:
19/9/07/20：00：修改了逻辑。通过实验修改了sleep的时间。基本能比较流畅的上网了。打游戏不行但看视频差不多。
19/9/07/20：55：输出时间间隔查看登录耗时；修改scunet.py，减少登录失败时花费的时间

# 使用方法：
0. 将该脚本的压缩包下载到某个地方并解压缩
1. 如果你之前没有使用powershell运行过脚本，需要先以**管理员**形式运行powershell，然后输入`Set-ExecutionPolicy RemoteSigned`,再输入`A`
<div align="center">
	<span style="display: inline-block">
		<img src="README\2019-09-04-20-11-56.png" width="100%" />
	</span>
	<p><i style="font-size:12px; color:read"></i></p>
</div>

2. ~~装好大佬的脚本 https://github.com/IanSmith123/SCUNET，然后输入`scunet`登录一次，确认能登陆成功。具体细节参考该repo的README~~ 由于（丑陋地）修改了源码，不需要使用pip安装该脚本，直接使用`cd`到该路径下`python3 scunet.py`运行一次试试能否使用即可。

3. 运行该脚本即可，在powershell中cd到该文件夹下，输入`net.ps1`(注意是数字1不是字母l)

# 已知bug
由于我丑陋的修改了代码，在已经登录的情况下如果断开WiFi连接，该脚本会报一串错误。为了避免该bug的出现请手动**确认自己连上了WiFi**。如果出现了一大串看不懂的报错，检查一下是否连上了WiFi

# 鸣谢
感谢 https://github.com/IanSmith123/SCUNET 的作者宾神和魏巨的协助

# 如果你要使用小飞机
某些情况下强行杀死小飞机的进程（如关机）会导致下一次WiFi认证失败（如重启后），因此需要参考 https://scunet.syaoran.top/8/egg.html 倒数第二点对小飞机进行一些设置（我该不会是最后一个知道的吧）