
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
�Placement Constraints Check for IO constraints: Partially locked IO Bus is found. Following components of the IO Bus %s are not locked:  %s %s %s %s %s %s %s %s%s*DRC26
 " 
A[15:0]A2default:default2default:default28
 ""
A[15]A[15]2default:default2default:default28
 ""
A[14]A[14]2default:default2default:default28
 ""
A[13]A[13]2default:default2default:default28
 ""
A[12]A[12]2default:default2default:default28
 ""
A[11]A[11]2default:default2default:default28
 ""
A[10]A[10]2default:default2default:default26
 " 
A[9]A[9]2default:default2default:default26
 " 
A[8]A[8]2default:default2default:default28
  DRC|Implementation|Placement|IOs2default:default8ZPLIO-3h px� 
�
�Placement Constraints Check for IO constraints: Partially locked IO Bus is found. Following components of the IO Bus %s are not locked:  %s %s %s %s %s %s %s %s%s*DRC26
 " 
B[15:0]B2default:default2default:default28
 ""
B[15]B[15]2default:default2default:default28
 ""
B[14]B[14]2default:default2default:default28
 ""
B[13]B[13]2default:default2default:default28
 ""
B[12]B[12]2default:default2default:default28
 ""
B[11]B[11]2default:default2default:default28
 ""
B[10]B[10]2default:default2default:default26
 " 
B[9]B[9]2default:default2default:default26
 " 
B[8]B[8]2default:default2default:default28
  DRC|Implementation|Placement|IOs2default:default8ZPLIO-3h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 2 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: a42d83b9
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 2244.551 ; gain = 72.020 ; free physical = 152 ; free virtual = 77262default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
{
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64h px� 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
M
8Phase 2.1 Fix Topology Constraints | Checksum: a42d83b9
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:20 ; elapsed = 00:00:16 . Memory (MB): peak = 2250.539 ; gain = 78.008 ; free physical = 137 ; free virtual = 76952default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.2 Pre Route Cleanup | Checksum: a42d83b9
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:20 ; elapsed = 00:00:16 . Memory (MB): peak = 2250.539 ; gain = 78.008 ; free physical = 152 ; free virtual = 76942default:defaulth px� 
I
4Phase 2 Router Initialization | Checksum: 1289ab2ca
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:20 ; elapsed = 00:00:16 . Memory (MB): peak = 2257.805 ; gain = 85.273 ; free physical = 221 ; free virtual = 76912default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 1e2abd041
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:20 ; elapsed = 00:00:16 . Memory (MB): peak = 2257.805 ; gain = 85.273 ; free physical = 218 ; free virtual = 76892default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
G
2Phase 4.1 Global Iteration 0 | Checksum: 798b8b39
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 2257.805 ; gain = 85.273 ; free physical = 219 ; free virtual = 76892default:defaulth px� 
E
0Phase 4 Rip-up And Reroute | Checksum: 798b8b39
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 2257.805 ; gain = 85.273 ; free physical = 219 ; free virtual = 76892default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
N
9Phase 5 Delay and Skew Optimization | Checksum: 798b8b39
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 2257.805 ; gain = 85.273 ; free physical = 219 ; free virtual = 76892default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
B
-Phase 6.1 Hold Fix Iter | Checksum: 798b8b39
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 2257.805 ; gain = 85.273 ; free physical = 219 ; free virtual = 76892default:defaulth px� 
@
+Phase 6 Post Hold Fix | Checksum: 798b8b39
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 2257.805 ; gain = 85.273 ; free physical = 219 ; free virtual = 76892default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
A
,Phase 7 Route finalize | Checksum: 798b8b39
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 2257.805 ; gain = 85.273 ; free physical = 218 ; free virtual = 76892default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
H
3Phase 8 Verifying routed nets | Checksum: 798b8b39
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 2259.805 ; gain = 87.273 ; free physical = 217 ; free virtual = 76872default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 12539822f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 2259.805 ; gain = 87.273 ; free physical = 217 ; free virtual = 76872default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:17 . Memory (MB): peak = 2259.805 ; gain = 87.273 ; free physical = 251 ; free virtual = 77212default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
522default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:222default:default2
00:00:182default:default2
2259.8052default:default2
87.2732default:default2
2512default:default2
77212default:defaultZ17-722h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.022default:default2
00:00:00.012default:default2
2259.8052default:default2
0.0002default:default2
2502default:default2
77232default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2j
V/media/razvan/Elements1/Facultate/CN/Tema/claAdder/claAdder.runs/impl_1/top_routed.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2r
^Executing : report_drc -file top_drc_routed.rpt -pb top_drc_routed.pb -rpx top_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2e
Qreport_drc -file top_drc_routed.rpt -pb top_drc_routed.pb -rpx top_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
Z/media/razvan/Elements1/Facultate/CN/Tema/claAdder/claAdder.runs/impl_1/top_drc_routed.rptZ/media/razvan/Elements1/Facultate/CN/Tema/claAdder/claAdder.runs/impl_1/top_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file top_methodology_drc_routed.rpt -pb top_methodology_drc_routed.pb -rpx top_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
}report_methodology -file top_methodology_drc_routed.rpt -pb top_methodology_drc_routed.pb -rpx top_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
f/media/razvan/Elements1/Facultate/CN/Tema/claAdder/claAdder.runs/impl_1/top_methodology_drc_routed.rptf/media/razvan/Elements1/Facultate/CN/Tema/claAdder/claAdder.runs/impl_1/top_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
%s4*runtcl2�
nExecuting : report_power -file top_power_routed.rpt -pb top_power_summary_routed.pb -rpx top_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2u
areport_power -file top_power_routed.rpt -pb top_power_summary_routed.pb -rpx top_power_routed.rpx2default:defaultZ4-113h px� 
P
/No user defined clocks was found in the design!216*powerZ33-232h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
642default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
%s4*runtcl2g
SExecuting : report_route_status -file top_route_status.rpt -pb top_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file top_timing_summary_routed.rpt -rpx top_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 
�
iThere are no user specified timing constraints. Timing constraints are needed for proper timing analysis.200*timingZ38-313h px� 
|
%s4*runtcl2`
LExecuting : report_incremental_reuse -file top_incremental_reuse_routed.rpt
2default:defaulth px� 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px� 
|
%s4*runtcl2`
LExecuting : report_clock_utilization -file top_clock_utilization_routed.rpt
2default:defaulth px� 


End Record