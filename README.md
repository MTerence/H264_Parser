# H264_Parser

本文中的程序是一个H.264码流解析程序。该程序可以从H.264码流中分析得到它的基本单元NALU，并且可以简单解析NALU首部的字段。通过修改该程序可以实现不同的H.264码流处理功能。


原理

H.264原始码流（又称为“裸流”）是由一个一个的NALU组成的。他们的结构如下图所示。




其中每个NALU之间通过startcode（起始码）进行分隔，起始码分成两种：0x000001（3Byte）或者0x00000001（4Byte）。如果NALU对应的Slice为一帧的开始就用0x00000001，否则就用0x000001。
H.264码流解析的步骤就是首先从码流中搜索0x000001和0x00000001，分离出NALU；然后再分析NALU的各个字段。本文的程序即实现了上述的两个步骤。
