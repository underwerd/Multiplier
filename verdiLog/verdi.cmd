debImport "-f" "filelist.f"
debLoadSimResult /home/ICer/ic_prjs/multiplier/tb_Multiplier_p.fsdb
wvCreateWindow
srcHBSelect "tb_Multiplier" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_Multiplier" -delim "."
srcHBSelect "tb_Multiplier" -win $_nTrace1
srcHBSelect "tb_Multiplier" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {40 45 4 1 1 1} -backward
wvAddSignal -win $_nWave2 "/tb_Multiplier/clk" "/tb_Multiplier/uut/rst_n" \
           "/tb_Multiplier/rst_n" "/tb_Multiplier/uut/Multiplicant\[15:0\]" \
           "/tb_Multiplier/B\[15:0\]" "/tb_Multiplier/uut/Multiplier\[15:0\]" \
           "/tb_Multiplier/A\[15:0\]" "/tb_Multiplier/uut/result\[31:0\]" \
           "/tb_Multiplier/Product\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvZoom -win $_nWave2 87576.633846 287751.796923
wvZoom -win $_nWave2 115539.564319 133894.086964
wvZoom -win $_nWave2 118645.714305 121130.634294
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoom -win $_nWave2 712256.923077 4490315.384615
wvZoom -win $_nWave2 916853.319763 1579466.649941
wvZoom -win $_nWave2 994735.871187 1073026.184660
wvZoom -win $_nWave2 1007503.214615 1015067.263363
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 26147880.676923 29275617.600000
wvZoom -win $_nWave2 26931258.478577 27169928.865322
wvZoom -win $_nWave2 26991036.230820 27003226.779804
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debExit
