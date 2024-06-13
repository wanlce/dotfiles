import vapoursynth as vs
from vapoursynth import core
clip=video_in
fps = container_fps if container_fps > 0.1 else 23.976
clip = clip.resize.Point(format=vs.YUV420P8, dither_type="random")
super_params="{pel:1,scale:{up:0},gpu:0,full:false,rc:true}"
analyse_params="{block:{overlap:1},main:{search:{coarse:{distance:-8},type:2}}}"
if container_fps > 55 :
	raise Warning("源帧率超过限制的范围，已临时禁用该脚本。")
smoothfps_params = "{rate:{num:60,den:1,abs:true},algo:13,scene:{},mask:{area:75,cover:80}}"
analyse_params="{gpu:0,block:{overlap:0},main:{search:{coarse:{distance:-8},type:2}}}"
super=core.svp1.Super(clip,super_params)
vectors=core.svp1.Analyse(super["clip"],super["data"],clip,analyse_params)
smooth=core.svp2.SmoothFps(clip,super["clip"],super["data"],vectors["clip"],vectors["data"],smoothfps_params,src=clip,fps=fps)
smooth.set_output()
