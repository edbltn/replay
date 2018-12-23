; ModuleID = 'Replay'

@s = global { i32, i32, i32, { i32, i32 }* }* null
@Rock = global i32 0
@Paper = global i32 0
@Scissors = global i32 0
@fmt = private unnamed_addr constant [3 x i8] c"%s\00"
@fmtln = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmtd = private unnamed_addr constant [3 x i8] c"%d\00"
@fmtf = private unnamed_addr constant [3 x i8] c"%g\00"
@fmtm = private unnamed_addr constant [4 x i8] c"%d \00"
@fmtt = private unnamed_addr constant [19 x i8] c"( %s) -> state %d\0A\00"
@fmts = private unnamed_addr constant [19 x i8] c"State %d: play %d\0A\00"
@fmtclr = private unnamed_addr constant [1 x i8] zeroinitializer
@fmte = private unnamed_addr constant [15 x i8] c"%s: %d =/= %d\0A\00"

declare i32 @printf(i8*, ...)

declare i8* @strcat(i8*, i8*, ...)

declare i8* @strcpy(i8*, i8*, ...)

declare i32 @strlen(i8*, ...)

declare i32 @sprintf(i8*, i8*, ...)

declare i32 @rand(...)

declare void @srand(i32, ...)

declare i32 @time(...)

declare double @pow(double, double, ...)

define i32 @main(...) gc "statepoint-example" {
entry:
  %time = call i32 (...) @time()
  call void (i32, ...) @srand(i32 %time)
  br label %block

block:                                            ; preds = %entry
  store i32 0, i32* @Rock
  store i32 1, i32* @Paper
  store i32 2, i32* @Scissors
  %newstrategy = alloca { i32, i32, i32, { i32, i32 }* }
  %exp = call double (double, double, ...) @pow(double 3.000000e+00, double 2.000000e+00)
  %size = fptoui double %exp to i32
  %size1 = mul i32 %size, 4
  %trans = alloca { i32, i32 }, i32 %size1
  %nplayersdest = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nmovesdest = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nstatesdest = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 2
  %ptrdest = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  store i32 2, i32* %nplayersdest
  store i32 3, i32* %nmovesdest
  store i32 4, i32* %nstatesdest
  store { i32, i32 }* %trans, { i32, i32 }** %ptrdest
  %outputs = alloca { i32, i32* }*
  %newarray = alloca { i32, i32* }
  %contents = alloca i32, i32 4
  %ptrdest2 = getelementptr { i32, i32* }, { i32, i32* }* %newarray, i32 0, i32 0
  %ptrdest3 = getelementptr { i32, i32* }, { i32, i32* }* %newarray, i32 0, i32 1
  store i32 4, i32* %ptrdest2
  store i32* %contents, i32** %ptrdest3
  store { i32, i32* }* %newarray, { i32, i32* }** %outputs
  %addr = load { i32, i32* }*, { i32, i32* }** %outputs
  %getcon = getelementptr { i32, i32* }, { i32, i32* }* %addr, i32 0, i32 1
  %conaddr = load i32*, i32** %getcon
  %access = getelementptr i32, i32* %conaddr, i32 0
  %Rock = load i32, i32* @Rock
  store i32 %Rock, i32* %access
  %state0 = alloca i32
  store i32 0, i32* %state0
  %addr4 = load { i32, i32* }*, { i32, i32* }** %outputs
  %getcon5 = getelementptr { i32, i32* }, { i32, i32* }* %addr4, i32 0, i32 1
  %conaddr6 = load i32*, i32** %getcon5
  %access7 = getelementptr i32, i32* %conaddr6, i32 1
  %Scissors = load i32, i32* @Scissors
  store i32 %Scissors, i32* %access7
  %state1 = alloca i32
  store i32 1, i32* %state1
  %addr8 = load { i32, i32* }*, { i32, i32* }** %outputs
  %getcon9 = getelementptr { i32, i32* }, { i32, i32* }* %addr8, i32 0, i32 1
  %conaddr10 = load i32*, i32** %getcon9
  %access11 = getelementptr i32, i32* %conaddr10, i32 2
  %Paper = load i32, i32* @Paper
  store i32 %Paper, i32* %access11
  %state2 = alloca i32
  store i32 2, i32* %state2
  %exp12 = call double (double, double, ...) @pow(double 3.000000e+00, double 2.000000e+00)
  %size13 = fptoui double %exp12 to i32
  %statei = alloca i32
  %transi = alloca i32
  store i32 0, i32* %statei
  br label %statecond

statecond:                                        ; preds = %merge2, %block
  %statei43 = load i32, i32* %statei
  %statecomp = icmp slt i32 %statei43, 4
  br i1 %statecomp, label %state_loop, label %merge1

state_loop:                                       ; preds = %statecond
  store i32 0, i32* %transi
  br label %transcond

transcond:                                        ; preds = %merge3, %state_loop
  %transi40 = load i32, i32* %transi
  %transcomp = icmp slt i32 %transi40, %size13
  br i1 %transcomp, label %trans_loop, label %merge2

trans_loop:                                       ; preds = %transcond
  %statei14 = load i32, i32* %statei
  %transi15 = load i32, i32* %transi
  %field = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr = load { i32, i32 }*, { i32, i32 }** %field
  %state = mul i32 %size13, %statei14
  %state16 = add i32 %transi15, %state
  %access17 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr, i32 %state16
  %field18 = getelementptr { i32, i32 }, { i32, i32 }* %access17, i32 0, i32 1
  store i32 %statei14, i32* %field18
  %ifcomp = icmp slt i32 %statei14, 3
  br i1 %ifcomp, label %then, label %else

merge3:                                           ; preds = %else, %then
  %transi39 = load i32, i32* %transi
  %next = add i32 %transi39, 1
  store i32 %next, i32* %transi
  br label %transcond

then:                                             ; preds = %trans_loop
  %statei19 = load i32, i32* %statei
  %transi20 = load i32, i32* %transi
  %field21 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr22 = load { i32, i32 }*, { i32, i32 }** %field21
  %state23 = mul i32 %size13, %statei19
  %state24 = add i32 %transi20, %state23
  %access25 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr22, i32 %state24
  %field26 = getelementptr { i32, i32 }, { i32, i32 }* %access25, i32 0, i32 0
  %addr27 = load { i32, i32* }*, { i32, i32* }** %outputs
  %getcon28 = getelementptr { i32, i32* }, { i32, i32* }* %addr27, i32 0, i32 1
  %conaddr29 = load i32*, i32** %getcon28
  %access30 = getelementptr i32, i32* %conaddr29, i32 %statei19
  %outputmove = load i32, i32* %access30
  store i32 %outputmove, i32* %field26
  br label %merge3

else:                                             ; preds = %trans_loop
  %statei31 = load i32, i32* %statei
  %transi32 = load i32, i32* %transi
  %field33 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr34 = load { i32, i32 }*, { i32, i32 }** %field33
  %state35 = mul i32 %size13, %statei31
  %state36 = add i32 %transi32, %state35
  %access37 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr34, i32 %state36
  %field38 = getelementptr { i32, i32 }, { i32, i32 }* %access37, i32 0, i32 0
  store i32 0, i32* %field38
  br label %merge3

merge2:                                           ; preds = %transcond
  %statei41 = load i32, i32* %statei
  %next42 = add i32 %statei41, 1
  store i32 %next42, i32* %statei
  br label %statecond

merge1:                                           ; preds = %statecond
  %moves = alloca { i32, i32* }*
  %newarray44 = alloca { i32, i32* }
  %contents45 = alloca i32, i32 2
  %ptrdest46 = getelementptr { i32, i32* }, { i32, i32* }* %newarray44, i32 0, i32 0
  %ptrdest47 = getelementptr { i32, i32* }, { i32, i32* }* %newarray44, i32 0, i32 1
  store i32 2, i32* %ptrdest46
  store i32* %contents45, i32** %ptrdest47
  store { i32, i32* }* %newarray44, { i32, i32* }** %moves
  %addr48 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon49 = getelementptr { i32, i32* }, { i32, i32* }* %addr48, i32 0, i32 1
  %conaddr50 = load i32*, i32** %getcon49
  %access51 = getelementptr i32, i32* %conaddr50, i32 0
  %Scissors52 = load i32, i32* @Scissors
  store i32 %Scissors52, i32* %access51
  %addr53 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon54 = getelementptr { i32, i32* }, { i32, i32* }* %addr53, i32 0, i32 1
  %conaddr55 = load i32*, i32** %getcon54
  %access56 = getelementptr i32, i32* %conaddr55, i32 1
  %Rock57 = load i32, i32* @Rock
  store i32 %Rock57, i32* %access56
  %state158 = load i32, i32* %state1
  %field59 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nplayers = load i32, i32* %field59
  %field60 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nmoves = load i32, i32* %field60
  %sitofp = sitofp i32 %nmoves to double
  %sitofp61 = sitofp i32 %nplayers to double
  %exp62 = call double (double, double, ...) @pow(double %sitofp, double %sitofp61)
  %size63 = fptoui double %exp62 to i32
  %field64 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr65 = load { i32, i32 }*, { i32, i32 }** %field64
  %start = mul i32 %size63, 0
  %sitofp66 = sitofp i32 %nmoves to double
  %sitofp67 = sitofp i32 %nplayers to double
  %addr68 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon69 = getelementptr { i32, i32* }, { i32, i32* }* %addr68, i32 0, i32 1
  %conaddr70 = load i32*, i32** %getcon69
  %access71 = getelementptr i32, i32* %conaddr70, i32 0
  %move = load i32, i32* %access71
  %sitofp72 = sitofp i32 %move to double
  %temp = call double (double, double, ...) @pow(double %sitofp66, double 0.000000e+00)
  %temp2 = fmul double %temp, %sitofp72
  %current = fptoui double %temp2 to i32
  %addr73 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon74 = getelementptr { i32, i32* }, { i32, i32* }* %addr73, i32 0, i32 1
  %conaddr75 = load i32*, i32** %getcon74
  %access76 = getelementptr i32, i32* %conaddr75, i32 1
  %move77 = load i32, i32* %access76
  %sitofp78 = sitofp i32 %move77 to double
  %temp79 = call double (double, double, ...) @pow(double %sitofp66, double 1.000000e+00)
  %temp280 = fmul double %temp79, %sitofp78
  %current81 = fptoui double %temp280 to i32
  %result = add i32 %current81, 0
  %result82 = add i32 %current, %result
  %index = add i32 %start, %result82
  %access83 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr65, i32 %index
  %field84 = getelementptr { i32, i32 }, { i32, i32 }* %access83, i32 0, i32 1
  store i32 %state158, i32* %field84
  %addr85 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon86 = getelementptr { i32, i32* }, { i32, i32* }* %addr85, i32 0, i32 1
  %conaddr87 = load i32*, i32** %getcon86
  %access88 = getelementptr i32, i32* %conaddr87, i32 0
  %Rock89 = load i32, i32* @Rock
  store i32 %Rock89, i32* %access88
  %addr90 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon91 = getelementptr { i32, i32* }, { i32, i32* }* %addr90, i32 0, i32 1
  %conaddr92 = load i32*, i32** %getcon91
  %access93 = getelementptr i32, i32* %conaddr92, i32 1
  %Rock94 = load i32, i32* @Rock
  store i32 %Rock94, i32* %access93
  %state295 = load i32, i32* %state2
  %field96 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nplayers97 = load i32, i32* %field96
  %field98 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nmoves99 = load i32, i32* %field98
  %sitofp100 = sitofp i32 %nmoves99 to double
  %sitofp101 = sitofp i32 %nplayers97 to double
  %exp102 = call double (double, double, ...) @pow(double %sitofp100, double %sitofp101)
  %size103 = fptoui double %exp102 to i32
  %field104 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr105 = load { i32, i32 }*, { i32, i32 }** %field104
  %start106 = mul i32 %size103, 0
  %sitofp107 = sitofp i32 %nmoves99 to double
  %sitofp108 = sitofp i32 %nplayers97 to double
  %addr109 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon110 = getelementptr { i32, i32* }, { i32, i32* }* %addr109, i32 0, i32 1
  %conaddr111 = load i32*, i32** %getcon110
  %access112 = getelementptr i32, i32* %conaddr111, i32 0
  %move113 = load i32, i32* %access112
  %sitofp114 = sitofp i32 %move113 to double
  %temp115 = call double (double, double, ...) @pow(double %sitofp107, double 0.000000e+00)
  %temp2116 = fmul double %temp115, %sitofp114
  %current117 = fptoui double %temp2116 to i32
  %addr118 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon119 = getelementptr { i32, i32* }, { i32, i32* }* %addr118, i32 0, i32 1
  %conaddr120 = load i32*, i32** %getcon119
  %access121 = getelementptr i32, i32* %conaddr120, i32 1
  %move122 = load i32, i32* %access121
  %sitofp123 = sitofp i32 %move122 to double
  %temp124 = call double (double, double, ...) @pow(double %sitofp107, double 1.000000e+00)
  %temp2125 = fmul double %temp124, %sitofp123
  %current126 = fptoui double %temp2125 to i32
  %result127 = add i32 %current126, 0
  %result128 = add i32 %current117, %result127
  %index129 = add i32 %start106, %result128
  %access130 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr105, i32 %index129
  %field131 = getelementptr { i32, i32 }, { i32, i32 }* %access130, i32 0, i32 1
  store i32 %state295, i32* %field131
  %addr132 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon133 = getelementptr { i32, i32* }, { i32, i32* }* %addr132, i32 0, i32 1
  %conaddr134 = load i32*, i32** %getcon133
  %access135 = getelementptr i32, i32* %conaddr134, i32 0
  store i32 0, i32* %access135
  %addr136 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon137 = getelementptr { i32, i32* }, { i32, i32* }* %addr136, i32 0, i32 1
  %conaddr138 = load i32*, i32** %getcon137
  %access139 = getelementptr i32, i32* %conaddr138, i32 1
  store i32 0, i32* %access139
  %addr140 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon141 = getelementptr { i32, i32* }, { i32, i32* }* %addr140, i32 0, i32 1
  %conaddr142 = load i32*, i32** %getcon141
  %access143 = getelementptr i32, i32* %conaddr142, i32 0
  store i32 0, i32* %access143
  br label %wildcond

wildcond:                                         ; preds = %merge, %merge1
  %player190 = load i32, i32* %access143
  %wildcomp191 = icmp slt i32 %player190, 3
  br i1 %wildcomp191, label %wildloop, label %merge192

wildloop:                                         ; preds = %wildcond
  %addr144 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon145 = getelementptr { i32, i32* }, { i32, i32* }* %addr144, i32 0, i32 1
  %conaddr146 = load i32*, i32** %getcon145
  %access147 = getelementptr i32, i32* %conaddr146, i32 1
  store i32 0, i32* %access147
  br label %wildcond148

wildcond148:                                      ; preds = %wildloop149, %wildloop
  %player = load i32, i32* %access147
  %wildcomp = icmp slt i32 %player, 3
  br i1 %wildcomp, label %wildloop149, label %merge

wildloop149:                                      ; preds = %wildcond148
  %state2150 = load i32, i32* %state2
  %field151 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nplayers152 = load i32, i32* %field151
  %field153 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nmoves154 = load i32, i32* %field153
  %sitofp155 = sitofp i32 %nmoves154 to double
  %sitofp156 = sitofp i32 %nplayers152 to double
  %exp157 = call double (double, double, ...) @pow(double %sitofp155, double %sitofp156)
  %size158 = fptoui double %exp157 to i32
  %field159 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr160 = load { i32, i32 }*, { i32, i32 }** %field159
  %start161 = mul i32 %size158, 1
  %sitofp162 = sitofp i32 %nmoves154 to double
  %sitofp163 = sitofp i32 %nplayers152 to double
  %addr164 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon165 = getelementptr { i32, i32* }, { i32, i32* }* %addr164, i32 0, i32 1
  %conaddr166 = load i32*, i32** %getcon165
  %access167 = getelementptr i32, i32* %conaddr166, i32 0
  %move168 = load i32, i32* %access167
  %sitofp169 = sitofp i32 %move168 to double
  %temp170 = call double (double, double, ...) @pow(double %sitofp162, double 0.000000e+00)
  %temp2171 = fmul double %temp170, %sitofp169
  %current172 = fptoui double %temp2171 to i32
  %addr173 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon174 = getelementptr { i32, i32* }, { i32, i32* }* %addr173, i32 0, i32 1
  %conaddr175 = load i32*, i32** %getcon174
  %access176 = getelementptr i32, i32* %conaddr175, i32 1
  %move177 = load i32, i32* %access176
  %sitofp178 = sitofp i32 %move177 to double
  %temp179 = call double (double, double, ...) @pow(double %sitofp162, double 1.000000e+00)
  %temp2180 = fmul double %temp179, %sitofp178
  %current181 = fptoui double %temp2180 to i32
  %result182 = add i32 %current181, 0
  %result183 = add i32 %current172, %result182
  %index184 = add i32 %start161, %result183
  %access185 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr160, i32 %index184
  %field186 = getelementptr { i32, i32 }, { i32, i32 }* %access185, i32 0, i32 1
  store i32 %state2150, i32* %field186
  %loadwild = load i32, i32* %access147
  %next187 = add i32 %loadwild, 1
  store i32 %next187, i32* %access147
  br label %wildcond148

merge:                                            ; preds = %wildcond148
  %loadwild188 = load i32, i32* %access143
  %next189 = add i32 %loadwild188, 1
  store i32 %next189, i32* %access143
  br label %wildcond

merge192:                                         ; preds = %wildcond
  %addr193 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon194 = getelementptr { i32, i32* }, { i32, i32* }* %addr193, i32 0, i32 1
  %conaddr195 = load i32*, i32** %getcon194
  %access196 = getelementptr i32, i32* %conaddr195, i32 0
  store i32 0, i32* %access196
  %addr197 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon198 = getelementptr { i32, i32* }, { i32, i32* }* %addr197, i32 0, i32 1
  %conaddr199 = load i32*, i32** %getcon198
  %access200 = getelementptr i32, i32* %conaddr199, i32 1
  %Paper201 = load i32, i32* @Paper
  store i32 %Paper201, i32* %access200
  %addr202 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon203 = getelementptr { i32, i32* }, { i32, i32* }* %addr202, i32 0, i32 1
  %conaddr204 = load i32*, i32** %getcon203
  %access205 = getelementptr i32, i32* %conaddr204, i32 0
  store i32 0, i32* %access205
  br label %wildcond206

wildcond206:                                      ; preds = %wildloop207, %merge192
  %player247 = load i32, i32* %access205
  %wildcomp248 = icmp slt i32 %player247, 3
  br i1 %wildcomp248, label %wildloop207, label %merge249

wildloop207:                                      ; preds = %wildcond206
  %state1208 = load i32, i32* %state1
  %field209 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nplayers210 = load i32, i32* %field209
  %field211 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nmoves212 = load i32, i32* %field211
  %sitofp213 = sitofp i32 %nmoves212 to double
  %sitofp214 = sitofp i32 %nplayers210 to double
  %exp215 = call double (double, double, ...) @pow(double %sitofp213, double %sitofp214)
  %size216 = fptoui double %exp215 to i32
  %field217 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr218 = load { i32, i32 }*, { i32, i32 }** %field217
  %start219 = mul i32 %size216, 2
  %sitofp220 = sitofp i32 %nmoves212 to double
  %sitofp221 = sitofp i32 %nplayers210 to double
  %addr222 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon223 = getelementptr { i32, i32* }, { i32, i32* }* %addr222, i32 0, i32 1
  %conaddr224 = load i32*, i32** %getcon223
  %access225 = getelementptr i32, i32* %conaddr224, i32 0
  %move226 = load i32, i32* %access225
  %sitofp227 = sitofp i32 %move226 to double
  %temp228 = call double (double, double, ...) @pow(double %sitofp220, double 0.000000e+00)
  %temp2229 = fmul double %temp228, %sitofp227
  %current230 = fptoui double %temp2229 to i32
  %addr231 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon232 = getelementptr { i32, i32* }, { i32, i32* }* %addr231, i32 0, i32 1
  %conaddr233 = load i32*, i32** %getcon232
  %access234 = getelementptr i32, i32* %conaddr233, i32 1
  %move235 = load i32, i32* %access234
  %sitofp236 = sitofp i32 %move235 to double
  %temp237 = call double (double, double, ...) @pow(double %sitofp220, double 1.000000e+00)
  %temp2238 = fmul double %temp237, %sitofp236
  %current239 = fptoui double %temp2238 to i32
  %result240 = add i32 %current239, 0
  %result241 = add i32 %current230, %result240
  %index242 = add i32 %start219, %result241
  %access243 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr218, i32 %index242
  %field244 = getelementptr { i32, i32 }, { i32, i32 }* %access243, i32 0, i32 1
  store i32 %state1208, i32* %field244
  %loadwild245 = load i32, i32* %access205
  %next246 = add i32 %loadwild245, 1
  store i32 %next246, i32* %access205
  br label %wildcond206

merge249:                                         ; preds = %wildcond206
  %addr250 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon251 = getelementptr { i32, i32* }, { i32, i32* }* %addr250, i32 0, i32 1
  %conaddr252 = load i32*, i32** %getcon251
  %access253 = getelementptr i32, i32* %conaddr252, i32 0
  %Scissors254 = load i32, i32* @Scissors
  store i32 %Scissors254, i32* %access253
  %addr255 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon256 = getelementptr { i32, i32* }, { i32, i32* }* %addr255, i32 0, i32 1
  %conaddr257 = load i32*, i32** %getcon256
  %access258 = getelementptr i32, i32* %conaddr257, i32 1
  %Paper259 = load i32, i32* @Paper
  store i32 %Paper259, i32* %access258
  %state0260 = load i32, i32* %state0
  %field261 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nplayers262 = load i32, i32* %field261
  %field263 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nmoves264 = load i32, i32* %field263
  %sitofp265 = sitofp i32 %nmoves264 to double
  %sitofp266 = sitofp i32 %nplayers262 to double
  %exp267 = call double (double, double, ...) @pow(double %sitofp265, double %sitofp266)
  %size268 = fptoui double %exp267 to i32
  %field269 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr270 = load { i32, i32 }*, { i32, i32 }** %field269
  %start271 = mul i32 %size268, 2
  %sitofp272 = sitofp i32 %nmoves264 to double
  %sitofp273 = sitofp i32 %nplayers262 to double
  %addr274 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon275 = getelementptr { i32, i32* }, { i32, i32* }* %addr274, i32 0, i32 1
  %conaddr276 = load i32*, i32** %getcon275
  %access277 = getelementptr i32, i32* %conaddr276, i32 0
  %move278 = load i32, i32* %access277
  %sitofp279 = sitofp i32 %move278 to double
  %temp281 = call double (double, double, ...) @pow(double %sitofp272, double 0.000000e+00)
  %temp2282 = fmul double %temp281, %sitofp279
  %current283 = fptoui double %temp2282 to i32
  %addr284 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon285 = getelementptr { i32, i32* }, { i32, i32* }* %addr284, i32 0, i32 1
  %conaddr286 = load i32*, i32** %getcon285
  %access287 = getelementptr i32, i32* %conaddr286, i32 1
  %move288 = load i32, i32* %access287
  %sitofp289 = sitofp i32 %move288 to double
  %temp290 = call double (double, double, ...) @pow(double %sitofp272, double 1.000000e+00)
  %temp2291 = fmul double %temp290, %sitofp289
  %current292 = fptoui double %temp2291 to i32
  %result293 = add i32 %current292, 0
  %result294 = add i32 %current283, %result293
  %index295 = add i32 %start271, %result294
  %access296 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr270, i32 %index295
  %field297 = getelementptr { i32, i32 }, { i32, i32 }* %access296, i32 0, i32 1
  store i32 %state0260, i32* %field297
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy, { i32, i32, i32, { i32, i32 }* }** @s
  %s = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** @s
  %field298 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %s, i32 0, i32 0
  %fieldzero = load i32, i32* %field298
  %strofnum = alloca i8, i32 32
  %sprintf = call i32 (i8*, i8*, ...) @sprintf(i8* %strofnum, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmtd, i32 0, i32 0), i32 %fieldzero)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln, i32 0, i32 0), i8* %strofnum)
  %s299 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** @s
  %field300 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %s299, i32 0, i32 1
  %fieldone = load i32, i32* %field300
  %strofnum301 = alloca i8, i32 32
  %sprintf302 = call i32 (i8*, i8*, ...) @sprintf(i8* %strofnum301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmtd, i32 0, i32 0), i32 %fieldone)
  %printf303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln, i32 0, i32 0), i8* %strofnum301)
  %s304 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** @s
  %field305 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %s304, i32 0, i32 2
  %fieldtwo = load i32, i32* %field305
  %strofnum306 = alloca i8, i32 32
  %sprintf307 = call i32 (i8*, i8*, ...) @sprintf(i8* %strofnum306, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmtd, i32 0, i32 0), i32 %fieldtwo)
  %printf308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln, i32 0, i32 0), i8* %strofnum306)
  %s309 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** @s
  %strofnum310 = alloca i8, i32 32
  %field311 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %s309, i32 0, i32 0
  %nplayers312 = load i32, i32* %field311
  %field313 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %s309, i32 0, i32 1
  %nmoves314 = load i32, i32* %field313
  %field315 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %s309, i32 0, i32 2
  %nstates = load i32, i32* %field315
  %move_size = mul i32 %nplayers312, 2
  %moves_size = add i32 %move_size, 15
  %sitofp316 = sitofp i32 %nmoves314 to double
  %sitofp317 = sitofp i32 %nplayers312 to double
  %exp318 = call double (double, double, ...) @pow(double %sitofp316, double %sitofp317)
  %size319 = fptoui double %exp318 to i32
  %temp1 = mul i32 %size319, %moves_size
  %state_size = add i32 %temp1, 16
  %strat_str_size = mul i32 %state_size, %nstates
  %stralloca = alloca i8, i32 %strat_str_size
  %sprintf320 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr, i32 0, i32 0))
  %statei321 = alloca i32
  %transi322 = alloca i32
  %movei = alloca i32
  store i32 0, i32* %statei321
  br label %whileone

whileone:                                         ; preds = %merge363, %merge249
  %load366 = load i32, i32* %statei321
  %slt367 = icmp slt i32 %load366, %nstates
  br i1 %slt367, label %whileone_loop, label %merge368

whileone_loop:                                    ; preds = %whileone
  store i32 0, i32* %transi322
  %load = load i32, i32* %statei321
  %load323 = load i32, i32* %transi322
  %field324 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %s309, i32 0, i32 3
  %transaddr325 = load { i32, i32 }*, { i32, i32 }** %field324
  %state326 = mul i32 %size319, %load
  %state327 = add i32 %load323, %state326
  %access328 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr325, i32 %state327
  %field329 = getelementptr { i32, i32 }, { i32, i32 }* %access328, i32 0, i32 0
  %current_output = load i32, i32* %field329
  %stralloca330 = alloca i8, i32 16
  %sprintf331 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca330, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr, i32 0, i32 0))
  %sprintf332 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca330, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @fmts, i32 0, i32 0), i32 %load, i32 %current_output)
  %strcat = call i8* (i8*, i8*, ...) @strcat(i8* %stralloca, i8* %stralloca330)
  br label %whiletwo

whiletwo:                                         ; preds = %merge349, %whileone_loop
  %load362 = load i32, i32* %transi322
  %slt = icmp slt i32 %load362, %size319
  br i1 %slt, label %whiletwo_loop, label %merge363

whiletwo_loop:                                    ; preds = %whiletwo
  %mul = mul i32 %nmoves314, 2
  %add = add i32 %mul, 15
  %stralloca333 = alloca i8, i32 %mul
  %sprintf334 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca333, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr, i32 0, i32 0))
  %stralloca335 = alloca i8, i32 %add
  %sprintf336 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca335, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr, i32 0, i32 0))
  store i32 %nplayers312, i32* %movei
  br label %whilethree

whilethree:                                       ; preds = %whilethree_loop, %whiletwo_loop
  %load348 = load i32, i32* %movei
  %sgt = icmp sgt i32 %load348, 0
  br i1 %sgt, label %whilethree_loop, label %merge349

whilethree_loop:                                  ; preds = %whilethree
  %load337 = load i32, i32* %movei
  %load338 = load i32, i32* %transi322
  %decmovei = sub i32 %load337, 1
  %sitofp339 = sitofp i32 %nmoves314 to double
  %sitofp340 = sitofp i32 %load337 to double
  %pow = call double (double, double, ...) @pow(double %sitofp339, double %sitofp340)
  %sitofp341 = sitofp i32 %nmoves314 to double
  %sitofp342 = sitofp i32 %decmovei to double
  %pow343 = call double (double, double, ...) @pow(double %sitofp341, double %sitofp342)
  %fptoui = fptoui double %pow to i32
  %fptoui344 = fptoui double %pow343 to i32
  %urem = urem i32 %load338, %fptoui
  %div = sdiv i32 %urem, %fptoui344
  %stralloca345 = alloca i8, i32 2
  %sprintf346 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca345, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtm, i32 0, i32 0), i32 %div)
  %strcat347 = call i8* (i8*, i8*, ...) @strcat(i8* %stralloca333, i8* %stralloca345)
  %sub = sub i32 %load337, 1
  store i32 %sub, i32* %movei
  br label %whilethree

merge349:                                         ; preds = %whilethree
  %load350 = load i32, i32* %statei321
  %load351 = load i32, i32* %transi322
  %field352 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %s309, i32 0, i32 3
  %transaddr353 = load { i32, i32 }*, { i32, i32 }** %field352
  %state354 = mul i32 %size319, %load350
  %state355 = add i32 %load351, %state354
  %access356 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr353, i32 %state355
  %field357 = getelementptr { i32, i32 }, { i32, i32 }* %access356, i32 0, i32 1
  %current_nextstate = load i32, i32* %field357
  %sprintf358 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca335, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @fmtt, i32 0, i32 0), i8* %stralloca333, i32 %current_nextstate)
  %strcat359 = call i8* (i8*, i8*, ...) @strcat(i8* %stralloca, i8* %stralloca335)
  %load360 = load i32, i32* %transi322
  %add361 = add i32 %load360, 1
  store i32 %add361, i32* %transi322
  br label %whiletwo

merge363:                                         ; preds = %whiletwo
  %load364 = load i32, i32* %statei321
  %add365 = add i32 %load364, 1
  store i32 %add365, i32* %statei321
  br label %whileone

merge368:                                         ; preds = %whileone
  %printf369 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln, i32 0, i32 0), i8* %stralloca)
  ret i32 0

merge370:                                         ; No predecessors!
  ret i32 0
}
