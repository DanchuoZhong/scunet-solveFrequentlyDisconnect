# 适用情景:
连接上校园网WiFi的情况下不断掉线
# 环境：
- Window10
- python3与pip3
# 使用方法：
1. 如果你之前没有使用powershell运行过脚本，需要先以**管理员**形式运行powershell，然后输入`Set-ExecutionPolicy RemoteSigned`,再输入`A`
<div align="center">
	<span style="display: inline-block">
		<img src="README\2019-09-04-20-11-56.png" width="100%" />
	</span>
	<p><i style="font-size:12px; color:read"></i></p>
</div>

2. 装好大佬的脚本 https://github.com/IanSmith123/SCUNET，然后输入`scunet`登录一次，确认能登陆成功。具体细节参考该repo的README
<div align="center">
	<span style="display: inline-block">
		<img src="README\2019-09-04-20-15-31.png" width="70%" />
	</span>
	<p><i style="font-size:12px; color:read"></i></p>
</div>

3. 运行该脚本即可

# 已知bug
在已经登录的情况下如果断开WiFi连接，该脚本仍然会显示“正常联网，无需登录”
<div align="center">
	<span style="display: inline-block">
		<img src="README\2019-09-04-21-10-31.png" width="70%" />
	</span>
	<p><i style="font-size:12px; color:read"></i></p>
</div>

这是由于scunet登录脚本中的bug导致的，为了避免该bug的出现请手动**确认自己连上了WiFi**