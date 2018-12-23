; ModuleID = 'Replay'

@payoffs2 = global { i32, double* }* null
@payoffs1 = global { i32, double* }* null
@players2 = global { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* null
@players1 = global { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* null
@grim2 = global { i32, i32, i32, { i32, i32 }* }* null
@grim1 = global { i32, i32, i32, { i32, i32 }* }* null
@pd = global { i32, i32, double* }* null
@C = global i32 0
@D = global i32 0
@fmt = private unnamed_addr constant [3 x i8] c"%s\00"
@fmtln = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmtd = private unnamed_addr constant [3 x i8] c"%d\00"
@fmtf = private unnamed_addr constant [3 x i8] c"%g\00"
@fmtm = private unnamed_addr constant [4 x i8] c"%d \00"
@fmtt = private unnamed_addr constant [19 x i8] c"( %s) -> state %d\0A\00"
@fmts = private unnamed_addr constant [19 x i8] c"State %d: play %d\0A\00"
@fmtclr = private unnamed_addr constant [1 x i8] zeroinitializer
@fmte = private unnamed_addr constant [15 x i8] c"%s: %d =/= %d\0A\00"
@error = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.1 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@fmt.2 = private unnamed_addr constant [3 x i8] c"%s\00"
@fmtln.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmtd.4 = private unnamed_addr constant [3 x i8] c"%d\00"
@fmtf.5 = private unnamed_addr constant [3 x i8] c"%g\00"
@fmtm.6 = private unnamed_addr constant [4 x i8] c"%d \00"
@fmtt.7 = private unnamed_addr constant [19 x i8] c"( %s) -> state %d\0A\00"
@fmts.8 = private unnamed_addr constant [19 x i8] c"State %d: play %d\0A\00"
@fmtclr.9 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmte.10 = private unnamed_addr constant [15 x i8] c"%s: %d =/= %d\0A\00"
@error.11 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.12 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.13 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.14 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.15 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.16 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.17 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@fmt.18 = private unnamed_addr constant [3 x i8] c"%s\00"
@fmtln.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmtd.20 = private unnamed_addr constant [3 x i8] c"%d\00"
@fmtf.21 = private unnamed_addr constant [3 x i8] c"%g\00"
@fmtm.22 = private unnamed_addr constant [4 x i8] c"%d \00"
@fmtt.23 = private unnamed_addr constant [19 x i8] c"( %s) -> state %d\0A\00"
@fmts.24 = private unnamed_addr constant [19 x i8] c"State %d: play %d\0A\00"
@fmtclr.25 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmte.26 = private unnamed_addr constant [15 x i8] c"%s: %d =/= %d\0A\00"
@fmt.27 = private unnamed_addr constant [3 x i8] c"%s\00"
@fmtln.28 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmtd.29 = private unnamed_addr constant [3 x i8] c"%d\00"
@fmtf.30 = private unnamed_addr constant [3 x i8] c"%g\00"
@fmtm.31 = private unnamed_addr constant [4 x i8] c"%d \00"
@fmtt.32 = private unnamed_addr constant [19 x i8] c"( %s) -> state %d\0A\00"
@fmts.33 = private unnamed_addr constant [19 x i8] c"State %d: play %d\0A\00"
@fmtclr.34 = private unnamed_addr constant [1 x i8] zeroinitializer
@fmte.35 = private unnamed_addr constant [15 x i8] c"%s: %d =/= %d\0A\00"
@error.36 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.37 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.38 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.39 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.40 = private unnamed_addr constant [32 x i8] c"Number of players doesn't match\00"
@error.41 = private unnamed_addr constant [32 x i8] c"Number of players doesn't match\00"
@error.42 = private unnamed_addr constant [30 x i8] c"Number of moves doesn't match\00"
@error.43 = private unnamed_addr constant [32 x i8] c"Number of players doesn't match\00"
@error.44 = private unnamed_addr constant [30 x i8] c"Number of moves doesn't match\00"
@error.45 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.46 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.47 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.48 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.49 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.50 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.51 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.52 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.53 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.54 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.55 = private unnamed_addr constant [32 x i8] c"Number of players doesn't match\00"
@error.56 = private unnamed_addr constant [30 x i8] c"Number of moves doesn't match\00"
@error.57 = private unnamed_addr constant [31 x i8] c"Number of states doesn't match\00"
@error.58 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.59 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.60 = private unnamed_addr constant [32 x i8] c"Number of players doesn't match\00"
@error.61 = private unnamed_addr constant [30 x i8] c"Number of moves doesn't match\00"
@error.62 = private unnamed_addr constant [31 x i8] c"Number of states doesn't match\00"
@error.63 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.64 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.65 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.66 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@str = private unnamed_addr constant [7 x i8] c"best: \00"
@error.67 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@str.68 = private unnamed_addr constant [8 x i8] c"worst: \00"
@error.69 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"
@error.70 = private unnamed_addr constant [20 x i8] c"Index out of bounds\00"

declare i32 @printf(i8*, ...)

declare i8* @strcat(i8*, i8*, ...)

declare i8* @strcpy(i8*, i8*, ...)

declare i32 @strlen(i8*, ...)

declare i32 @sprintf(i8*, i8*, ...)

declare i32 @rand(...)

declare void @srand(i32, ...)

declare i32 @time(...)

declare double @pow(double, double, ...)

define i32 @randindex({ i32, double* }* %list, ...) gc "statepoint-example" {
entry:
  %list1 = alloca { i32, double* }*
  store { i32, double* }* %list, { i32, double* }** %list1
  br label %block

block:                                            ; preds = %entry
  %r = alloca double
  store double 0.000000e+00, double* %r
  %sum = alloca double
  store double 0.000000e+00, double* %sum
  %list2 = load { i32, double* }*, { i32, double* }** %list1
  %eptr = alloca { i32, double* }*
  store { i32, double* }* %list2, { i32, double* }** %eptr
  %getlen = getelementptr { i32, double* }, { i32, double* }* %list2, i32 0, i32 0
  %size = load i32, i32* %getlen
  %addr = load { i32, double* }*, { i32, double* }** %eptr
  %getcon = getelementptr { i32, double* }, { i32, double* }* %addr, i32 0, i32 1
  %conaddr = load double*, double** %getcon
  %access = getelementptr double, double* %conaddr, i32 0
  %current = load double, double* %access
  %p = alloca double
  store double %current, double* %p
  %i = alloca i32
  store i32 0, i32* %i
  br label %for

for:                                              ; preds = %merge, %block
  %i12 = load i32, i32* %i
  %forcomp = icmp ne i32 %i12, %size
  br i1 %forcomp, label %for_loop, label %merge13

for_loop:                                         ; preds = %for
  br label %block3

block3:                                           ; preds = %for_loop
  %sum4 = load double, double* %sum
  %p5 = load double, double* %p
  %tmp = fadd double %sum4, %p5
  store double %tmp, double* %sum
  br label %merge

merge:                                            ; preds = %block3
  %i6 = load i32, i32* %i
  %iplusone = add i32 %i6, 1
  store i32 %iplusone, i32* %i
  %loadi = load i32, i32* %i
  %addr7 = load { i32, double* }*, { i32, double* }** %eptr
  %getcon8 = getelementptr { i32, double* }, { i32, double* }* %addr7, i32 0, i32 1
  %conaddr9 = load double*, double** %getcon8
  %access10 = getelementptr double, double* %conaddr9, i32 %loadi
  %current11 = load double, double* %access10
  store double %current11, double* %p
  br label %for

merge13:                                          ; preds = %for
  %rand = call i32 (...) @rand()
  %randint = urem i32 %rand, 32767
  %sitofp = sitofp i32 %randint to double
  %randfloat = fdiv double %sitofp, 3.276700e+04
  %sum14 = load double, double* %sum
  %tmp15 = fmul double %randfloat, %sum14
  store double %tmp15, double* %r
  %list16 = load { i32, double* }*, { i32, double* }** %list1
  %getlen17 = getelementptr { i32, double* }, { i32, double* }* %list16, i32 0, i32 0
  %arrlen = load i32, i32* %getlen17
  %tmp18 = sub i32 %arrlen, 1
  %rangediff = sub i32 %tmp18, 0
  %rangesize = add i32 %rangediff, 1
  %newarray = alloca { i32, i32* }
  %contents = alloca i32, i32 %rangesize
  %ptrdest = getelementptr { i32, i32* }, { i32, i32* }* %newarray, i32 0, i32 0
  %ptrdest19 = getelementptr { i32, i32* }, { i32, i32* }* %newarray, i32 0, i32 1
  store i32 %rangesize, i32* %ptrdest
  store i32* %contents, i32** %ptrdest19
  %rangeptr = alloca { i32, i32* }*
  store { i32, i32* }* %newarray, { i32, i32* }** %rangeptr
  %addr20 = load { i32, i32* }*, { i32, i32* }** %rangeptr
  %getcon21 = getelementptr { i32, i32* }, { i32, i32* }* %addr20, i32 0, i32 1
  %conaddr22 = load i32*, i32** %getcon21
  %access23 = getelementptr i32, i32* %conaddr22, i32 %rangediff
  br label %range

range:                                            ; preds = %merge13
  %i24 = alloca i32
  store i32 0, i32* %i24
  br label %while

while:                                            ; preds = %while_loop, %range
  %lastentry = load i32, i32* %access23
  %rangecomp = icmp ne i32 %lastentry, %tmp18
  br i1 %rangecomp, label %while_loop, label %merge32

while_loop:                                       ; preds = %while
  %loadi25 = load i32, i32* %i24
  %addr26 = load { i32, i32* }*, { i32, i32* }** %rangeptr
  %getcon27 = getelementptr { i32, i32* }, { i32, i32* }* %addr26, i32 0, i32 1
  %conaddr28 = load i32*, i32** %getcon27
  %access29 = getelementptr i32, i32* %conaddr28, i32 %loadi25
  %calcval = add i32 0, %loadi25
  store i32 %calcval, i32* %access29
  %i30 = load i32, i32* %i24
  %iplusone31 = add i32 %i30, 1
  store i32 %iplusone31, i32* %i24
  br label %while

merge32:                                          ; preds = %while
  %eptr33 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray, { i32, i32* }** %eptr33
  %getlen34 = getelementptr { i32, i32* }, { i32, i32* }* %newarray, i32 0, i32 0
  %size35 = load i32, i32* %getlen34
  %addr36 = load { i32, i32* }*, { i32, i32* }** %eptr33
  %getcon37 = getelementptr { i32, i32* }, { i32, i32* }* %addr36, i32 0, i32 1
  %conaddr38 = load i32*, i32** %getcon37
  %access39 = getelementptr i32, i32* %conaddr38, i32 0
  %current40 = load i32, i32* %access39
  %i41 = alloca i32
  store i32 %current40, i32* %i41
  %i42 = alloca i32
  store i32 0, i32* %i42
  br label %for43

for43:                                            ; preds = %merge102, %merge32
  %i111 = load i32, i32* %i42
  %forcomp112 = icmp ne i32 %i111, %size35
  br i1 %forcomp112, label %for_loop44, label %merge113

for_loop44:                                       ; preds = %for43
  br label %block45

block45:                                          ; preds = %for_loop44
  %r46 = load double, double* %r
  %tmp47 = fcmp ogt double %r46, 0.000000e+00
  br i1 %tmp47, label %then, label %else73

merge48:                                          ; preds = %merge101, %merge72
  br label %merge102

then:                                             ; preds = %block45
  br label %block49

block49:                                          ; preds = %then
  %r50 = load double, double* %r
  %i51 = load i32, i32* %i41
  %list52 = load { i32, double* }*, { i32, double* }** %list1
  %getlen53 = getelementptr { i32, double* }, { i32, double* }* %list52, i32 0, i32 0
  %arrlen54 = load i32, i32* %getlen53
  %sub = sub i32 %arrlen54, 1
  %error = icmp sgt i32 %i51, %sub
  br i1 %error, label %error56, label %merge55

merge55:                                          ; preds = %block49, %error56
  %addr57 = load { i32, double* }*, { i32, double* }** %list1
  %getcon58 = getelementptr { i32, double* }, { i32, double* }* %addr57, i32 0, i32 1
  %conaddr59 = load double*, double** %getcon58
  %access60 = getelementptr double, double* %conaddr59, i32 %i51
  %list61 = load double, double* %access60
  %tmp62 = fsub double %r50, %list61
  store double %tmp62, double* %r
  %r63 = load double, double* %r
  %tmp64 = fcmp olt double %r63, 0.000000e+00
  br i1 %tmp64, label %then66, label %else

error56:                                          ; preds = %block49
  %printerror = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error, i32 0, i32 0), i32 %i51, i32 %sub)
  br label %merge55

merge65:                                          ; preds = %merge71, %merge69
  br label %merge72

then66:                                           ; preds = %merge55
  br label %block67

block67:                                          ; preds = %then66
  %i68 = load i32, i32* %i41
  ret i32 %i68

merge69:                                          ; No predecessors!
  br label %merge65

else:                                             ; preds = %merge55
  br label %block70

block70:                                          ; preds = %else
  br label %merge71

merge71:                                          ; preds = %block70
  br label %merge65

merge72:                                          ; preds = %merge65
  br label %merge48

else73:                                           ; preds = %block45
  br label %block74

block74:                                          ; preds = %else73
  %r75 = load double, double* %r
  %i76 = load i32, i32* %i41
  %list77 = load { i32, double* }*, { i32, double* }** %list1
  %getlen78 = getelementptr { i32, double* }, { i32, double* }* %list77, i32 0, i32 0
  %arrlen79 = load i32, i32* %getlen78
  %sub80 = sub i32 %arrlen79, 1
  %error81 = icmp sgt i32 %i76, %sub80
  br i1 %error81, label %error83, label %merge82

merge82:                                          ; preds = %block74, %error83
  %addr85 = load { i32, double* }*, { i32, double* }** %list1
  %getcon86 = getelementptr { i32, double* }, { i32, double* }* %addr85, i32 0, i32 1
  %conaddr87 = load double*, double** %getcon86
  %access88 = getelementptr double, double* %conaddr87, i32 %i76
  %list89 = load double, double* %access88
  %tmp90 = fsub double %r75, %list89
  store double %tmp90, double* %r
  %r91 = load double, double* %r
  %tmp92 = fcmp ogt double %r91, 0.000000e+00
  br i1 %tmp92, label %then94, label %else98

error83:                                          ; preds = %block74
  %printerror84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.1, i32 0, i32 0), i32 %i76, i32 %sub80)
  br label %merge82

merge93:                                          ; preds = %merge100, %merge97
  br label %merge101

then94:                                           ; preds = %merge82
  br label %block95

block95:                                          ; preds = %then94
  %i96 = load i32, i32* %i41
  ret i32 %i96

merge97:                                          ; No predecessors!
  br label %merge93

else98:                                           ; preds = %merge82
  br label %block99

block99:                                          ; preds = %else98
  br label %merge100

merge100:                                         ; preds = %block99
  br label %merge93

merge101:                                         ; preds = %merge93
  br label %merge48

merge102:                                         ; preds = %merge48
  %i103 = load i32, i32* %i42
  %iplusone104 = add i32 %i103, 1
  store i32 %iplusone104, i32* %i42
  %loadi105 = load i32, i32* %i42
  %addr106 = load { i32, i32* }*, { i32, i32* }** %eptr33
  %getcon107 = getelementptr { i32, i32* }, { i32, i32* }* %addr106, i32 0, i32 1
  %conaddr108 = load i32*, i32** %getcon107
  %access109 = getelementptr i32, i32* %conaddr108, i32 %loadi105
  %current110 = load i32, i32* %access109
  store i32 %current110, i32* %i41
  br label %for43

merge113:                                         ; preds = %for43
  %list114 = load { i32, double* }*, { i32, double* }** %list1
  %getlen115 = getelementptr { i32, double* }, { i32, double* }* %list114, i32 0, i32 0
  %arrlen116 = load i32, i32* %getlen115
  %tmp117 = sub i32 %arrlen116, 1
  %strofnum = alloca i8, i32 32
  %sprintf = call i32 (i8*, i8*, ...) @sprintf(i8* %strofnum, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmtd, i32 0, i32 0), i32 %tmp117)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln, i32 0, i32 0), i8* %strofnum)
  %list118 = load { i32, double* }*, { i32, double* }** %list1
  %getlen119 = getelementptr { i32, double* }, { i32, double* }* %list118, i32 0, i32 0
  %arrlen120 = load i32, i32* %getlen119
  %tmp121 = sub i32 %arrlen120, 1
  ret i32 %tmp121

merge122:                                         ; No predecessors!
  ret i32 0
}

define void @quickSort({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players, { i32, double* }* %payoffs, i32 %lo, i32 %hi, ...) gc "statepoint-example" {
entry:
  %players1 = alloca { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*
  store { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  %payoffs2 = alloca { i32, double* }*
  store { i32, double* }* %payoffs, { i32, double* }** %payoffs2
  %lo3 = alloca i32
  store i32 %lo, i32* %lo3
  %hi4 = alloca i32
  store i32 %hi, i32* %hi4
  br label %block

block:                                            ; preds = %entry
  %lo5 = load i32, i32* %lo3
  %i = alloca i32
  store i32 %lo5, i32* %i
  %hi6 = load i32, i32* %hi4
  %j = alloca i32
  store i32 %hi6, i32* %j
  %lo7 = load i32, i32* %lo3
  %hi8 = load i32, i32* %hi4
  %tmp = add i32 %lo7, %hi8
  %tmp9 = sdiv i32 %tmp, 2
  %payoffs10 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getlen = getelementptr { i32, double* }, { i32, double* }* %payoffs10, i32 0, i32 0
  %arrlen = load i32, i32* %getlen
  %sub = sub i32 %arrlen, 1
  %error = icmp sgt i32 %tmp9, %sub
  br i1 %error, label %error11, label %merge

merge:                                            ; preds = %block, %error11
  %addr = load { i32, double* }*, { i32, double* }** %payoffs2
  %getcon = getelementptr { i32, double* }, { i32, double* }* %addr, i32 0, i32 1
  %conaddr = load double*, double** %getcon
  %access = getelementptr double, double* %conaddr, i32 %tmp9
  %payoffs12 = load double, double* %access
  %pivot = alloca double
  store double %payoffs12, double* %pivot
  br label %while

error11:                                          ; preds = %block
  %printerror = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.11, i32 0, i32 0), i32 %tmp9, i32 %sub)
  br label %merge

while:                                            ; preds = %merge150, %merge
  %i151 = load i32, i32* %i
  %j152 = load i32, i32* %j
  %tmp153 = icmp sle i32 %i151, %j152
  br i1 %tmp153, label %while_loop, label %merge154

while_loop:                                       ; preds = %while
  br label %block13

block13:                                          ; preds = %while_loop
  br label %while14

while14:                                          ; preds = %merge19, %block13
  %i20 = load i32, i32* %i
  %payoffs21 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getlen22 = getelementptr { i32, double* }, { i32, double* }* %payoffs21, i32 0, i32 0
  %arrlen23 = load i32, i32* %getlen22
  %sub24 = sub i32 %arrlen23, 1
  %error25 = icmp sgt i32 %i20, %sub24
  br i1 %error25, label %error27, label %merge26

while_loop15:                                     ; preds = %merge26
  br label %block16

block16:                                          ; preds = %while_loop15
  %i17 = load i32, i32* %i
  %tmp18 = add i32 %i17, 1
  store i32 %tmp18, i32* %i
  br label %merge19

merge19:                                          ; preds = %block16
  br label %while14

merge26:                                          ; preds = %while14, %error27
  %addr29 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getcon30 = getelementptr { i32, double* }, { i32, double* }* %addr29, i32 0, i32 1
  %conaddr31 = load double*, double** %getcon30
  %access32 = getelementptr double, double* %conaddr31, i32 %i20
  %payoffs33 = load double, double* %access32
  %pivot34 = load double, double* %pivot
  %tmp35 = fcmp ogt double %payoffs33, %pivot34
  br i1 %tmp35, label %while_loop15, label %merge36

error27:                                          ; preds = %while14
  %printerror28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.12, i32 0, i32 0), i32 %i20, i32 %sub24)
  br label %merge26

merge36:                                          ; preds = %merge26
  br label %while37

while37:                                          ; preds = %merge42, %merge36
  %j43 = load i32, i32* %j
  %payoffs44 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getlen45 = getelementptr { i32, double* }, { i32, double* }* %payoffs44, i32 0, i32 0
  %arrlen46 = load i32, i32* %getlen45
  %sub47 = sub i32 %arrlen46, 1
  %error48 = icmp sgt i32 %j43, %sub47
  br i1 %error48, label %error50, label %merge49

while_loop38:                                     ; preds = %merge49
  br label %block39

block39:                                          ; preds = %while_loop38
  %j40 = load i32, i32* %j
  %tmp41 = sub i32 %j40, 1
  store i32 %tmp41, i32* %j
  br label %merge42

merge42:                                          ; preds = %block39
  br label %while37

merge49:                                          ; preds = %while37, %error50
  %addr52 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getcon53 = getelementptr { i32, double* }, { i32, double* }* %addr52, i32 0, i32 1
  %conaddr54 = load double*, double** %getcon53
  %access55 = getelementptr double, double* %conaddr54, i32 %j43
  %payoffs56 = load double, double* %access55
  %pivot57 = load double, double* %pivot
  %tmp58 = fcmp olt double %payoffs56, %pivot57
  br i1 %tmp58, label %while_loop38, label %merge59

error50:                                          ; preds = %while37
  %printerror51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.13, i32 0, i32 0), i32 %j43, i32 %sub47)
  br label %merge49

merge59:                                          ; preds = %merge49
  %i60 = load i32, i32* %i
  %j61 = load i32, i32* %j
  %tmp62 = icmp sle i32 %i60, %j61
  br i1 %tmp62, label %then, label %else

merge63:                                          ; preds = %merge149, %merge147
  br label %merge150

then:                                             ; preds = %merge59
  br label %block64

block64:                                          ; preds = %then
  %i65 = load i32, i32* %i
  %players66 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  %getlen67 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players66, i32 0, i32 0
  %arrlen68 = load i32, i32* %getlen67
  %sub69 = sub i32 %arrlen68, 1
  %error70 = icmp sgt i32 %i65, %sub69
  br i1 %error70, label %error72, label %merge71

merge71:                                          ; preds = %block64, %error72
  %addr74 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  %getcon75 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr74, i32 0, i32 1
  %conaddr76 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon75
  %access77 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr76, i32 %i65
  %players78 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access77
  %temp1 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players78, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %temp1
  %j79 = load i32, i32* %j
  %players80 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  %getlen81 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players80, i32 0, i32 0
  %arrlen82 = load i32, i32* %getlen81
  %sub83 = sub i32 %arrlen82, 1
  %error84 = icmp sgt i32 %j79, %sub83
  br i1 %error84, label %error86, label %merge85

error72:                                          ; preds = %block64
  %printerror73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.14, i32 0, i32 0), i32 %i65, i32 %sub69)
  br label %merge71

merge85:                                          ; preds = %merge71, %error86
  %addr88 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  %getcon89 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr88, i32 0, i32 1
  %conaddr90 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon89
  %access91 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr90, i32 %j79
  %players92 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access91
  %i93 = load i32, i32* %i
  %addr94 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  %getcon95 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr94, i32 0, i32 1
  %conaddr96 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon95
  %access97 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr96, i32 %i93
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players92, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access97
  %temp198 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %temp1
  %j99 = load i32, i32* %j
  %addr100 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  %getcon101 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr100, i32 0, i32 1
  %conaddr102 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon101
  %access103 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr102, i32 %j99
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %temp198, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access103
  %i104 = load i32, i32* %i
  %payoffs105 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getlen106 = getelementptr { i32, double* }, { i32, double* }* %payoffs105, i32 0, i32 0
  %arrlen107 = load i32, i32* %getlen106
  %sub108 = sub i32 %arrlen107, 1
  %error109 = icmp sgt i32 %i104, %sub108
  br i1 %error109, label %error111, label %merge110

error86:                                          ; preds = %merge71
  %printerror87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.15, i32 0, i32 0), i32 %j79, i32 %sub83)
  br label %merge85

merge110:                                         ; preds = %merge85, %error111
  %addr113 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getcon114 = getelementptr { i32, double* }, { i32, double* }* %addr113, i32 0, i32 1
  %conaddr115 = load double*, double** %getcon114
  %access116 = getelementptr double, double* %conaddr115, i32 %i104
  %payoffs117 = load double, double* %access116
  %temp2 = alloca double
  store double %payoffs117, double* %temp2
  %j118 = load i32, i32* %j
  %payoffs119 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getlen120 = getelementptr { i32, double* }, { i32, double* }* %payoffs119, i32 0, i32 0
  %arrlen121 = load i32, i32* %getlen120
  %sub122 = sub i32 %arrlen121, 1
  %error123 = icmp sgt i32 %j118, %sub122
  br i1 %error123, label %error125, label %merge124

error111:                                         ; preds = %merge85
  %printerror112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.16, i32 0, i32 0), i32 %i104, i32 %sub108)
  br label %merge110

merge124:                                         ; preds = %merge110, %error125
  %addr127 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getcon128 = getelementptr { i32, double* }, { i32, double* }* %addr127, i32 0, i32 1
  %conaddr129 = load double*, double** %getcon128
  %access130 = getelementptr double, double* %conaddr129, i32 %j118
  %payoffs131 = load double, double* %access130
  %i132 = load i32, i32* %i
  %addr133 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getcon134 = getelementptr { i32, double* }, { i32, double* }* %addr133, i32 0, i32 1
  %conaddr135 = load double*, double** %getcon134
  %access136 = getelementptr double, double* %conaddr135, i32 %i132
  store double %payoffs131, double* %access136
  %temp2137 = load double, double* %temp2
  %j138 = load i32, i32* %j
  %addr139 = load { i32, double* }*, { i32, double* }** %payoffs2
  %getcon140 = getelementptr { i32, double* }, { i32, double* }* %addr139, i32 0, i32 1
  %conaddr141 = load double*, double** %getcon140
  %access142 = getelementptr double, double* %conaddr141, i32 %j138
  store double %temp2137, double* %access142
  %i143 = load i32, i32* %i
  %tmp144 = add i32 %i143, 1
  store i32 %tmp144, i32* %i
  %j145 = load i32, i32* %j
  %tmp146 = sub i32 %j145, 1
  store i32 %tmp146, i32* %j
  br label %merge147

error125:                                         ; preds = %merge110
  %printerror126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.17, i32 0, i32 0), i32 %j118, i32 %sub122)
  br label %merge124

merge147:                                         ; preds = %merge124
  br label %merge63

else:                                             ; preds = %merge59
  br label %block148

block148:                                         ; preds = %else
  br label %merge149

merge149:                                         ; preds = %block148
  br label %merge63

merge150:                                         ; preds = %merge63
  br label %while

merge154:                                         ; preds = %while
  %lo155 = load i32, i32* %lo3
  %j156 = load i32, i32* %j
  %tmp157 = icmp slt i32 %lo155, %j156
  br i1 %tmp157, label %then159, label %else164

merge158:                                         ; preds = %merge166, %then159
  %i167 = load i32, i32* %i
  %hi168 = load i32, i32* %hi4
  %tmp169 = icmp slt i32 %i167, %hi168
  br i1 %tmp169, label %then171, label %else176

then159:                                          ; preds = %merge154
  %j160 = load i32, i32* %j
  %lo161 = load i32, i32* %lo3
  %payoffs162 = load { i32, double* }*, { i32, double* }** %payoffs2
  %players163 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  call void ({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, double* }*, i32, i32, ...) @quickSort({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players163, { i32, double* }* %payoffs162, i32 %lo161, i32 %j160)
  br label %merge158

else164:                                          ; preds = %merge154
  br label %block165

block165:                                         ; preds = %else164
  br label %merge166

merge166:                                         ; preds = %block165
  br label %merge158

merge170:                                         ; preds = %merge178, %then171
  br label %merge179

then171:                                          ; preds = %merge158
  %hi172 = load i32, i32* %hi4
  %i173 = load i32, i32* %i
  %payoffs174 = load { i32, double* }*, { i32, double* }** %payoffs2
  %players175 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  call void ({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, double* }*, i32, i32, ...) @quickSort({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players175, { i32, double* }* %payoffs174, i32 %i173, i32 %hi172)
  br label %merge170

else176:                                          ; preds = %merge158
  br label %block177

block177:                                         ; preds = %else176
  br label %merge178

merge178:                                         ; preds = %block177
  br label %merge170

merge179:                                         ; preds = %merge170
  ret void
}

define void @sort({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players, { i32, double* }* %payoffs, ...) gc "statepoint-example" {
entry:
  %players1 = alloca { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*
  store { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  %payoffs2 = alloca { i32, double* }*
  store { i32, double* }* %payoffs, { i32, double* }** %payoffs2
  br label %block

block:                                            ; preds = %entry
  %players3 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  %getlen = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players3, i32 0, i32 0
  %arrlen = load i32, i32* %getlen
  %tmp = sub i32 %arrlen, 1
  %payoffs4 = load { i32, double* }*, { i32, double* }** %payoffs2
  %players5 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** %players1
  call void ({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, double* }*, i32, i32, ...) @quickSort({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players5, { i32, double* }* %payoffs4, i32 0, i32 %tmp)
  br label %merge

merge:                                            ; preds = %block
  ret void
}

define i32 @main(...) gc "statepoint-example" {
entry:
  %time = call i32 (...) @time()
  call void (i32, ...) @srand(i32 %time)
  br label %block

block:                                            ; preds = %entry
  store i32 0, i32* @C
  store i32 1, i32* @D
  %newgame = alloca { i32, i32, double* }
  %exp = call double (double, double, ...) @pow(double 2.000000e+00, double 2.000000e+00)
  %fsize = fmul double 2.000000e+00, %exp
  %size = fptoui double %fsize to i32
  %outcomes = alloca double, i32 %size
  %nplayersdest = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nmovesdest = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %ptrdest = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  store i32 2, i32* %nplayersdest
  store i32 2, i32* %nmovesdest
  store double* %outcomes, double** %ptrdest
  %moves = alloca { i32, i32* }*
  %newarray = alloca { i32, i32* }
  %contents = alloca i32, i32 2
  %ptrdest1 = getelementptr { i32, i32* }, { i32, i32* }* %newarray, i32 0, i32 0
  %ptrdest2 = getelementptr { i32, i32* }, { i32, i32* }* %newarray, i32 0, i32 1
  store i32 2, i32* %ptrdest1
  store i32* %contents, i32** %ptrdest2
  store { i32, i32* }* %newarray, { i32, i32* }** %moves
  %addr = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon = getelementptr { i32, i32* }, { i32, i32* }* %addr, i32 0, i32 1
  %conaddr = load i32*, i32** %getcon
  %access = getelementptr i32, i32* %conaddr, i32 0
  store i32 0, i32* %access
  %addr3 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon4 = getelementptr { i32, i32* }, { i32, i32* }* %addr3, i32 0, i32 1
  %conaddr5 = load i32*, i32** %getcon4
  %access6 = getelementptr i32, i32* %conaddr5, i32 1
  store i32 0, i32* %access6
  %addr7 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon8 = getelementptr { i32, i32* }, { i32, i32* }* %addr7, i32 0, i32 1
  %conaddr9 = load i32*, i32** %getcon8
  %access10 = getelementptr i32, i32* %conaddr9, i32 0
  store i32 0, i32* %access10
  br label %wildcond

wildcond:                                         ; preds = %merge, %block
  %player69 = load i32, i32* %access10
  %wildcomp70 = icmp slt i32 %player69, 2
  br i1 %wildcomp70, label %wildloop, label %merge71

wildloop:                                         ; preds = %wildcond
  %addr11 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon12 = getelementptr { i32, i32* }, { i32, i32* }* %addr11, i32 0, i32 1
  %conaddr13 = load i32*, i32** %getcon12
  %access14 = getelementptr i32, i32* %conaddr13, i32 1
  store i32 0, i32* %access14
  br label %wildcond15

wildcond15:                                       ; preds = %wildloop16, %wildloop
  %player = load i32, i32* %access14
  %wildcomp = icmp slt i32 %player, 2
  br i1 %wildcomp, label %wildloop16, label %merge

wildloop16:                                       ; preds = %wildcond15
  %field = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers = load i32, i32* %field
  %field17 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves = load i32, i32* %field17
  %field18 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr = load double*, double** %field18
  %sitofp = sitofp i32 %nmoves to double
  %sitofp19 = sitofp i32 %nplayers to double
  %addr20 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon21 = getelementptr { i32, i32* }, { i32, i32* }* %addr20, i32 0, i32 1
  %conaddr22 = load i32*, i32** %getcon21
  %access23 = getelementptr i32, i32* %conaddr22, i32 0
  %move = load i32, i32* %access23
  %sitofp24 = sitofp i32 %move to double
  %temp = call double (double, double, ...) @pow(double %sitofp, double 0.000000e+00)
  %temp2 = fmul double %temp, %sitofp24
  %current = fptoui double %temp2 to i32
  %addr25 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon26 = getelementptr { i32, i32* }, { i32, i32* }* %addr25, i32 0, i32 1
  %conaddr27 = load i32*, i32** %getcon26
  %access28 = getelementptr i32, i32* %conaddr27, i32 1
  %move29 = load i32, i32* %access28
  %sitofp30 = sitofp i32 %move29 to double
  %temp31 = call double (double, double, ...) @pow(double %sitofp, double 1.000000e+00)
  %temp232 = fmul double %temp31, %sitofp30
  %current33 = fptoui double %temp232 to i32
  %result = add i32 %current33, 0
  %result34 = add i32 %current, %result
  %temp3 = mul i32 %result34, %nplayers
  %playerind = add i32 0, %temp3
  %access35 = getelementptr double, double* %payaddr, i32 %playerind
  store double 0.000000e+00, double* %access35
  %field36 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers37 = load i32, i32* %field36
  %field38 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves39 = load i32, i32* %field38
  %field40 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr41 = load double*, double** %field40
  %sitofp42 = sitofp i32 %nmoves39 to double
  %sitofp43 = sitofp i32 %nplayers37 to double
  %addr44 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon45 = getelementptr { i32, i32* }, { i32, i32* }* %addr44, i32 0, i32 1
  %conaddr46 = load i32*, i32** %getcon45
  %access47 = getelementptr i32, i32* %conaddr46, i32 0
  %move48 = load i32, i32* %access47
  %sitofp49 = sitofp i32 %move48 to double
  %temp50 = call double (double, double, ...) @pow(double %sitofp42, double 0.000000e+00)
  %temp251 = fmul double %temp50, %sitofp49
  %current52 = fptoui double %temp251 to i32
  %addr53 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon54 = getelementptr { i32, i32* }, { i32, i32* }* %addr53, i32 0, i32 1
  %conaddr55 = load i32*, i32** %getcon54
  %access56 = getelementptr i32, i32* %conaddr55, i32 1
  %move57 = load i32, i32* %access56
  %sitofp58 = sitofp i32 %move57 to double
  %temp59 = call double (double, double, ...) @pow(double %sitofp42, double 1.000000e+00)
  %temp260 = fmul double %temp59, %sitofp58
  %current61 = fptoui double %temp260 to i32
  %result62 = add i32 %current61, 0
  %result63 = add i32 %current52, %result62
  %temp364 = mul i32 %result63, %nplayers37
  %playerind65 = add i32 1, %temp364
  %access66 = getelementptr double, double* %payaddr41, i32 %playerind65
  store double 0.000000e+00, double* %access66
  %loadwild = load i32, i32* %access14
  %next = add i32 %loadwild, 1
  store i32 %next, i32* %access14
  br label %wildcond15

merge:                                            ; preds = %wildcond15
  %loadwild67 = load i32, i32* %access10
  %next68 = add i32 %loadwild67, 1
  store i32 %next68, i32* %access10
  br label %wildcond

merge71:                                          ; preds = %wildcond
  %addr72 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon73 = getelementptr { i32, i32* }, { i32, i32* }* %addr72, i32 0, i32 1
  %conaddr74 = load i32*, i32** %getcon73
  %access75 = getelementptr i32, i32* %conaddr74, i32 0
  %C = load i32, i32* @C
  store i32 %C, i32* %access75
  %addr76 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon77 = getelementptr { i32, i32* }, { i32, i32* }* %addr76, i32 0, i32 1
  %conaddr78 = load i32*, i32** %getcon77
  %access79 = getelementptr i32, i32* %conaddr78, i32 1
  %C80 = load i32, i32* @C
  store i32 %C80, i32* %access79
  %field81 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers82 = load i32, i32* %field81
  %field83 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves84 = load i32, i32* %field83
  %field85 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr86 = load double*, double** %field85
  %sitofp87 = sitofp i32 %nmoves84 to double
  %sitofp88 = sitofp i32 %nplayers82 to double
  %addr89 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon90 = getelementptr { i32, i32* }, { i32, i32* }* %addr89, i32 0, i32 1
  %conaddr91 = load i32*, i32** %getcon90
  %access92 = getelementptr i32, i32* %conaddr91, i32 0
  %move93 = load i32, i32* %access92
  %sitofp94 = sitofp i32 %move93 to double
  %temp95 = call double (double, double, ...) @pow(double %sitofp87, double 0.000000e+00)
  %temp296 = fmul double %temp95, %sitofp94
  %current97 = fptoui double %temp296 to i32
  %addr98 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon99 = getelementptr { i32, i32* }, { i32, i32* }* %addr98, i32 0, i32 1
  %conaddr100 = load i32*, i32** %getcon99
  %access101 = getelementptr i32, i32* %conaddr100, i32 1
  %move102 = load i32, i32* %access101
  %sitofp103 = sitofp i32 %move102 to double
  %temp104 = call double (double, double, ...) @pow(double %sitofp87, double 1.000000e+00)
  %temp2105 = fmul double %temp104, %sitofp103
  %current106 = fptoui double %temp2105 to i32
  %result107 = add i32 %current106, 0
  %result108 = add i32 %current97, %result107
  %temp3109 = mul i32 %result108, %nplayers82
  %playerind110 = add i32 0, %temp3109
  %access111 = getelementptr double, double* %payaddr86, i32 %playerind110
  store double -1.000000e+00, double* %access111
  %field112 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers113 = load i32, i32* %field112
  %field114 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves115 = load i32, i32* %field114
  %field116 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr117 = load double*, double** %field116
  %sitofp118 = sitofp i32 %nmoves115 to double
  %sitofp119 = sitofp i32 %nplayers113 to double
  %addr120 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon121 = getelementptr { i32, i32* }, { i32, i32* }* %addr120, i32 0, i32 1
  %conaddr122 = load i32*, i32** %getcon121
  %access123 = getelementptr i32, i32* %conaddr122, i32 0
  %move124 = load i32, i32* %access123
  %sitofp125 = sitofp i32 %move124 to double
  %temp126 = call double (double, double, ...) @pow(double %sitofp118, double 0.000000e+00)
  %temp2127 = fmul double %temp126, %sitofp125
  %current128 = fptoui double %temp2127 to i32
  %addr129 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon130 = getelementptr { i32, i32* }, { i32, i32* }* %addr129, i32 0, i32 1
  %conaddr131 = load i32*, i32** %getcon130
  %access132 = getelementptr i32, i32* %conaddr131, i32 1
  %move133 = load i32, i32* %access132
  %sitofp134 = sitofp i32 %move133 to double
  %temp135 = call double (double, double, ...) @pow(double %sitofp118, double 1.000000e+00)
  %temp2136 = fmul double %temp135, %sitofp134
  %current137 = fptoui double %temp2136 to i32
  %result138 = add i32 %current137, 0
  %result139 = add i32 %current128, %result138
  %temp3140 = mul i32 %result139, %nplayers113
  %playerind141 = add i32 1, %temp3140
  %access142 = getelementptr double, double* %payaddr117, i32 %playerind141
  store double -1.000000e+00, double* %access142
  %addr143 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon144 = getelementptr { i32, i32* }, { i32, i32* }* %addr143, i32 0, i32 1
  %conaddr145 = load i32*, i32** %getcon144
  %access146 = getelementptr i32, i32* %conaddr145, i32 0
  %C147 = load i32, i32* @C
  store i32 %C147, i32* %access146
  %addr148 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon149 = getelementptr { i32, i32* }, { i32, i32* }* %addr148, i32 0, i32 1
  %conaddr150 = load i32*, i32** %getcon149
  %access151 = getelementptr i32, i32* %conaddr150, i32 1
  %D = load i32, i32* @D
  store i32 %D, i32* %access151
  %field152 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers153 = load i32, i32* %field152
  %field154 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves155 = load i32, i32* %field154
  %field156 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr157 = load double*, double** %field156
  %sitofp158 = sitofp i32 %nmoves155 to double
  %sitofp159 = sitofp i32 %nplayers153 to double
  %addr160 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon161 = getelementptr { i32, i32* }, { i32, i32* }* %addr160, i32 0, i32 1
  %conaddr162 = load i32*, i32** %getcon161
  %access163 = getelementptr i32, i32* %conaddr162, i32 0
  %move164 = load i32, i32* %access163
  %sitofp165 = sitofp i32 %move164 to double
  %temp166 = call double (double, double, ...) @pow(double %sitofp158, double 0.000000e+00)
  %temp2167 = fmul double %temp166, %sitofp165
  %current168 = fptoui double %temp2167 to i32
  %addr169 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon170 = getelementptr { i32, i32* }, { i32, i32* }* %addr169, i32 0, i32 1
  %conaddr171 = load i32*, i32** %getcon170
  %access172 = getelementptr i32, i32* %conaddr171, i32 1
  %move173 = load i32, i32* %access172
  %sitofp174 = sitofp i32 %move173 to double
  %temp175 = call double (double, double, ...) @pow(double %sitofp158, double 1.000000e+00)
  %temp2176 = fmul double %temp175, %sitofp174
  %current177 = fptoui double %temp2176 to i32
  %result178 = add i32 %current177, 0
  %result179 = add i32 %current168, %result178
  %temp3180 = mul i32 %result179, %nplayers153
  %playerind181 = add i32 0, %temp3180
  %access182 = getelementptr double, double* %payaddr157, i32 %playerind181
  store double -6.000000e+00, double* %access182
  %field183 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers184 = load i32, i32* %field183
  %field185 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves186 = load i32, i32* %field185
  %field187 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr188 = load double*, double** %field187
  %sitofp189 = sitofp i32 %nmoves186 to double
  %sitofp190 = sitofp i32 %nplayers184 to double
  %addr191 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon192 = getelementptr { i32, i32* }, { i32, i32* }* %addr191, i32 0, i32 1
  %conaddr193 = load i32*, i32** %getcon192
  %access194 = getelementptr i32, i32* %conaddr193, i32 0
  %move195 = load i32, i32* %access194
  %sitofp196 = sitofp i32 %move195 to double
  %temp197 = call double (double, double, ...) @pow(double %sitofp189, double 0.000000e+00)
  %temp2198 = fmul double %temp197, %sitofp196
  %current199 = fptoui double %temp2198 to i32
  %addr200 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon201 = getelementptr { i32, i32* }, { i32, i32* }* %addr200, i32 0, i32 1
  %conaddr202 = load i32*, i32** %getcon201
  %access203 = getelementptr i32, i32* %conaddr202, i32 1
  %move204 = load i32, i32* %access203
  %sitofp205 = sitofp i32 %move204 to double
  %temp206 = call double (double, double, ...) @pow(double %sitofp189, double 1.000000e+00)
  %temp2207 = fmul double %temp206, %sitofp205
  %current208 = fptoui double %temp2207 to i32
  %result209 = add i32 %current208, 0
  %result210 = add i32 %current199, %result209
  %temp3211 = mul i32 %result210, %nplayers184
  %playerind212 = add i32 1, %temp3211
  %access213 = getelementptr double, double* %payaddr188, i32 %playerind212
  store double 0.000000e+00, double* %access213
  %addr214 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon215 = getelementptr { i32, i32* }, { i32, i32* }* %addr214, i32 0, i32 1
  %conaddr216 = load i32*, i32** %getcon215
  %access217 = getelementptr i32, i32* %conaddr216, i32 0
  %D218 = load i32, i32* @D
  store i32 %D218, i32* %access217
  %addr219 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon220 = getelementptr { i32, i32* }, { i32, i32* }* %addr219, i32 0, i32 1
  %conaddr221 = load i32*, i32** %getcon220
  %access222 = getelementptr i32, i32* %conaddr221, i32 1
  %C223 = load i32, i32* @C
  store i32 %C223, i32* %access222
  %field224 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers225 = load i32, i32* %field224
  %field226 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves227 = load i32, i32* %field226
  %field228 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr229 = load double*, double** %field228
  %sitofp230 = sitofp i32 %nmoves227 to double
  %sitofp231 = sitofp i32 %nplayers225 to double
  %addr232 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon233 = getelementptr { i32, i32* }, { i32, i32* }* %addr232, i32 0, i32 1
  %conaddr234 = load i32*, i32** %getcon233
  %access235 = getelementptr i32, i32* %conaddr234, i32 0
  %move236 = load i32, i32* %access235
  %sitofp237 = sitofp i32 %move236 to double
  %temp238 = call double (double, double, ...) @pow(double %sitofp230, double 0.000000e+00)
  %temp2239 = fmul double %temp238, %sitofp237
  %current240 = fptoui double %temp2239 to i32
  %addr241 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon242 = getelementptr { i32, i32* }, { i32, i32* }* %addr241, i32 0, i32 1
  %conaddr243 = load i32*, i32** %getcon242
  %access244 = getelementptr i32, i32* %conaddr243, i32 1
  %move245 = load i32, i32* %access244
  %sitofp246 = sitofp i32 %move245 to double
  %temp247 = call double (double, double, ...) @pow(double %sitofp230, double 1.000000e+00)
  %temp2248 = fmul double %temp247, %sitofp246
  %current249 = fptoui double %temp2248 to i32
  %result250 = add i32 %current249, 0
  %result251 = add i32 %current240, %result250
  %temp3252 = mul i32 %result251, %nplayers225
  %playerind253 = add i32 0, %temp3252
  %access254 = getelementptr double, double* %payaddr229, i32 %playerind253
  store double 0.000000e+00, double* %access254
  %field255 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers256 = load i32, i32* %field255
  %field257 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves258 = load i32, i32* %field257
  %field259 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr260 = load double*, double** %field259
  %sitofp261 = sitofp i32 %nmoves258 to double
  %sitofp262 = sitofp i32 %nplayers256 to double
  %addr263 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon264 = getelementptr { i32, i32* }, { i32, i32* }* %addr263, i32 0, i32 1
  %conaddr265 = load i32*, i32** %getcon264
  %access266 = getelementptr i32, i32* %conaddr265, i32 0
  %move267 = load i32, i32* %access266
  %sitofp268 = sitofp i32 %move267 to double
  %temp269 = call double (double, double, ...) @pow(double %sitofp261, double 0.000000e+00)
  %temp2270 = fmul double %temp269, %sitofp268
  %current271 = fptoui double %temp2270 to i32
  %addr272 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon273 = getelementptr { i32, i32* }, { i32, i32* }* %addr272, i32 0, i32 1
  %conaddr274 = load i32*, i32** %getcon273
  %access275 = getelementptr i32, i32* %conaddr274, i32 1
  %move276 = load i32, i32* %access275
  %sitofp277 = sitofp i32 %move276 to double
  %temp278 = call double (double, double, ...) @pow(double %sitofp261, double 1.000000e+00)
  %temp2279 = fmul double %temp278, %sitofp277
  %current280 = fptoui double %temp2279 to i32
  %result281 = add i32 %current280, 0
  %result282 = add i32 %current271, %result281
  %temp3283 = mul i32 %result282, %nplayers256
  %playerind284 = add i32 1, %temp3283
  %access285 = getelementptr double, double* %payaddr260, i32 %playerind284
  store double -6.000000e+00, double* %access285
  %addr286 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon287 = getelementptr { i32, i32* }, { i32, i32* }* %addr286, i32 0, i32 1
  %conaddr288 = load i32*, i32** %getcon287
  %access289 = getelementptr i32, i32* %conaddr288, i32 0
  %D290 = load i32, i32* @D
  store i32 %D290, i32* %access289
  %addr291 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon292 = getelementptr { i32, i32* }, { i32, i32* }* %addr291, i32 0, i32 1
  %conaddr293 = load i32*, i32** %getcon292
  %access294 = getelementptr i32, i32* %conaddr293, i32 1
  %D295 = load i32, i32* @D
  store i32 %D295, i32* %access294
  %field296 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers297 = load i32, i32* %field296
  %field298 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves299 = load i32, i32* %field298
  %field300 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr301 = load double*, double** %field300
  %sitofp302 = sitofp i32 %nmoves299 to double
  %sitofp303 = sitofp i32 %nplayers297 to double
  %addr304 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon305 = getelementptr { i32, i32* }, { i32, i32* }* %addr304, i32 0, i32 1
  %conaddr306 = load i32*, i32** %getcon305
  %access307 = getelementptr i32, i32* %conaddr306, i32 0
  %move308 = load i32, i32* %access307
  %sitofp309 = sitofp i32 %move308 to double
  %temp310 = call double (double, double, ...) @pow(double %sitofp302, double 0.000000e+00)
  %temp2311 = fmul double %temp310, %sitofp309
  %current312 = fptoui double %temp2311 to i32
  %addr313 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon314 = getelementptr { i32, i32* }, { i32, i32* }* %addr313, i32 0, i32 1
  %conaddr315 = load i32*, i32** %getcon314
  %access316 = getelementptr i32, i32* %conaddr315, i32 1
  %move317 = load i32, i32* %access316
  %sitofp318 = sitofp i32 %move317 to double
  %temp319 = call double (double, double, ...) @pow(double %sitofp302, double 1.000000e+00)
  %temp2320 = fmul double %temp319, %sitofp318
  %current321 = fptoui double %temp2320 to i32
  %result322 = add i32 %current321, 0
  %result323 = add i32 %current312, %result322
  %temp3324 = mul i32 %result323, %nplayers297
  %playerind325 = add i32 0, %temp3324
  %access326 = getelementptr double, double* %payaddr301, i32 %playerind325
  store double -5.000000e+00, double* %access326
  %field327 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers328 = load i32, i32* %field327
  %field329 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves330 = load i32, i32* %field329
  %field331 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr332 = load double*, double** %field331
  %sitofp333 = sitofp i32 %nmoves330 to double
  %sitofp334 = sitofp i32 %nplayers328 to double
  %addr335 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon336 = getelementptr { i32, i32* }, { i32, i32* }* %addr335, i32 0, i32 1
  %conaddr337 = load i32*, i32** %getcon336
  %access338 = getelementptr i32, i32* %conaddr337, i32 0
  %move339 = load i32, i32* %access338
  %sitofp340 = sitofp i32 %move339 to double
  %temp341 = call double (double, double, ...) @pow(double %sitofp333, double 0.000000e+00)
  %temp2342 = fmul double %temp341, %sitofp340
  %current343 = fptoui double %temp2342 to i32
  %addr344 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon345 = getelementptr { i32, i32* }, { i32, i32* }* %addr344, i32 0, i32 1
  %conaddr346 = load i32*, i32** %getcon345
  %access347 = getelementptr i32, i32* %conaddr346, i32 1
  %move348 = load i32, i32* %access347
  %sitofp349 = sitofp i32 %move348 to double
  %temp350 = call double (double, double, ...) @pow(double %sitofp333, double 1.000000e+00)
  %temp2351 = fmul double %temp350, %sitofp349
  %current352 = fptoui double %temp2351 to i32
  %result353 = add i32 %current352, 0
  %result354 = add i32 %current343, %result353
  %temp3355 = mul i32 %result354, %nplayers328
  %playerind356 = add i32 1, %temp3355
  %access357 = getelementptr double, double* %payaddr332, i32 %playerind356
  store double -5.000000e+00, double* %access357
  store { i32, i32, double* }* %newgame, { i32, i32, double* }** @pd
  %newstrategy = alloca { i32, i32, i32, { i32, i32 }* }
  %exp358 = call double (double, double, ...) @pow(double 2.000000e+00, double 2.000000e+00)
  %size359 = fptoui double %exp358 to i32
  %size360 = mul i32 %size359, 3
  %trans = alloca { i32, i32 }, i32 %size360
  %nplayersdest361 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nmovesdest362 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nstatesdest = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 2
  %ptrdest363 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  store i32 2, i32* %nplayersdest361
  store i32 2, i32* %nmovesdest362
  store i32 3, i32* %nstatesdest
  store { i32, i32 }* %trans, { i32, i32 }** %ptrdest363
  %outputs = alloca { i32, i32* }*
  %newarray364 = alloca { i32, i32* }
  %contents365 = alloca i32, i32 3
  %ptrdest366 = getelementptr { i32, i32* }, { i32, i32* }* %newarray364, i32 0, i32 0
  %ptrdest367 = getelementptr { i32, i32* }, { i32, i32* }* %newarray364, i32 0, i32 1
  store i32 3, i32* %ptrdest366
  store i32* %contents365, i32** %ptrdest367
  store { i32, i32* }* %newarray364, { i32, i32* }** %outputs
  %addr368 = load { i32, i32* }*, { i32, i32* }** %outputs
  %getcon369 = getelementptr { i32, i32* }, { i32, i32* }* %addr368, i32 0, i32 1
  %conaddr370 = load i32*, i32** %getcon369
  %access371 = getelementptr i32, i32* %conaddr370, i32 0
  %C372 = load i32, i32* @C
  store i32 %C372, i32* %access371
  %cooperate = alloca i32
  store i32 0, i32* %cooperate
  %addr373 = load { i32, i32* }*, { i32, i32* }** %outputs
  %getcon374 = getelementptr { i32, i32* }, { i32, i32* }* %addr373, i32 0, i32 1
  %conaddr375 = load i32*, i32** %getcon374
  %access376 = getelementptr i32, i32* %conaddr375, i32 1
  %D377 = load i32, i32* @D
  store i32 %D377, i32* %access376
  %defect = alloca i32
  store i32 1, i32* %defect
  %exp378 = call double (double, double, ...) @pow(double 2.000000e+00, double 2.000000e+00)
  %size379 = fptoui double %exp378 to i32
  %statei = alloca i32
  %transi = alloca i32
  store i32 0, i32* %statei
  br label %statecond

statecond:                                        ; preds = %merge2, %merge71
  %statei411 = load i32, i32* %statei
  %statecomp = icmp slt i32 %statei411, 3
  br i1 %statecomp, label %state_loop, label %merge1

state_loop:                                       ; preds = %statecond
  store i32 0, i32* %transi
  br label %transcond

transcond:                                        ; preds = %merge3, %state_loop
  %transi408 = load i32, i32* %transi
  %transcomp = icmp slt i32 %transi408, %size379
  br i1 %transcomp, label %trans_loop, label %merge2

trans_loop:                                       ; preds = %transcond
  %statei380 = load i32, i32* %statei
  %transi381 = load i32, i32* %transi
  %field382 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr = load { i32, i32 }*, { i32, i32 }** %field382
  %state = mul i32 %size379, %statei380
  %state383 = add i32 %transi381, %state
  %access384 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr, i32 %state383
  %field385 = getelementptr { i32, i32 }, { i32, i32 }* %access384, i32 0, i32 1
  store i32 %statei380, i32* %field385
  %ifcomp = icmp slt i32 %statei380, 2
  br i1 %ifcomp, label %then, label %else

merge3:                                           ; preds = %else, %then
  %transi406 = load i32, i32* %transi
  %next407 = add i32 %transi406, 1
  store i32 %next407, i32* %transi
  br label %transcond

then:                                             ; preds = %trans_loop
  %statei386 = load i32, i32* %statei
  %transi387 = load i32, i32* %transi
  %field388 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr389 = load { i32, i32 }*, { i32, i32 }** %field388
  %state390 = mul i32 %size379, %statei386
  %state391 = add i32 %transi387, %state390
  %access392 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr389, i32 %state391
  %field393 = getelementptr { i32, i32 }, { i32, i32 }* %access392, i32 0, i32 0
  %addr394 = load { i32, i32* }*, { i32, i32* }** %outputs
  %getcon395 = getelementptr { i32, i32* }, { i32, i32* }* %addr394, i32 0, i32 1
  %conaddr396 = load i32*, i32** %getcon395
  %access397 = getelementptr i32, i32* %conaddr396, i32 %statei386
  %outputmove = load i32, i32* %access397
  store i32 %outputmove, i32* %field393
  br label %merge3

else:                                             ; preds = %trans_loop
  %statei398 = load i32, i32* %statei
  %transi399 = load i32, i32* %transi
  %field400 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr401 = load { i32, i32 }*, { i32, i32 }** %field400
  %state402 = mul i32 %size379, %statei398
  %state403 = add i32 %transi399, %state402
  %access404 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr401, i32 %state403
  %field405 = getelementptr { i32, i32 }, { i32, i32 }* %access404, i32 0, i32 0
  store i32 0, i32* %field405
  br label %merge3

merge2:                                           ; preds = %transcond
  %statei409 = load i32, i32* %statei
  %next410 = add i32 %statei409, 1
  store i32 %next410, i32* %statei
  br label %statecond

merge1:                                           ; preds = %statecond
  %moves412 = alloca { i32, i32* }*
  %newarray413 = alloca { i32, i32* }
  %contents414 = alloca i32, i32 2
  %ptrdest415 = getelementptr { i32, i32* }, { i32, i32* }* %newarray413, i32 0, i32 0
  %ptrdest416 = getelementptr { i32, i32* }, { i32, i32* }* %newarray413, i32 0, i32 1
  store i32 2, i32* %ptrdest415
  store i32* %contents414, i32** %ptrdest416
  store { i32, i32* }* %newarray413, { i32, i32* }** %moves412
  %addr417 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon418 = getelementptr { i32, i32* }, { i32, i32* }* %addr417, i32 0, i32 1
  %conaddr419 = load i32*, i32** %getcon418
  %access420 = getelementptr i32, i32* %conaddr419, i32 0
  %D421 = load i32, i32* @D
  store i32 %D421, i32* %access420
  %addr422 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon423 = getelementptr { i32, i32* }, { i32, i32* }* %addr422, i32 0, i32 1
  %conaddr424 = load i32*, i32** %getcon423
  %access425 = getelementptr i32, i32* %conaddr424, i32 1
  store i32 0, i32* %access425
  %addr426 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon427 = getelementptr { i32, i32* }, { i32, i32* }* %addr426, i32 0, i32 1
  %conaddr428 = load i32*, i32** %getcon427
  %access429 = getelementptr i32, i32* %conaddr428, i32 1
  store i32 0, i32* %access429
  br label %wildcond430

wildcond430:                                      ; preds = %wildloop431, %merge1
  %player469 = load i32, i32* %access429
  %wildcomp470 = icmp slt i32 %player469, 2
  br i1 %wildcomp470, label %wildloop431, label %merge471

wildloop431:                                      ; preds = %wildcond430
  %defect432 = load i32, i32* %defect
  %field433 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nplayers434 = load i32, i32* %field433
  %field435 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nmoves436 = load i32, i32* %field435
  %sitofp437 = sitofp i32 %nmoves436 to double
  %sitofp438 = sitofp i32 %nplayers434 to double
  %exp439 = call double (double, double, ...) @pow(double %sitofp437, double %sitofp438)
  %size440 = fptoui double %exp439 to i32
  %field441 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr442 = load { i32, i32 }*, { i32, i32 }** %field441
  %start = mul i32 %size440, 0
  %sitofp443 = sitofp i32 %nmoves436 to double
  %sitofp444 = sitofp i32 %nplayers434 to double
  %addr445 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon446 = getelementptr { i32, i32* }, { i32, i32* }* %addr445, i32 0, i32 1
  %conaddr447 = load i32*, i32** %getcon446
  %access448 = getelementptr i32, i32* %conaddr447, i32 0
  %move449 = load i32, i32* %access448
  %sitofp450 = sitofp i32 %move449 to double
  %temp451 = call double (double, double, ...) @pow(double %sitofp443, double 0.000000e+00)
  %temp2452 = fmul double %temp451, %sitofp450
  %current453 = fptoui double %temp2452 to i32
  %addr454 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon455 = getelementptr { i32, i32* }, { i32, i32* }* %addr454, i32 0, i32 1
  %conaddr456 = load i32*, i32** %getcon455
  %access457 = getelementptr i32, i32* %conaddr456, i32 1
  %move458 = load i32, i32* %access457
  %sitofp459 = sitofp i32 %move458 to double
  %temp460 = call double (double, double, ...) @pow(double %sitofp443, double 1.000000e+00)
  %temp2461 = fmul double %temp460, %sitofp459
  %current462 = fptoui double %temp2461 to i32
  %result463 = add i32 %current462, 0
  %result464 = add i32 %current453, %result463
  %index = add i32 %start, %result464
  %access465 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr442, i32 %index
  %field466 = getelementptr { i32, i32 }, { i32, i32 }* %access465, i32 0, i32 1
  store i32 %defect432, i32* %field466
  %loadwild467 = load i32, i32* %access429
  %next468 = add i32 %loadwild467, 1
  store i32 %next468, i32* %access429
  br label %wildcond430

merge471:                                         ; preds = %wildcond430
  %addr472 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon473 = getelementptr { i32, i32* }, { i32, i32* }* %addr472, i32 0, i32 1
  %conaddr474 = load i32*, i32** %getcon473
  %access475 = getelementptr i32, i32* %conaddr474, i32 0
  store i32 0, i32* %access475
  %addr476 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon477 = getelementptr { i32, i32* }, { i32, i32* }* %addr476, i32 0, i32 1
  %conaddr478 = load i32*, i32** %getcon477
  %access479 = getelementptr i32, i32* %conaddr478, i32 1
  store i32 0, i32* %access479
  %addr480 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon481 = getelementptr { i32, i32* }, { i32, i32* }* %addr480, i32 0, i32 1
  %conaddr482 = load i32*, i32** %getcon481
  %access483 = getelementptr i32, i32* %conaddr482, i32 0
  store i32 0, i32* %access483
  br label %wildcond484

wildcond484:                                      ; preds = %merge533, %merge471
  %player536 = load i32, i32* %access483
  %wildcomp537 = icmp slt i32 %player536, 2
  br i1 %wildcomp537, label %wildloop485, label %merge538

wildloop485:                                      ; preds = %wildcond484
  %addr486 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon487 = getelementptr { i32, i32* }, { i32, i32* }* %addr486, i32 0, i32 1
  %conaddr488 = load i32*, i32** %getcon487
  %access489 = getelementptr i32, i32* %conaddr488, i32 1
  store i32 0, i32* %access489
  br label %wildcond490

wildcond490:                                      ; preds = %wildloop491, %wildloop485
  %player531 = load i32, i32* %access489
  %wildcomp532 = icmp slt i32 %player531, 2
  br i1 %wildcomp532, label %wildloop491, label %merge533

wildloop491:                                      ; preds = %wildcond490
  %defect492 = load i32, i32* %defect
  %field493 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nplayers494 = load i32, i32* %field493
  %field495 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nmoves496 = load i32, i32* %field495
  %sitofp497 = sitofp i32 %nmoves496 to double
  %sitofp498 = sitofp i32 %nplayers494 to double
  %exp499 = call double (double, double, ...) @pow(double %sitofp497, double %sitofp498)
  %size500 = fptoui double %exp499 to i32
  %field501 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr502 = load { i32, i32 }*, { i32, i32 }** %field501
  %start503 = mul i32 %size500, 1
  %sitofp504 = sitofp i32 %nmoves496 to double
  %sitofp505 = sitofp i32 %nplayers494 to double
  %addr506 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon507 = getelementptr { i32, i32* }, { i32, i32* }* %addr506, i32 0, i32 1
  %conaddr508 = load i32*, i32** %getcon507
  %access509 = getelementptr i32, i32* %conaddr508, i32 0
  %move510 = load i32, i32* %access509
  %sitofp511 = sitofp i32 %move510 to double
  %temp512 = call double (double, double, ...) @pow(double %sitofp504, double 0.000000e+00)
  %temp2513 = fmul double %temp512, %sitofp511
  %current514 = fptoui double %temp2513 to i32
  %addr515 = load { i32, i32* }*, { i32, i32* }** %moves412
  %getcon516 = getelementptr { i32, i32* }, { i32, i32* }* %addr515, i32 0, i32 1
  %conaddr517 = load i32*, i32** %getcon516
  %access518 = getelementptr i32, i32* %conaddr517, i32 1
  %move519 = load i32, i32* %access518
  %sitofp520 = sitofp i32 %move519 to double
  %temp521 = call double (double, double, ...) @pow(double %sitofp504, double 1.000000e+00)
  %temp2522 = fmul double %temp521, %sitofp520
  %current523 = fptoui double %temp2522 to i32
  %result524 = add i32 %current523, 0
  %result525 = add i32 %current514, %result524
  %index526 = add i32 %start503, %result525
  %access527 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr502, i32 %index526
  %field528 = getelementptr { i32, i32 }, { i32, i32 }* %access527, i32 0, i32 1
  store i32 %defect492, i32* %field528
  %loadwild529 = load i32, i32* %access489
  %next530 = add i32 %loadwild529, 1
  store i32 %next530, i32* %access489
  br label %wildcond490

merge533:                                         ; preds = %wildcond490
  %loadwild534 = load i32, i32* %access483
  %next535 = add i32 %loadwild534, 1
  store i32 %next535, i32* %access483
  br label %wildcond484

merge538:                                         ; preds = %wildcond484
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy, { i32, i32, i32, { i32, i32 }* }** @grim1
  %newstrategy539 = alloca { i32, i32, i32, { i32, i32 }* }
  %exp540 = call double (double, double, ...) @pow(double 2.000000e+00, double 2.000000e+00)
  %size541 = fptoui double %exp540 to i32
  %size542 = mul i32 %size541, 3
  %trans543 = alloca { i32, i32 }, i32 %size542
  %nplayersdest544 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 0
  %nmovesdest545 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 1
  %nstatesdest546 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 2
  %ptrdest547 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 3
  store i32 2, i32* %nplayersdest544
  store i32 2, i32* %nmovesdest545
  store i32 3, i32* %nstatesdest546
  store { i32, i32 }* %trans543, { i32, i32 }** %ptrdest547
  %outputs548 = alloca { i32, i32* }*
  %newarray549 = alloca { i32, i32* }
  %contents550 = alloca i32, i32 3
  %ptrdest551 = getelementptr { i32, i32* }, { i32, i32* }* %newarray549, i32 0, i32 0
  %ptrdest552 = getelementptr { i32, i32* }, { i32, i32* }* %newarray549, i32 0, i32 1
  store i32 3, i32* %ptrdest551
  store i32* %contents550, i32** %ptrdest552
  store { i32, i32* }* %newarray549, { i32, i32* }** %outputs548
  %addr553 = load { i32, i32* }*, { i32, i32* }** %outputs548
  %getcon554 = getelementptr { i32, i32* }, { i32, i32* }* %addr553, i32 0, i32 1
  %conaddr555 = load i32*, i32** %getcon554
  %access556 = getelementptr i32, i32* %conaddr555, i32 0
  %C557 = load i32, i32* @C
  store i32 %C557, i32* %access556
  %cooperate558 = alloca i32
  store i32 0, i32* %cooperate558
  %addr559 = load { i32, i32* }*, { i32, i32* }** %outputs548
  %getcon560 = getelementptr { i32, i32* }, { i32, i32* }* %addr559, i32 0, i32 1
  %conaddr561 = load i32*, i32** %getcon560
  %access562 = getelementptr i32, i32* %conaddr561, i32 1
  %D563 = load i32, i32* @D
  store i32 %D563, i32* %access562
  %defect564 = alloca i32
  store i32 1, i32* %defect564
  %exp565 = call double (double, double, ...) @pow(double 2.000000e+00, double 2.000000e+00)
  %size566 = fptoui double %exp565 to i32
  %statei567 = alloca i32
  %transi568 = alloca i32
  store i32 0, i32* %statei567
  br label %statecond569

statecond569:                                     ; preds = %merge2610, %merge538
  %statei613 = load i32, i32* %statei567
  %statecomp614 = icmp slt i32 %statei613, 3
  br i1 %statecomp614, label %state_loop570, label %merge1615

state_loop570:                                    ; preds = %statecond569
  store i32 0, i32* %transi568
  br label %transcond571

transcond571:                                     ; preds = %merge3582, %state_loop570
  %transi608 = load i32, i32* %transi568
  %transcomp609 = icmp slt i32 %transi608, %size566
  br i1 %transcomp609, label %trans_loop572, label %merge2610

trans_loop572:                                    ; preds = %transcond571
  %statei573 = load i32, i32* %statei567
  %transi574 = load i32, i32* %transi568
  %field575 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 3
  %transaddr576 = load { i32, i32 }*, { i32, i32 }** %field575
  %state577 = mul i32 %size566, %statei573
  %state578 = add i32 %transi574, %state577
  %access579 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr576, i32 %state578
  %field580 = getelementptr { i32, i32 }, { i32, i32 }* %access579, i32 0, i32 1
  store i32 %statei573, i32* %field580
  %ifcomp581 = icmp slt i32 %statei573, 2
  br i1 %ifcomp581, label %then583, label %else597

merge3582:                                        ; preds = %else597, %then583
  %transi606 = load i32, i32* %transi568
  %next607 = add i32 %transi606, 1
  store i32 %next607, i32* %transi568
  br label %transcond571

then583:                                          ; preds = %trans_loop572
  %statei584 = load i32, i32* %statei567
  %transi585 = load i32, i32* %transi568
  %field586 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 3
  %transaddr587 = load { i32, i32 }*, { i32, i32 }** %field586
  %state588 = mul i32 %size566, %statei584
  %state589 = add i32 %transi585, %state588
  %access590 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr587, i32 %state589
  %field591 = getelementptr { i32, i32 }, { i32, i32 }* %access590, i32 0, i32 0
  %addr592 = load { i32, i32* }*, { i32, i32* }** %outputs548
  %getcon593 = getelementptr { i32, i32* }, { i32, i32* }* %addr592, i32 0, i32 1
  %conaddr594 = load i32*, i32** %getcon593
  %access595 = getelementptr i32, i32* %conaddr594, i32 %statei584
  %outputmove596 = load i32, i32* %access595
  store i32 %outputmove596, i32* %field591
  br label %merge3582

else597:                                          ; preds = %trans_loop572
  %statei598 = load i32, i32* %statei567
  %transi599 = load i32, i32* %transi568
  %field600 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 3
  %transaddr601 = load { i32, i32 }*, { i32, i32 }** %field600
  %state602 = mul i32 %size566, %statei598
  %state603 = add i32 %transi599, %state602
  %access604 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr601, i32 %state603
  %field605 = getelementptr { i32, i32 }, { i32, i32 }* %access604, i32 0, i32 0
  store i32 0, i32* %field605
  br label %merge3582

merge2610:                                        ; preds = %transcond571
  %statei611 = load i32, i32* %statei567
  %next612 = add i32 %statei611, 1
  store i32 %next612, i32* %statei567
  br label %statecond569

merge1615:                                        ; preds = %statecond569
  %moves616 = alloca { i32, i32* }*
  %newarray617 = alloca { i32, i32* }
  %contents618 = alloca i32, i32 2
  %ptrdest619 = getelementptr { i32, i32* }, { i32, i32* }* %newarray617, i32 0, i32 0
  %ptrdest620 = getelementptr { i32, i32* }, { i32, i32* }* %newarray617, i32 0, i32 1
  store i32 2, i32* %ptrdest619
  store i32* %contents618, i32** %ptrdest620
  store { i32, i32* }* %newarray617, { i32, i32* }** %moves616
  %addr621 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon622 = getelementptr { i32, i32* }, { i32, i32* }* %addr621, i32 0, i32 1
  %conaddr623 = load i32*, i32** %getcon622
  %access624 = getelementptr i32, i32* %conaddr623, i32 0
  store i32 0, i32* %access624
  %addr625 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon626 = getelementptr { i32, i32* }, { i32, i32* }* %addr625, i32 0, i32 1
  %conaddr627 = load i32*, i32** %getcon626
  %access628 = getelementptr i32, i32* %conaddr627, i32 1
  %D629 = load i32, i32* @D
  store i32 %D629, i32* %access628
  %addr630 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon631 = getelementptr { i32, i32* }, { i32, i32* }* %addr630, i32 0, i32 1
  %conaddr632 = load i32*, i32** %getcon631
  %access633 = getelementptr i32, i32* %conaddr632, i32 0
  store i32 0, i32* %access633
  br label %wildcond634

wildcond634:                                      ; preds = %wildloop635, %merge1615
  %player675 = load i32, i32* %access633
  %wildcomp676 = icmp slt i32 %player675, 2
  br i1 %wildcomp676, label %wildloop635, label %merge677

wildloop635:                                      ; preds = %wildcond634
  %defect636 = load i32, i32* %defect564
  %field637 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 0
  %nplayers638 = load i32, i32* %field637
  %field639 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 1
  %nmoves640 = load i32, i32* %field639
  %sitofp641 = sitofp i32 %nmoves640 to double
  %sitofp642 = sitofp i32 %nplayers638 to double
  %exp643 = call double (double, double, ...) @pow(double %sitofp641, double %sitofp642)
  %size644 = fptoui double %exp643 to i32
  %field645 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 3
  %transaddr646 = load { i32, i32 }*, { i32, i32 }** %field645
  %start647 = mul i32 %size644, 0
  %sitofp648 = sitofp i32 %nmoves640 to double
  %sitofp649 = sitofp i32 %nplayers638 to double
  %addr650 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon651 = getelementptr { i32, i32* }, { i32, i32* }* %addr650, i32 0, i32 1
  %conaddr652 = load i32*, i32** %getcon651
  %access653 = getelementptr i32, i32* %conaddr652, i32 0
  %move654 = load i32, i32* %access653
  %sitofp655 = sitofp i32 %move654 to double
  %temp656 = call double (double, double, ...) @pow(double %sitofp648, double 0.000000e+00)
  %temp2657 = fmul double %temp656, %sitofp655
  %current658 = fptoui double %temp2657 to i32
  %addr659 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon660 = getelementptr { i32, i32* }, { i32, i32* }* %addr659, i32 0, i32 1
  %conaddr661 = load i32*, i32** %getcon660
  %access662 = getelementptr i32, i32* %conaddr661, i32 1
  %move663 = load i32, i32* %access662
  %sitofp664 = sitofp i32 %move663 to double
  %temp665 = call double (double, double, ...) @pow(double %sitofp648, double 1.000000e+00)
  %temp2666 = fmul double %temp665, %sitofp664
  %current667 = fptoui double %temp2666 to i32
  %result668 = add i32 %current667, 0
  %result669 = add i32 %current658, %result668
  %index670 = add i32 %start647, %result669
  %access671 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr646, i32 %index670
  %field672 = getelementptr { i32, i32 }, { i32, i32 }* %access671, i32 0, i32 1
  store i32 %defect636, i32* %field672
  %loadwild673 = load i32, i32* %access633
  %next674 = add i32 %loadwild673, 1
  store i32 %next674, i32* %access633
  br label %wildcond634

merge677:                                         ; preds = %wildcond634
  %addr678 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon679 = getelementptr { i32, i32* }, { i32, i32* }* %addr678, i32 0, i32 1
  %conaddr680 = load i32*, i32** %getcon679
  %access681 = getelementptr i32, i32* %conaddr680, i32 0
  store i32 0, i32* %access681
  %addr682 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon683 = getelementptr { i32, i32* }, { i32, i32* }* %addr682, i32 0, i32 1
  %conaddr684 = load i32*, i32** %getcon683
  %access685 = getelementptr i32, i32* %conaddr684, i32 1
  store i32 0, i32* %access685
  %addr686 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon687 = getelementptr { i32, i32* }, { i32, i32* }* %addr686, i32 0, i32 1
  %conaddr688 = load i32*, i32** %getcon687
  %access689 = getelementptr i32, i32* %conaddr688, i32 0
  store i32 0, i32* %access689
  br label %wildcond690

wildcond690:                                      ; preds = %merge739, %merge677
  %player742 = load i32, i32* %access689
  %wildcomp743 = icmp slt i32 %player742, 2
  br i1 %wildcomp743, label %wildloop691, label %merge744

wildloop691:                                      ; preds = %wildcond690
  %addr692 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon693 = getelementptr { i32, i32* }, { i32, i32* }* %addr692, i32 0, i32 1
  %conaddr694 = load i32*, i32** %getcon693
  %access695 = getelementptr i32, i32* %conaddr694, i32 1
  store i32 0, i32* %access695
  br label %wildcond696

wildcond696:                                      ; preds = %wildloop697, %wildloop691
  %player737 = load i32, i32* %access695
  %wildcomp738 = icmp slt i32 %player737, 2
  br i1 %wildcomp738, label %wildloop697, label %merge739

wildloop697:                                      ; preds = %wildcond696
  %defect698 = load i32, i32* %defect564
  %field699 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 0
  %nplayers700 = load i32, i32* %field699
  %field701 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 1
  %nmoves702 = load i32, i32* %field701
  %sitofp703 = sitofp i32 %nmoves702 to double
  %sitofp704 = sitofp i32 %nplayers700 to double
  %exp705 = call double (double, double, ...) @pow(double %sitofp703, double %sitofp704)
  %size706 = fptoui double %exp705 to i32
  %field707 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy539, i32 0, i32 3
  %transaddr708 = load { i32, i32 }*, { i32, i32 }** %field707
  %start709 = mul i32 %size706, 1
  %sitofp710 = sitofp i32 %nmoves702 to double
  %sitofp711 = sitofp i32 %nplayers700 to double
  %addr712 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon713 = getelementptr { i32, i32* }, { i32, i32* }* %addr712, i32 0, i32 1
  %conaddr714 = load i32*, i32** %getcon713
  %access715 = getelementptr i32, i32* %conaddr714, i32 0
  %move716 = load i32, i32* %access715
  %sitofp717 = sitofp i32 %move716 to double
  %temp718 = call double (double, double, ...) @pow(double %sitofp710, double 0.000000e+00)
  %temp2719 = fmul double %temp718, %sitofp717
  %current720 = fptoui double %temp2719 to i32
  %addr721 = load { i32, i32* }*, { i32, i32* }** %moves616
  %getcon722 = getelementptr { i32, i32* }, { i32, i32* }* %addr721, i32 0, i32 1
  %conaddr723 = load i32*, i32** %getcon722
  %access724 = getelementptr i32, i32* %conaddr723, i32 1
  %move725 = load i32, i32* %access724
  %sitofp726 = sitofp i32 %move725 to double
  %temp727 = call double (double, double, ...) @pow(double %sitofp710, double 1.000000e+00)
  %temp2728 = fmul double %temp727, %sitofp726
  %current729 = fptoui double %temp2728 to i32
  %result730 = add i32 %current729, 0
  %result731 = add i32 %current720, %result730
  %index732 = add i32 %start709, %result731
  %access733 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr708, i32 %index732
  %field734 = getelementptr { i32, i32 }, { i32, i32 }* %access733, i32 0, i32 1
  store i32 %defect698, i32* %field734
  %loadwild735 = load i32, i32* %access695
  %next736 = add i32 %loadwild735, 1
  store i32 %next736, i32* %access695
  br label %wildcond696

merge739:                                         ; preds = %wildcond696
  %loadwild740 = load i32, i32* %access689
  %next741 = add i32 %loadwild740, 1
  store i32 %next741, i32* %access689
  br label %wildcond690

merge744:                                         ; preds = %wildcond690
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy539, { i32, i32, i32, { i32, i32 }* }** @grim2
  %newarray745 = alloca { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }
  %contents746 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, i32 10
  %ptrdest747 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray745, i32 0, i32 0
  %ptrdest748 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray745, i32 0, i32 1
  store i32 10, i32* %ptrdest747
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %contents746, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %ptrdest748
  store { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray745, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %newarray749 = alloca { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }
  %contents750 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, i32 10
  %ptrdest751 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray749, i32 0, i32 0
  %ptrdest752 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray749, i32 0, i32 1
  store i32 10, i32* %ptrdest751
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %contents750, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %ptrdest752
  store { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray749, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %newarray753 = alloca { i32, double* }
  %contents754 = alloca double, i32 10
  %ptrdest755 = getelementptr { i32, double* }, { i32, double* }* %newarray753, i32 0, i32 0
  %ptrdest756 = getelementptr { i32, double* }, { i32, double* }* %newarray753, i32 0, i32 1
  store i32 10, i32* %ptrdest755
  store double* %contents754, double** %ptrdest756
  store { i32, double* }* %newarray753, { i32, double* }** @payoffs1
  %newarray757 = alloca { i32, double* }
  %contents758 = alloca double, i32 10
  %ptrdest759 = getelementptr { i32, double* }, { i32, double* }* %newarray757, i32 0, i32 0
  %ptrdest760 = getelementptr { i32, double* }, { i32, double* }* %newarray757, i32 0, i32 1
  store i32 10, i32* %ptrdest759
  store double* %contents758, double** %ptrdest760
  store { i32, double* }* %newarray757, { i32, double* }** @payoffs2
  %players1 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players1, i32 0, i32 0
  %arrlen = load i32, i32* %getlen
  %tmp = sub i32 %arrlen, 1
  %rangediff = sub i32 %tmp, 0
  %rangesize = add i32 %rangediff, 1
  %newarray761 = alloca { i32, i32* }
  %contents762 = alloca i32, i32 %rangesize
  %ptrdest763 = getelementptr { i32, i32* }, { i32, i32* }* %newarray761, i32 0, i32 0
  %ptrdest764 = getelementptr { i32, i32* }, { i32, i32* }* %newarray761, i32 0, i32 1
  store i32 %rangesize, i32* %ptrdest763
  store i32* %contents762, i32** %ptrdest764
  %rangeptr = alloca { i32, i32* }*
  store { i32, i32* }* %newarray761, { i32, i32* }** %rangeptr
  %addr765 = load { i32, i32* }*, { i32, i32* }** %rangeptr
  %getcon766 = getelementptr { i32, i32* }, { i32, i32* }* %addr765, i32 0, i32 1
  %conaddr767 = load i32*, i32** %getcon766
  %access768 = getelementptr i32, i32* %conaddr767, i32 %rangediff
  br label %range

range:                                            ; preds = %merge744
  %i = alloca i32
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_loop, %range
  %lastentry = load i32, i32* %access768
  %rangecomp = icmp ne i32 %lastentry, %tmp
  br i1 %rangecomp, label %while_loop, label %merge774

while_loop:                                       ; preds = %while
  %loadi = load i32, i32* %i
  %addr769 = load { i32, i32* }*, { i32, i32* }** %rangeptr
  %getcon770 = getelementptr { i32, i32* }, { i32, i32* }* %addr769, i32 0, i32 1
  %conaddr771 = load i32*, i32** %getcon770
  %access772 = getelementptr i32, i32* %conaddr771, i32 %loadi
  %calcval = add i32 0, %loadi
  store i32 %calcval, i32* %access772
  %i773 = load i32, i32* %i
  %iplusone = add i32 %i773, 1
  store i32 %iplusone, i32* %i
  br label %while

merge774:                                         ; preds = %while
  %eptr = alloca { i32, i32* }*
  store { i32, i32* }* %newarray761, { i32, i32* }** %eptr
  %getlen775 = getelementptr { i32, i32* }, { i32, i32* }* %newarray761, i32 0, i32 0
  %size776 = load i32, i32* %getlen775
  %addr777 = load { i32, i32* }*, { i32, i32* }** %eptr
  %getcon778 = getelementptr { i32, i32* }, { i32, i32* }* %addr777, i32 0, i32 1
  %conaddr779 = load i32*, i32** %getcon778
  %access780 = getelementptr i32, i32* %conaddr779, i32 0
  %current781 = load i32, i32* %access780
  %i782 = alloca i32
  store i32 %current781, i32* %i782
  %i783 = alloca i32
  store i32 0, i32* %i783
  br label %for

for:                                              ; preds = %merge952, %merge774
  %i961 = load i32, i32* %i783
  %forcomp = icmp ne i32 %i961, %size776
  br i1 %forcomp, label %for_loop, label %merge962

for_loop:                                         ; preds = %for
  br label %block784

block784:                                         ; preds = %for_loop
  %grim1 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** @grim1
  %newplayer = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, i32 0, i32 0
  %deltadest = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, i32 0, i32 1
  %payoffdest = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, i32 0, i32 2
  %statedest = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, i32 0, i32 3
  %roundsdest = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, i32 0, i32 4
  %field785 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim1, i32 0, i32 0
  %nplayers786 = load i32, i32* %field785
  %field787 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim1, i32 0, i32 1
  %nmoves788 = load i32, i32* %field787
  %field789 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim1, i32 0, i32 2
  %nstates = load i32, i32* %field789
  %newstrategy790 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp791 = sitofp i32 %nmoves788 to double
  %sitofp792 = sitofp i32 %nplayers786 to double
  %exp793 = call double (double, double, ...) @pow(double %sitofp791, double %sitofp792)
  %size794 = fptoui double %exp793 to i32
  %size795 = mul i32 %size794, %nstates
  %trans796 = alloca { i32, i32 }, i32 %size795
  %nplayersdest797 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy790, i32 0, i32 0
  %nmovesdest798 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy790, i32 0, i32 1
  %nstatesdest799 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy790, i32 0, i32 2
  %ptrdest800 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy790, i32 0, i32 3
  store i32 %nplayers786, i32* %nplayersdest797
  store i32 %nmoves788, i32* %nmovesdest798
  store i32 %nstates, i32* %nstatesdest799
  store { i32, i32 }* %trans796, { i32, i32 }** %ptrdest800
  %field801 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim1, i32 0, i32 0
  %nplayers802 = load i32, i32* %field801
  %field803 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim1, i32 0, i32 1
  %nmoves804 = load i32, i32* %field803
  %field805 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim1, i32 0, i32 2
  %nstates806 = load i32, i32* %field805
  %sitofp807 = sitofp i32 %nmoves804 to double
  %sitofp808 = sitofp i32 %nplayers802 to double
  %exp809 = call double (double, double, ...) @pow(double %sitofp807, double %sitofp808)
  %size810 = fptoui double %exp809 to i32
  %size811 = mul i32 %size810, %nstates806
  %sitofp812 = sitofp i32 %size811 to double
  %sitofp813 = sitofp i32 %nmoves804 to double
  %sitofp814 = sitofp i32 %nstates806 to double
  %fcopy_size = fmul double %sitofp812, 1.000000e+00
  %copy_size = fptoui double %fcopy_size to i32
  %transi815 = alloca i32
  store i32 0, i32* %transi815
  br label %copycond

copycond:                                         ; preds = %merge835, %block784
  %transi842 = load i32, i32* %transi815
  %statecomp843 = icmp slt i32 %transi842, %copy_size
  br i1 %statecomp843, label %copyloop, label %merge844

copyloop:                                         ; preds = %copycond
  %load = load i32, i32* %transi815
  %field816 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim1, i32 0, i32 3
  %sourceaddr = load { i32, i32 }*, { i32, i32 }** %field816
  %field817 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy790, i32 0, i32 3
  %destaddr = load { i32, i32 }*, { i32, i32 }** %field817
  %source = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr, i32 %load
  %dest = getelementptr { i32, i32 }, { i32, i32 }* %destaddr, i32 %load
  %field818 = getelementptr { i32, i32 }, { i32, i32 }* %source, i32 0, i32 0
  %source_output = load i32, i32* %field818
  %field819 = getelementptr { i32, i32 }, { i32, i32 }* %dest, i32 0, i32 0
  %field820 = getelementptr { i32, i32 }, { i32, i32 }* %source, i32 0, i32 1
  %source_nextstate = load i32, i32* %field820
  %field821 = getelementptr { i32, i32 }, { i32, i32 }* %dest, i32 0, i32 1
  %rand = call i32 (...) @rand()
  %randint = urem i32 %rand, 32767
  %sitofp822 = sitofp i32 %randint to double
  %randfloat = fdiv double %sitofp822, 3.276700e+04
  %randcomp = fcmp olt double %randfloat, 0.000000e+00
  br i1 %randcomp, label %then824, label %else829

merge823:                                         ; preds = %else829, %then824
  %rand830 = call i32 (...) @rand()
  %randint831 = urem i32 %rand830, 32767
  %sitofp832 = sitofp i32 %randint831 to double
  %randfloat833 = fdiv double %sitofp832, 3.276700e+04
  %randcomp834 = fcmp olt double %randfloat833, 0.000000e+00
  br i1 %randcomp834, label %then836, label %else841

then824:                                          ; preds = %copyloop
  %rand825 = call i32 (...) @rand()
  %randint826 = urem i32 %rand825, 32767
  %sitofp827 = sitofp i32 %randint826 to double
  %randfloat828 = fdiv double %sitofp827, 3.276700e+04
  %frandmove = fmul double %randfloat828, %sitofp813
  %randmove = fptoui double %frandmove to i32
  store i32 %randmove, i32* %field819
  br label %merge823

else829:                                          ; preds = %copyloop
  store i32 %source_output, i32* %field819
  br label %merge823

merge835:                                         ; preds = %else841, %then836
  %inc = add i32 %load, 1
  store i32 %inc, i32* %transi815
  br label %copycond

then836:                                          ; preds = %merge823
  %rand837 = call i32 (...) @rand()
  %randint838 = urem i32 %rand837, 32767
  %sitofp839 = sitofp i32 %randint838 to double
  %randfloat840 = fdiv double %sitofp839, 3.276700e+04
  %frandstate = fmul double %randfloat840, %sitofp814
  %randstate = fptoui double %frandstate to i32
  store i32 %randstate, i32* %field821
  br label %merge835

else841:                                          ; preds = %merge823
  store i32 %source_nextstate, i32* %field821
  br label %merge835

merge844:                                         ; preds = %copycond
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy790, { i32, i32, i32, { i32, i32 }* }** %strategydest
  store double 1.000000e+00, double* %deltadest
  store double 0.000000e+00, double* %payoffdest
  store i32 0, i32* %statedest
  store i32 0, i32* %roundsdest
  %i845 = load i32, i32* %i782
  %addr846 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon847 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr846, i32 0, i32 1
  %conaddr848 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon847
  %access849 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr848, i32 %i845
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access849
  %grim2 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** @grim2
  %newplayer850 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest851 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer850, i32 0, i32 0
  %deltadest852 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer850, i32 0, i32 1
  %payoffdest853 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer850, i32 0, i32 2
  %statedest854 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer850, i32 0, i32 3
  %roundsdest855 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer850, i32 0, i32 4
  %field856 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim2, i32 0, i32 0
  %nplayers857 = load i32, i32* %field856
  %field858 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim2, i32 0, i32 1
  %nmoves859 = load i32, i32* %field858
  %field860 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim2, i32 0, i32 2
  %nstates861 = load i32, i32* %field860
  %newstrategy862 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp863 = sitofp i32 %nmoves859 to double
  %sitofp864 = sitofp i32 %nplayers857 to double
  %exp865 = call double (double, double, ...) @pow(double %sitofp863, double %sitofp864)
  %size866 = fptoui double %exp865 to i32
  %size867 = mul i32 %size866, %nstates861
  %trans868 = alloca { i32, i32 }, i32 %size867
  %nplayersdest869 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy862, i32 0, i32 0
  %nmovesdest870 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy862, i32 0, i32 1
  %nstatesdest871 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy862, i32 0, i32 2
  %ptrdest872 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy862, i32 0, i32 3
  store i32 %nplayers857, i32* %nplayersdest869
  store i32 %nmoves859, i32* %nmovesdest870
  store i32 %nstates861, i32* %nstatesdest871
  store { i32, i32 }* %trans868, { i32, i32 }** %ptrdest872
  %field873 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim2, i32 0, i32 0
  %nplayers874 = load i32, i32* %field873
  %field875 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim2, i32 0, i32 1
  %nmoves876 = load i32, i32* %field875
  %field877 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim2, i32 0, i32 2
  %nstates878 = load i32, i32* %field877
  %sitofp879 = sitofp i32 %nmoves876 to double
  %sitofp880 = sitofp i32 %nplayers874 to double
  %exp881 = call double (double, double, ...) @pow(double %sitofp879, double %sitofp880)
  %size882 = fptoui double %exp881 to i32
  %size883 = mul i32 %size882, %nstates878
  %sitofp884 = sitofp i32 %size883 to double
  %sitofp885 = sitofp i32 %nmoves876 to double
  %sitofp886 = sitofp i32 %nstates878 to double
  %fcopy_size887 = fmul double %sitofp884, 1.000000e+00
  %copy_size888 = fptoui double %fcopy_size887 to i32
  %transi889 = alloca i32
  store i32 0, i32* %transi889
  br label %copycond890

copycond890:                                      ; preds = %merge924, %merge844
  %transi934 = load i32, i32* %transi889
  %statecomp935 = icmp slt i32 %transi934, %copy_size888
  br i1 %statecomp935, label %copyloop891, label %merge936

copyloop891:                                      ; preds = %copycond890
  %load892 = load i32, i32* %transi889
  %field893 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %grim2, i32 0, i32 3
  %sourceaddr894 = load { i32, i32 }*, { i32, i32 }** %field893
  %field895 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy862, i32 0, i32 3
  %destaddr896 = load { i32, i32 }*, { i32, i32 }** %field895
  %source897 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr894, i32 %load892
  %dest898 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr896, i32 %load892
  %field899 = getelementptr { i32, i32 }, { i32, i32 }* %source897, i32 0, i32 0
  %source_output900 = load i32, i32* %field899
  %field901 = getelementptr { i32, i32 }, { i32, i32 }* %dest898, i32 0, i32 0
  %field902 = getelementptr { i32, i32 }, { i32, i32 }* %source897, i32 0, i32 1
  %source_nextstate903 = load i32, i32* %field902
  %field904 = getelementptr { i32, i32 }, { i32, i32 }* %dest898, i32 0, i32 1
  %rand905 = call i32 (...) @rand()
  %randint906 = urem i32 %rand905, 32767
  %sitofp907 = sitofp i32 %randint906 to double
  %randfloat908 = fdiv double %sitofp907, 3.276700e+04
  %randcomp909 = fcmp olt double %randfloat908, 0.000000e+00
  br i1 %randcomp909, label %then911, label %else918

merge910:                                         ; preds = %else918, %then911
  %rand919 = call i32 (...) @rand()
  %randint920 = urem i32 %rand919, 32767
  %sitofp921 = sitofp i32 %randint920 to double
  %randfloat922 = fdiv double %sitofp921, 3.276700e+04
  %randcomp923 = fcmp olt double %randfloat922, 0.000000e+00
  br i1 %randcomp923, label %then925, label %else932

then911:                                          ; preds = %copyloop891
  %rand912 = call i32 (...) @rand()
  %randint913 = urem i32 %rand912, 32767
  %sitofp914 = sitofp i32 %randint913 to double
  %randfloat915 = fdiv double %sitofp914, 3.276700e+04
  %frandmove916 = fmul double %randfloat915, %sitofp885
  %randmove917 = fptoui double %frandmove916 to i32
  store i32 %randmove917, i32* %field901
  br label %merge910

else918:                                          ; preds = %copyloop891
  store i32 %source_output900, i32* %field901
  br label %merge910

merge924:                                         ; preds = %else932, %then925
  %inc933 = add i32 %load892, 1
  store i32 %inc933, i32* %transi889
  br label %copycond890

then925:                                          ; preds = %merge910
  %rand926 = call i32 (...) @rand()
  %randint927 = urem i32 %rand926, 32767
  %sitofp928 = sitofp i32 %randint927 to double
  %randfloat929 = fdiv double %sitofp928, 3.276700e+04
  %frandstate930 = fmul double %randfloat929, %sitofp886
  %randstate931 = fptoui double %frandstate930 to i32
  store i32 %randstate931, i32* %field904
  br label %merge924

else932:                                          ; preds = %merge910
  store i32 %source_nextstate903, i32* %field904
  br label %merge924

merge936:                                         ; preds = %copycond890
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy862, { i32, i32, i32, { i32, i32 }* }** %strategydest851
  store double 1.000000e+00, double* %deltadest852
  store double 0.000000e+00, double* %payoffdest853
  store i32 0, i32* %statedest854
  store i32 0, i32* %roundsdest855
  %i937 = load i32, i32* %i782
  %addr938 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon939 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr938, i32 0, i32 1
  %conaddr940 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon939
  %access941 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr940, i32 %i937
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer850, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access941
  %i942 = load i32, i32* %i782
  %addr943 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon944 = getelementptr { i32, double* }, { i32, double* }* %addr943, i32 0, i32 1
  %conaddr945 = load double*, double** %getcon944
  %access946 = getelementptr double, double* %conaddr945, i32 %i942
  store double 0.000000e+00, double* %access946
  %i947 = load i32, i32* %i782
  %addr948 = load { i32, double* }*, { i32, double* }** @payoffs2
  %getcon949 = getelementptr { i32, double* }, { i32, double* }* %addr948, i32 0, i32 1
  %conaddr950 = load double*, double** %getcon949
  %access951 = getelementptr double, double* %conaddr950, i32 %i947
  store double 0.000000e+00, double* %access951
  br label %merge952

merge952:                                         ; preds = %merge936
  %i953 = load i32, i32* %i783
  %iplusone954 = add i32 %i953, 1
  store i32 %iplusone954, i32* %i783
  %loadi955 = load i32, i32* %i783
  %addr956 = load { i32, i32* }*, { i32, i32* }** %eptr
  %getcon957 = getelementptr { i32, i32* }, { i32, i32* }* %addr956, i32 0, i32 1
  %conaddr958 = load i32*, i32** %getcon957
  %access959 = getelementptr i32, i32* %conaddr958, i32 %loadi955
  %current960 = load i32, i32* %access959
  store i32 %current960, i32* %i782
  br label %for

merge962:                                         ; preds = %for
  %newarray963 = alloca { i32, i32* }
  %contents964 = alloca i32, i32 70
  %ptrdest965 = getelementptr { i32, i32* }, { i32, i32* }* %newarray963, i32 0, i32 0
  %ptrdest966 = getelementptr { i32, i32* }, { i32, i32* }* %newarray963, i32 0, i32 1
  store i32 70, i32* %ptrdest965
  store i32* %contents964, i32** %ptrdest966
  %rangeptr967 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray963, { i32, i32* }** %rangeptr967
  %addr968 = load { i32, i32* }*, { i32, i32* }** %rangeptr967
  %getcon969 = getelementptr { i32, i32* }, { i32, i32* }* %addr968, i32 0, i32 1
  %conaddr970 = load i32*, i32** %getcon969
  %access971 = getelementptr i32, i32* %conaddr970, i32 69
  br label %range972

range972:                                         ; preds = %merge962
  %i973 = alloca i32
  store i32 0, i32* %i973
  br label %while974

while974:                                         ; preds = %while_loop975, %range972
  %lastentry984 = load i32, i32* %access971
  %rangecomp985 = icmp ne i32 %lastentry984, 70
  br i1 %rangecomp985, label %while_loop975, label %merge986

while_loop975:                                    ; preds = %while974
  %loadi976 = load i32, i32* %i973
  %addr977 = load { i32, i32* }*, { i32, i32* }** %rangeptr967
  %getcon978 = getelementptr { i32, i32* }, { i32, i32* }* %addr977, i32 0, i32 1
  %conaddr979 = load i32*, i32** %getcon978
  %access980 = getelementptr i32, i32* %conaddr979, i32 %loadi976
  %calcval981 = add i32 1, %loadi976
  store i32 %calcval981, i32* %access980
  %i982 = load i32, i32* %i973
  %iplusone983 = add i32 %i982, 1
  store i32 %iplusone983, i32* %i973
  br label %while974

merge986:                                         ; preds = %while974
  %eptr987 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray963, { i32, i32* }** %eptr987
  %getlen988 = getelementptr { i32, i32* }, { i32, i32* }* %newarray963, i32 0, i32 0
  %size989 = load i32, i32* %getlen988
  %addr990 = load { i32, i32* }*, { i32, i32* }** %eptr987
  %getcon991 = getelementptr { i32, i32* }, { i32, i32* }* %addr990, i32 0, i32 1
  %conaddr992 = load i32*, i32** %getcon991
  %access993 = getelementptr i32, i32* %conaddr992, i32 0
  %current994 = load i32, i32* %access993
  %t = alloca i32
  store i32 %current994, i32* %t
  %i995 = alloca i32
  store i32 0, i32* %i995
  br label %for996

for996:                                           ; preds = %merge3035, %merge986
  %i3044 = load i32, i32* %i995
  %forcomp3045 = icmp ne i32 %i3044, %size989
  br i1 %forcomp3045, label %for_loop997, label %merge3046

for_loop997:                                      ; preds = %for996
  br label %block998

block998:                                         ; preds = %for_loop997
  %newarray999 = alloca { i32, i32* }
  %contents1000 = alloca i32, i32 10
  %ptrdest1001 = getelementptr { i32, i32* }, { i32, i32* }* %newarray999, i32 0, i32 0
  %ptrdest1002 = getelementptr { i32, i32* }, { i32, i32* }* %newarray999, i32 0, i32 1
  store i32 10, i32* %ptrdest1001
  store i32* %contents1000, i32** %ptrdest1002
  %rangeptr1003 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray999, { i32, i32* }** %rangeptr1003
  %addr1004 = load { i32, i32* }*, { i32, i32* }** %rangeptr1003
  %getcon1005 = getelementptr { i32, i32* }, { i32, i32* }* %addr1004, i32 0, i32 1
  %conaddr1006 = load i32*, i32** %getcon1005
  %access1007 = getelementptr i32, i32* %conaddr1006, i32 9
  br label %range1008

range1008:                                        ; preds = %block998
  %i1009 = alloca i32
  store i32 0, i32* %i1009
  br label %while1010

while1010:                                        ; preds = %while_loop1011, %range1008
  %lastentry1020 = load i32, i32* %access1007
  %rangecomp1021 = icmp ne i32 %lastentry1020, 9
  br i1 %rangecomp1021, label %while_loop1011, label %merge1022

while_loop1011:                                   ; preds = %while1010
  %loadi1012 = load i32, i32* %i1009
  %addr1013 = load { i32, i32* }*, { i32, i32* }** %rangeptr1003
  %getcon1014 = getelementptr { i32, i32* }, { i32, i32* }* %addr1013, i32 0, i32 1
  %conaddr1015 = load i32*, i32** %getcon1014
  %access1016 = getelementptr i32, i32* %conaddr1015, i32 %loadi1012
  %calcval1017 = add i32 0, %loadi1012
  store i32 %calcval1017, i32* %access1016
  %i1018 = load i32, i32* %i1009
  %iplusone1019 = add i32 %i1018, 1
  store i32 %iplusone1019, i32* %i1009
  br label %while1010

merge1022:                                        ; preds = %while1010
  %eptr1023 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray999, { i32, i32* }** %eptr1023
  %getlen1024 = getelementptr { i32, i32* }, { i32, i32* }* %newarray999, i32 0, i32 0
  %size1025 = load i32, i32* %getlen1024
  %addr1026 = load { i32, i32* }*, { i32, i32* }** %eptr1023
  %getcon1027 = getelementptr { i32, i32* }, { i32, i32* }* %addr1026, i32 0, i32 1
  %conaddr1028 = load i32*, i32** %getcon1027
  %access1029 = getelementptr i32, i32* %conaddr1028, i32 0
  %current1030 = load i32, i32* %access1029
  %i1031 = alloca i32
  store i32 %current1030, i32* %i1031
  %i1032 = alloca i32
  store i32 0, i32* %i1032
  br label %for1033

for1033:                                          ; preds = %merge1516, %merge1022
  %i1525 = load i32, i32* %i1032
  %forcomp1526 = icmp ne i32 %i1525, %size1025
  br i1 %forcomp1526, label %for_loop1034, label %merge1527

for_loop1034:                                     ; preds = %for1033
  br label %block1035

block1035:                                        ; preds = %for_loop1034
  %newarray1036 = alloca { i32, i32* }
  %contents1037 = alloca i32, i32 10
  %ptrdest1038 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1036, i32 0, i32 0
  %ptrdest1039 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1036, i32 0, i32 1
  store i32 10, i32* %ptrdest1038
  store i32* %contents1037, i32** %ptrdest1039
  %rangeptr1040 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1036, { i32, i32* }** %rangeptr1040
  %addr1041 = load { i32, i32* }*, { i32, i32* }** %rangeptr1040
  %getcon1042 = getelementptr { i32, i32* }, { i32, i32* }* %addr1041, i32 0, i32 1
  %conaddr1043 = load i32*, i32** %getcon1042
  %access1044 = getelementptr i32, i32* %conaddr1043, i32 9
  br label %range1045

range1045:                                        ; preds = %block1035
  %i1046 = alloca i32
  store i32 0, i32* %i1046
  br label %while1047

while1047:                                        ; preds = %while_loop1048, %range1045
  %lastentry1057 = load i32, i32* %access1044
  %rangecomp1058 = icmp ne i32 %lastentry1057, 9
  br i1 %rangecomp1058, label %while_loop1048, label %merge1059

while_loop1048:                                   ; preds = %while1047
  %loadi1049 = load i32, i32* %i1046
  %addr1050 = load { i32, i32* }*, { i32, i32* }** %rangeptr1040
  %getcon1051 = getelementptr { i32, i32* }, { i32, i32* }* %addr1050, i32 0, i32 1
  %conaddr1052 = load i32*, i32** %getcon1051
  %access1053 = getelementptr i32, i32* %conaddr1052, i32 %loadi1049
  %calcval1054 = add i32 0, %loadi1049
  store i32 %calcval1054, i32* %access1053
  %i1055 = load i32, i32* %i1046
  %iplusone1056 = add i32 %i1055, 1
  store i32 %iplusone1056, i32* %i1046
  br label %while1047

merge1059:                                        ; preds = %while1047
  %eptr1060 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1036, { i32, i32* }** %eptr1060
  %getlen1061 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1036, i32 0, i32 0
  %size1062 = load i32, i32* %getlen1061
  %addr1063 = load { i32, i32* }*, { i32, i32* }** %eptr1060
  %getcon1064 = getelementptr { i32, i32* }, { i32, i32* }* %addr1063, i32 0, i32 1
  %conaddr1065 = load i32*, i32** %getcon1064
  %access1066 = getelementptr i32, i32* %conaddr1065, i32 0
  %current1067 = load i32, i32* %access1066
  %j = alloca i32
  store i32 %current1067, i32* %j
  %i1068 = alloca i32
  store i32 0, i32* %i1068
  br label %for1069

for1069:                                          ; preds = %merge1504, %merge1059
  %i1513 = load i32, i32* %i1068
  %forcomp1514 = icmp ne i32 %i1513, %size1062
  br i1 %forcomp1514, label %for_loop1070, label %merge1515

for_loop1070:                                     ; preds = %for1069
  br label %block1071

block1071:                                        ; preds = %for_loop1070
  %i1072 = load i32, i32* %i1031
  %players11073 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen1074 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11073, i32 0, i32 0
  %arrlen1075 = load i32, i32* %getlen1074
  %sub = sub i32 %arrlen1075, 1
  %error = icmp sgt i32 %i1072, %sub
  br i1 %error, label %error1077, label %merge1076

merge1076:                                        ; preds = %block1071, %error1077
  %addr1078 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1079 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1078, i32 0, i32 1
  %conaddr1080 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1079
  %access1081 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1080, i32 %i1072
  %players11082 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1081
  %field1083 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11082, i32 0, i32 2
  %field1084 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11082, i32 0, i32 3
  %field1085 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11082, i32 0, i32 4
  store double 0.000000e+00, double* %field1083
  store i32 0, i32* %field1084
  store i32 0, i32* %field1085
  %i1086 = load i32, i32* %i1031
  %addr1087 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1088 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1087, i32 0, i32 1
  %conaddr1089 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1088
  %access1090 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1089, i32 %i1086
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11082, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1090
  %j1091 = load i32, i32* %j
  %players2 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen1092 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players2, i32 0, i32 0
  %arrlen1093 = load i32, i32* %getlen1092
  %sub1094 = sub i32 %arrlen1093, 1
  %error1095 = icmp sgt i32 %j1091, %sub1094
  br i1 %error1095, label %error1097, label %merge1096

error1077:                                        ; preds = %block1071
  %printerror = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.36, i32 0, i32 0), i32 %i1072, i32 %sub)
  br label %merge1076

merge1096:                                        ; preds = %merge1076, %error1097
  %addr1099 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1100 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1099, i32 0, i32 1
  %conaddr1101 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1100
  %access1102 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1101, i32 %j1091
  %players21103 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1102
  %field1104 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21103, i32 0, i32 2
  %field1105 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21103, i32 0, i32 3
  %field1106 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21103, i32 0, i32 4
  store double 0.000000e+00, double* %field1104
  store i32 0, i32* %field1105
  store i32 0, i32* %field1106
  %j1107 = load i32, i32* %j
  %addr1108 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1109 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1108, i32 0, i32 1
  %conaddr1110 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1109
  %access1111 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1110, i32 %j1107
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21103, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1111
  %newarray1112 = alloca { i32, i32* }
  %contents1113 = alloca i32, i32 20
  %ptrdest1114 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1112, i32 0, i32 0
  %ptrdest1115 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1112, i32 0, i32 1
  store i32 20, i32* %ptrdest1114
  store i32* %contents1113, i32** %ptrdest1115
  %rangeptr1116 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1112, { i32, i32* }** %rangeptr1116
  %addr1117 = load { i32, i32* }*, { i32, i32* }** %rangeptr1116
  %getcon1118 = getelementptr { i32, i32* }, { i32, i32* }* %addr1117, i32 0, i32 1
  %conaddr1119 = load i32*, i32** %getcon1118
  %access1120 = getelementptr i32, i32* %conaddr1119, i32 19
  br label %range1121

error1097:                                        ; preds = %merge1076
  %printerror1098 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.37, i32 0, i32 0), i32 %j1091, i32 %sub1094)
  br label %merge1096

range1121:                                        ; preds = %merge1096
  %i1122 = alloca i32
  store i32 0, i32* %i1122
  br label %while1123

while1123:                                        ; preds = %while_loop1124, %range1121
  %lastentry1133 = load i32, i32* %access1120
  %rangecomp1134 = icmp ne i32 %lastentry1133, 20
  br i1 %rangecomp1134, label %while_loop1124, label %merge1135

while_loop1124:                                   ; preds = %while1123
  %loadi1125 = load i32, i32* %i1122
  %addr1126 = load { i32, i32* }*, { i32, i32* }** %rangeptr1116
  %getcon1127 = getelementptr { i32, i32* }, { i32, i32* }* %addr1126, i32 0, i32 1
  %conaddr1128 = load i32*, i32** %getcon1127
  %access1129 = getelementptr i32, i32* %conaddr1128, i32 %loadi1125
  %calcval1130 = add i32 1, %loadi1125
  store i32 %calcval1130, i32* %access1129
  %i1131 = load i32, i32* %i1122
  %iplusone1132 = add i32 %i1131, 1
  store i32 %iplusone1132, i32* %i1122
  br label %while1123

merge1135:                                        ; preds = %while1123
  %eptr1136 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1112, { i32, i32* }** %eptr1136
  %getlen1137 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1112, i32 0, i32 0
  %size1138 = load i32, i32* %getlen1137
  %addr1139 = load { i32, i32* }*, { i32, i32* }** %eptr1136
  %getcon1140 = getelementptr { i32, i32* }, { i32, i32* }* %addr1139, i32 0, i32 1
  %conaddr1141 = load i32*, i32** %getcon1140
  %access1142 = getelementptr i32, i32* %conaddr1141, i32 0
  %current1143 = load i32, i32* %access1142
  %r = alloca i32
  store i32 %current1143, i32* %r
  %i1144 = alloca i32
  store i32 0, i32* %i1144
  br label %for1145

for1145:                                          ; preds = %merge1423, %merge1135
  %i1432 = load i32, i32* %i1144
  %forcomp1433 = icmp ne i32 %i1432, %size1138
  br i1 %forcomp1433, label %for_loop1146, label %merge1434

for_loop1146:                                     ; preds = %for1145
  br label %block1147

block1147:                                        ; preds = %for_loop1146
  %j1148 = load i32, i32* %j
  %players21149 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen1150 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players21149, i32 0, i32 0
  %arrlen1151 = load i32, i32* %getlen1150
  %sub1152 = sub i32 %arrlen1151, 1
  %error1153 = icmp sgt i32 %j1148, %sub1152
  br i1 %error1153, label %error1155, label %merge1154

merge1154:                                        ; preds = %block1147, %error1155
  %addr1157 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1158 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1157, i32 0, i32 1
  %conaddr1159 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1158
  %access1160 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1159, i32 %j1148
  %players21161 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1160
  %i1162 = load i32, i32* %i1031
  %players11163 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen1164 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11163, i32 0, i32 0
  %arrlen1165 = load i32, i32* %getlen1164
  %sub1166 = sub i32 %arrlen1165, 1
  %error1167 = icmp sgt i32 %i1162, %sub1166
  br i1 %error1167, label %error1169, label %merge1168

error1155:                                        ; preds = %block1147
  %printerror1156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.38, i32 0, i32 0), i32 %j1148, i32 %sub1152)
  br label %merge1154

merge1168:                                        ; preds = %merge1154, %error1169
  %addr1171 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1172 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1171, i32 0, i32 1
  %conaddr1173 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1172
  %access1174 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1173, i32 %i1162
  %players11175 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1174
  %pd = load { i32, i32, double* }*, { i32, i32, double* }** @pd
  %field1176 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %pd, i32 0, i32 0
  %nplayers1177 = load i32, i32* %field1176
  %field1178 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %pd, i32 0, i32 1
  %nmoves1179 = load i32, i32* %field1178
  %error1180 = icmp ne i32 2, %nplayers1177
  br i1 %error1180, label %error1182, label %merge1181

error1169:                                        ; preds = %merge1154
  %printerror1170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.39, i32 0, i32 0), i32 %i1162, i32 %sub1166)
  br label %merge1168

merge1181:                                        ; preds = %merge1168, %error1182
  %moves1184 = alloca { i32, i32* }*
  %newarray1185 = alloca { i32, i32* }
  %contents1186 = alloca i32, i32 2
  %ptrdest1187 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1185, i32 0, i32 0
  %ptrdest1188 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1185, i32 0, i32 1
  store i32 2, i32* %ptrdest1187
  store i32* %contents1186, i32** %ptrdest1188
  store { i32, i32* }* %newarray1185, { i32, i32* }** %moves1184
  %field1189 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21161, i32 0, i32 3
  %state1190 = load i32, i32* %field1189
  %field1191 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21161, i32 0, i32 0
  %strategy = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1191
  %field1192 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy, i32 0, i32 0
  %nplayers1193 = load i32, i32* %field1192
  %field1194 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy, i32 0, i32 1
  %nmoves1195 = load i32, i32* %field1194
  %sitofp1196 = sitofp i32 %nmoves1195 to double
  %sitofp1197 = sitofp i32 %nplayers1193 to double
  %exp1198 = call double (double, double, ...) @pow(double %sitofp1196, double %sitofp1197)
  %size1199 = fptoui double %exp1198 to i32
  %field1200 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy, i32 0, i32 3
  %transaddr1201 = load { i32, i32 }*, { i32, i32 }** %field1200
  %state1202 = mul i32 %size1199, %state1190
  %state1203 = add i32 0, %state1202
  %access1204 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr1201, i32 %state1203
  %field1205 = getelementptr { i32, i32 }, { i32, i32 }* %access1204, i32 0, i32 0
  %output = load i32, i32* %field1205
  %addr1206 = load { i32, i32* }*, { i32, i32* }** %moves1184
  %getcon1207 = getelementptr { i32, i32* }, { i32, i32* }* %addr1206, i32 0, i32 1
  %conaddr1208 = load i32*, i32** %getcon1207
  %access1209 = getelementptr i32, i32* %conaddr1208, i32 0
  store i32 %output, i32* %access1209
  %field1210 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11175, i32 0, i32 3
  %state1211 = load i32, i32* %field1210
  %field1212 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11175, i32 0, i32 0
  %strategy1213 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1212
  %field1214 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1213, i32 0, i32 0
  %nplayers1215 = load i32, i32* %field1214
  %field1216 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1213, i32 0, i32 1
  %nmoves1217 = load i32, i32* %field1216
  %sitofp1218 = sitofp i32 %nmoves1217 to double
  %sitofp1219 = sitofp i32 %nplayers1215 to double
  %exp1220 = call double (double, double, ...) @pow(double %sitofp1218, double %sitofp1219)
  %size1221 = fptoui double %exp1220 to i32
  %field1222 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1213, i32 0, i32 3
  %transaddr1223 = load { i32, i32 }*, { i32, i32 }** %field1222
  %state1224 = mul i32 %size1221, %state1211
  %state1225 = add i32 0, %state1224
  %access1226 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr1223, i32 %state1225
  %field1227 = getelementptr { i32, i32 }, { i32, i32 }* %access1226, i32 0, i32 0
  %output1228 = load i32, i32* %field1227
  %addr1229 = load { i32, i32* }*, { i32, i32* }** %moves1184
  %getcon1230 = getelementptr { i32, i32* }, { i32, i32* }* %addr1229, i32 0, i32 1
  %conaddr1231 = load i32*, i32** %getcon1230
  %access1232 = getelementptr i32, i32* %conaddr1231, i32 1
  store i32 %output1228, i32* %access1232
  %field1233 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21161, i32 0, i32 0
  %strategy1234 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1233
  %field1235 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1234, i32 0, i32 0
  %nplayers1236 = load i32, i32* %field1235
  %field1237 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1234, i32 0, i32 1
  %nmoves1238 = load i32, i32* %field1237
  %error1239 = icmp ne i32 %nplayers1236, %nplayers1177
  br i1 %error1239, label %error1241, label %merge1240

error1182:                                        ; preds = %merge1168
  %printerror1183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @error.40, i32 0, i32 0), i32 2, i32 %nplayers1177)
  br label %merge1181

merge1240:                                        ; preds = %merge1181, %error1241
  %error1243 = icmp ne i32 %nmoves1238, %nmoves1179
  br i1 %error1243, label %error1245, label %merge1244

error1241:                                        ; preds = %merge1181
  %printerror1242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @error.41, i32 0, i32 0), i32 %nplayers1236, i32 %nplayers1177)
  br label %merge1240

merge1244:                                        ; preds = %merge1240, %error1245
  %field1247 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %pd, i32 0, i32 0
  %nplayers1248 = load i32, i32* %field1247
  %field1249 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %pd, i32 0, i32 1
  %nmoves1250 = load i32, i32* %field1249
  %field1251 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %pd, i32 0, i32 2
  %payaddr1252 = load double*, double** %field1251
  %sitofp1253 = sitofp i32 %nmoves1250 to double
  %sitofp1254 = sitofp i32 %nplayers1248 to double
  %addr1255 = load { i32, i32* }*, { i32, i32* }** %moves1184
  %getcon1256 = getelementptr { i32, i32* }, { i32, i32* }* %addr1255, i32 0, i32 1
  %conaddr1257 = load i32*, i32** %getcon1256
  %access1258 = getelementptr i32, i32* %conaddr1257, i32 0
  %move1259 = load i32, i32* %access1258
  %sitofp1260 = sitofp i32 %move1259 to double
  %temp1261 = call double (double, double, ...) @pow(double %sitofp1253, double 0.000000e+00)
  %temp21262 = fmul double %temp1261, %sitofp1260
  %current1263 = fptoui double %temp21262 to i32
  %addr1264 = load { i32, i32* }*, { i32, i32* }** %moves1184
  %getcon1265 = getelementptr { i32, i32* }, { i32, i32* }* %addr1264, i32 0, i32 1
  %conaddr1266 = load i32*, i32** %getcon1265
  %access1267 = getelementptr i32, i32* %conaddr1266, i32 1
  %move1268 = load i32, i32* %access1267
  %sitofp1269 = sitofp i32 %move1268 to double
  %temp1270 = call double (double, double, ...) @pow(double %sitofp1253, double 1.000000e+00)
  %temp21271 = fmul double %temp1270, %sitofp1269
  %current1272 = fptoui double %temp21271 to i32
  %result1273 = add i32 %current1272, 0
  %result1274 = add i32 %current1263, %result1273
  %temp31275 = mul i32 %result1274, %nplayers1248
  %playerind1276 = add i32 0, %temp31275
  %access1277 = getelementptr double, double* %payaddr1252, i32 %playerind1276
  %game_payoff = load double, double* %access1277
  %field1278 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21161, i32 0, i32 1
  %delta = load double, double* %field1278
  %field1279 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21161, i32 0, i32 2
  %payoff = load double, double* %field1279
  %field1280 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21161, i32 0, i32 3
  %state1281 = load i32, i32* %field1280
  %field1282 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21161, i32 0, i32 4
  %rounds = load i32, i32* %field1282
  %sitofp1283 = sitofp i32 %rounds to double
  %pow = call double (double, double, ...) @pow(double %delta, double %sitofp1283)
  %tmp1284 = fmul double %game_payoff, %pow
  %newpayoff = fadd double %payoff, %tmp1284
  %field1285 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1234, i32 0, i32 0
  %nplayers1286 = load i32, i32* %field1285
  %field1287 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1234, i32 0, i32 1
  %nmoves1288 = load i32, i32* %field1287
  %sitofp1289 = sitofp i32 %nmoves1288 to double
  %sitofp1290 = sitofp i32 %nplayers1286 to double
  %exp1291 = call double (double, double, ...) @pow(double %sitofp1289, double %sitofp1290)
  %size1292 = fptoui double %exp1291 to i32
  %field1293 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1234, i32 0, i32 3
  %transaddr1294 = load { i32, i32 }*, { i32, i32 }** %field1293
  %start1295 = mul i32 %size1292, %state1281
  %sitofp1296 = sitofp i32 %nmoves1288 to double
  %sitofp1297 = sitofp i32 %nplayers1286 to double
  %addr1298 = load { i32, i32* }*, { i32, i32* }** %moves1184
  %getcon1299 = getelementptr { i32, i32* }, { i32, i32* }* %addr1298, i32 0, i32 1
  %conaddr1300 = load i32*, i32** %getcon1299
  %access1301 = getelementptr i32, i32* %conaddr1300, i32 0
  %move1302 = load i32, i32* %access1301
  %sitofp1303 = sitofp i32 %move1302 to double
  %temp1304 = call double (double, double, ...) @pow(double %sitofp1296, double 0.000000e+00)
  %temp21305 = fmul double %temp1304, %sitofp1303
  %current1306 = fptoui double %temp21305 to i32
  %addr1307 = load { i32, i32* }*, { i32, i32* }** %moves1184
  %getcon1308 = getelementptr { i32, i32* }, { i32, i32* }* %addr1307, i32 0, i32 1
  %conaddr1309 = load i32*, i32** %getcon1308
  %access1310 = getelementptr i32, i32* %conaddr1309, i32 1
  %move1311 = load i32, i32* %access1310
  %sitofp1312 = sitofp i32 %move1311 to double
  %temp1313 = call double (double, double, ...) @pow(double %sitofp1296, double 1.000000e+00)
  %temp21314 = fmul double %temp1313, %sitofp1312
  %current1315 = fptoui double %temp21314 to i32
  %result1316 = add i32 %current1315, 0
  %result1317 = add i32 %current1306, %result1316
  %index1318 = add i32 %start1295, %result1317
  %access1319 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr1294, i32 %index1318
  %field1320 = getelementptr { i32, i32 }, { i32, i32 }* %access1319, i32 0, i32 1
  %newstate = load i32, i32* %field1320
  %newrounds = add i32 1, %rounds
  %field1321 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21161, i32 0, i32 2
  %field1322 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21161, i32 0, i32 3
  %field1323 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21161, i32 0, i32 4
  store double %newpayoff, double* %field1321
  store i32 %newstate, i32* %field1322
  store i32 %newrounds, i32* %field1323
  %field1324 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11175, i32 0, i32 0
  %strategy1325 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1324
  %field1326 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1325, i32 0, i32 0
  %nplayers1327 = load i32, i32* %field1326
  %field1328 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1325, i32 0, i32 1
  %nmoves1329 = load i32, i32* %field1328
  %error1330 = icmp ne i32 %nplayers1327, %nplayers1177
  br i1 %error1330, label %error1332, label %merge1331

error1245:                                        ; preds = %merge1240
  %printerror1246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @error.42, i32 0, i32 0), i32 %nmoves1238, i32 %nmoves1179)
  br label %merge1244

merge1331:                                        ; preds = %merge1244, %error1332
  %error1334 = icmp ne i32 %nmoves1329, %nmoves1179
  br i1 %error1334, label %error1336, label %merge1335

error1332:                                        ; preds = %merge1244
  %printerror1333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @error.43, i32 0, i32 0), i32 %nplayers1327, i32 %nplayers1177)
  br label %merge1331

merge1335:                                        ; preds = %merge1331, %error1336
  %field1338 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %pd, i32 0, i32 0
  %nplayers1339 = load i32, i32* %field1338
  %field1340 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %pd, i32 0, i32 1
  %nmoves1341 = load i32, i32* %field1340
  %field1342 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %pd, i32 0, i32 2
  %payaddr1343 = load double*, double** %field1342
  %sitofp1344 = sitofp i32 %nmoves1341 to double
  %sitofp1345 = sitofp i32 %nplayers1339 to double
  %addr1346 = load { i32, i32* }*, { i32, i32* }** %moves1184
  %getcon1347 = getelementptr { i32, i32* }, { i32, i32* }* %addr1346, i32 0, i32 1
  %conaddr1348 = load i32*, i32** %getcon1347
  %access1349 = getelementptr i32, i32* %conaddr1348, i32 0
  %move1350 = load i32, i32* %access1349
  %sitofp1351 = sitofp i32 %move1350 to double
  %temp1352 = call double (double, double, ...) @pow(double %sitofp1344, double 0.000000e+00)
  %temp21353 = fmul double %temp1352, %sitofp1351
  %current1354 = fptoui double %temp21353 to i32
  %addr1355 = load { i32, i32* }*, { i32, i32* }** %moves1184
  %getcon1356 = getelementptr { i32, i32* }, { i32, i32* }* %addr1355, i32 0, i32 1
  %conaddr1357 = load i32*, i32** %getcon1356
  %access1358 = getelementptr i32, i32* %conaddr1357, i32 1
  %move1359 = load i32, i32* %access1358
  %sitofp1360 = sitofp i32 %move1359 to double
  %temp1361 = call double (double, double, ...) @pow(double %sitofp1344, double 1.000000e+00)
  %temp21362 = fmul double %temp1361, %sitofp1360
  %current1363 = fptoui double %temp21362 to i32
  %result1364 = add i32 %current1363, 0
  %result1365 = add i32 %current1354, %result1364
  %temp31366 = mul i32 %result1365, %nplayers1339
  %playerind1367 = add i32 1, %temp31366
  %access1368 = getelementptr double, double* %payaddr1343, i32 %playerind1367
  %game_payoff1369 = load double, double* %access1368
  %field1370 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11175, i32 0, i32 1
  %delta1371 = load double, double* %field1370
  %field1372 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11175, i32 0, i32 2
  %payoff1373 = load double, double* %field1372
  %field1374 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11175, i32 0, i32 3
  %state1375 = load i32, i32* %field1374
  %field1376 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11175, i32 0, i32 4
  %rounds1377 = load i32, i32* %field1376
  %sitofp1378 = sitofp i32 %rounds1377 to double
  %pow1379 = call double (double, double, ...) @pow(double %delta1371, double %sitofp1378)
  %tmp1380 = fmul double %game_payoff1369, %pow1379
  %newpayoff1381 = fadd double %payoff1373, %tmp1380
  %field1382 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1325, i32 0, i32 0
  %nplayers1383 = load i32, i32* %field1382
  %field1384 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1325, i32 0, i32 1
  %nmoves1385 = load i32, i32* %field1384
  %sitofp1386 = sitofp i32 %nmoves1385 to double
  %sitofp1387 = sitofp i32 %nplayers1383 to double
  %exp1388 = call double (double, double, ...) @pow(double %sitofp1386, double %sitofp1387)
  %size1389 = fptoui double %exp1388 to i32
  %field1390 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1325, i32 0, i32 3
  %transaddr1391 = load { i32, i32 }*, { i32, i32 }** %field1390
  %start1392 = mul i32 %size1389, %state1375
  %sitofp1393 = sitofp i32 %nmoves1385 to double
  %sitofp1394 = sitofp i32 %nplayers1383 to double
  %addr1395 = load { i32, i32* }*, { i32, i32* }** %moves1184
  %getcon1396 = getelementptr { i32, i32* }, { i32, i32* }* %addr1395, i32 0, i32 1
  %conaddr1397 = load i32*, i32** %getcon1396
  %access1398 = getelementptr i32, i32* %conaddr1397, i32 0
  %move1399 = load i32, i32* %access1398
  %sitofp1400 = sitofp i32 %move1399 to double
  %temp1401 = call double (double, double, ...) @pow(double %sitofp1393, double 0.000000e+00)
  %temp21402 = fmul double %temp1401, %sitofp1400
  %current1403 = fptoui double %temp21402 to i32
  %addr1404 = load { i32, i32* }*, { i32, i32* }** %moves1184
  %getcon1405 = getelementptr { i32, i32* }, { i32, i32* }* %addr1404, i32 0, i32 1
  %conaddr1406 = load i32*, i32** %getcon1405
  %access1407 = getelementptr i32, i32* %conaddr1406, i32 1
  %move1408 = load i32, i32* %access1407
  %sitofp1409 = sitofp i32 %move1408 to double
  %temp1410 = call double (double, double, ...) @pow(double %sitofp1393, double 1.000000e+00)
  %temp21411 = fmul double %temp1410, %sitofp1409
  %current1412 = fptoui double %temp21411 to i32
  %result1413 = add i32 %current1412, 0
  %result1414 = add i32 %current1403, %result1413
  %index1415 = add i32 %start1392, %result1414
  %access1416 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr1391, i32 %index1415
  %field1417 = getelementptr { i32, i32 }, { i32, i32 }* %access1416, i32 0, i32 1
  %newstate1418 = load i32, i32* %field1417
  %newrounds1419 = add i32 1, %rounds1377
  %field1420 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11175, i32 0, i32 2
  %field1421 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11175, i32 0, i32 3
  %field1422 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11175, i32 0, i32 4
  store double %newpayoff1381, double* %field1420
  store i32 %newstate1418, i32* %field1421
  store i32 %newrounds1419, i32* %field1422
  br label %merge1423

error1336:                                        ; preds = %merge1331
  %printerror1337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @error.44, i32 0, i32 0), i32 %nmoves1329, i32 %nmoves1179)
  br label %merge1335

merge1423:                                        ; preds = %merge1335
  %i1424 = load i32, i32* %i1144
  %iplusone1425 = add i32 %i1424, 1
  store i32 %iplusone1425, i32* %i1144
  %loadi1426 = load i32, i32* %i1144
  %addr1427 = load { i32, i32* }*, { i32, i32* }** %eptr1136
  %getcon1428 = getelementptr { i32, i32* }, { i32, i32* }* %addr1427, i32 0, i32 1
  %conaddr1429 = load i32*, i32** %getcon1428
  %access1430 = getelementptr i32, i32* %conaddr1429, i32 %loadi1426
  %current1431 = load i32, i32* %access1430
  store i32 %current1431, i32* %r
  br label %for1145

merge1434:                                        ; preds = %for1145
  %i1435 = load i32, i32* %i1031
  %payoffs1 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getlen1436 = getelementptr { i32, double* }, { i32, double* }* %payoffs1, i32 0, i32 0
  %arrlen1437 = load i32, i32* %getlen1436
  %sub1438 = sub i32 %arrlen1437, 1
  %error1439 = icmp sgt i32 %i1435, %sub1438
  br i1 %error1439, label %error1441, label %merge1440

merge1440:                                        ; preds = %merge1434, %error1441
  %addr1443 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon1444 = getelementptr { i32, double* }, { i32, double* }* %addr1443, i32 0, i32 1
  %conaddr1445 = load double*, double** %getcon1444
  %access1446 = getelementptr double, double* %conaddr1445, i32 %i1435
  %payoffs11447 = load double, double* %access1446
  %i1448 = load i32, i32* %i1031
  %players11449 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen1450 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11449, i32 0, i32 0
  %arrlen1451 = load i32, i32* %getlen1450
  %sub1452 = sub i32 %arrlen1451, 1
  %error1453 = icmp sgt i32 %i1448, %sub1452
  br i1 %error1453, label %error1455, label %merge1454

error1441:                                        ; preds = %merge1434
  %printerror1442 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.45, i32 0, i32 0), i32 %i1435, i32 %sub1438)
  br label %merge1440

merge1454:                                        ; preds = %merge1440, %error1455
  %addr1457 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1458 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1457, i32 0, i32 1
  %conaddr1459 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1458
  %access1460 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1459, i32 %i1448
  %players11461 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1460
  %field1462 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11461, i32 0, i32 2
  %fieldtwo = load double, double* %field1462
  %tmp1463 = fadd double %payoffs11447, %fieldtwo
  %i1464 = load i32, i32* %i1031
  %addr1465 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon1466 = getelementptr { i32, double* }, { i32, double* }* %addr1465, i32 0, i32 1
  %conaddr1467 = load double*, double** %getcon1466
  %access1468 = getelementptr double, double* %conaddr1467, i32 %i1464
  store double %tmp1463, double* %access1468
  %j1469 = load i32, i32* %j
  %payoffs2 = load { i32, double* }*, { i32, double* }** @payoffs2
  %getlen1470 = getelementptr { i32, double* }, { i32, double* }* %payoffs2, i32 0, i32 0
  %arrlen1471 = load i32, i32* %getlen1470
  %sub1472 = sub i32 %arrlen1471, 1
  %error1473 = icmp sgt i32 %j1469, %sub1472
  br i1 %error1473, label %error1475, label %merge1474

error1455:                                        ; preds = %merge1440
  %printerror1456 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.46, i32 0, i32 0), i32 %i1448, i32 %sub1452)
  br label %merge1454

merge1474:                                        ; preds = %merge1454, %error1475
  %addr1477 = load { i32, double* }*, { i32, double* }** @payoffs2
  %getcon1478 = getelementptr { i32, double* }, { i32, double* }* %addr1477, i32 0, i32 1
  %conaddr1479 = load double*, double** %getcon1478
  %access1480 = getelementptr double, double* %conaddr1479, i32 %j1469
  %payoffs21481 = load double, double* %access1480
  %j1482 = load i32, i32* %j
  %players21483 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen1484 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players21483, i32 0, i32 0
  %arrlen1485 = load i32, i32* %getlen1484
  %sub1486 = sub i32 %arrlen1485, 1
  %error1487 = icmp sgt i32 %j1482, %sub1486
  br i1 %error1487, label %error1489, label %merge1488

error1475:                                        ; preds = %merge1454
  %printerror1476 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.47, i32 0, i32 0), i32 %j1469, i32 %sub1472)
  br label %merge1474

merge1488:                                        ; preds = %merge1474, %error1489
  %addr1491 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1492 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1491, i32 0, i32 1
  %conaddr1493 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1492
  %access1494 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1493, i32 %j1482
  %players21495 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1494
  %field1496 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21495, i32 0, i32 2
  %fieldtwo1497 = load double, double* %field1496
  %tmp1498 = fadd double %payoffs21481, %fieldtwo1497
  %j1499 = load i32, i32* %j
  %addr1500 = load { i32, double* }*, { i32, double* }** @payoffs2
  %getcon1501 = getelementptr { i32, double* }, { i32, double* }* %addr1500, i32 0, i32 1
  %conaddr1502 = load double*, double** %getcon1501
  %access1503 = getelementptr double, double* %conaddr1502, i32 %j1499
  store double %tmp1498, double* %access1503
  br label %merge1504

error1489:                                        ; preds = %merge1474
  %printerror1490 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.48, i32 0, i32 0), i32 %j1482, i32 %sub1486)
  br label %merge1488

merge1504:                                        ; preds = %merge1488
  %i1505 = load i32, i32* %i1068
  %iplusone1506 = add i32 %i1505, 1
  store i32 %iplusone1506, i32* %i1068
  %loadi1507 = load i32, i32* %i1068
  %addr1508 = load { i32, i32* }*, { i32, i32* }** %eptr1060
  %getcon1509 = getelementptr { i32, i32* }, { i32, i32* }* %addr1508, i32 0, i32 1
  %conaddr1510 = load i32*, i32** %getcon1509
  %access1511 = getelementptr i32, i32* %conaddr1510, i32 %loadi1507
  %current1512 = load i32, i32* %access1511
  store i32 %current1512, i32* %j
  br label %for1069

merge1515:                                        ; preds = %for1069
  br label %merge1516

merge1516:                                        ; preds = %merge1515
  %i1517 = load i32, i32* %i1032
  %iplusone1518 = add i32 %i1517, 1
  store i32 %iplusone1518, i32* %i1032
  %loadi1519 = load i32, i32* %i1032
  %addr1520 = load { i32, i32* }*, { i32, i32* }** %eptr1023
  %getcon1521 = getelementptr { i32, i32* }, { i32, i32* }* %addr1520, i32 0, i32 1
  %conaddr1522 = load i32*, i32** %getcon1521
  %access1523 = getelementptr i32, i32* %conaddr1522, i32 %loadi1519
  %current1524 = load i32, i32* %access1523
  store i32 %current1524, i32* %i1031
  br label %for1033

merge1527:                                        ; preds = %for1033
  %payoffs11528 = load { i32, double* }*, { i32, double* }** @payoffs1
  %players11529 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  call void ({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, double* }*, ...) @sort({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11529, { i32, double* }* %payoffs11528)
  %payoffs21530 = load { i32, double* }*, { i32, double* }** @payoffs2
  %players21531 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  call void ({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, double* }*, ...) @sort({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players21531, { i32, double* }* %payoffs21530)
  %newarray1532 = alloca { i32, i32* }
  %contents1533 = alloca i32, i32 2
  %ptrdest1534 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1532, i32 0, i32 0
  %ptrdest1535 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1532, i32 0, i32 1
  store i32 2, i32* %ptrdest1534
  store i32* %contents1533, i32** %ptrdest1535
  %rangeptr1536 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1532, { i32, i32* }** %rangeptr1536
  %addr1537 = load { i32, i32* }*, { i32, i32* }** %rangeptr1536
  %getcon1538 = getelementptr { i32, i32* }, { i32, i32* }* %addr1537, i32 0, i32 1
  %conaddr1539 = load i32*, i32** %getcon1538
  %access1540 = getelementptr i32, i32* %conaddr1539, i32 1
  br label %range1541

range1541:                                        ; preds = %merge1527
  %i1542 = alloca i32
  store i32 0, i32* %i1542
  br label %while1543

while1543:                                        ; preds = %while_loop1544, %range1541
  %lastentry1553 = load i32, i32* %access1540
  %rangecomp1554 = icmp ne i32 %lastentry1553, 1
  br i1 %rangecomp1554, label %while_loop1544, label %merge1555

while_loop1544:                                   ; preds = %while1543
  %loadi1545 = load i32, i32* %i1542
  %addr1546 = load { i32, i32* }*, { i32, i32* }** %rangeptr1536
  %getcon1547 = getelementptr { i32, i32* }, { i32, i32* }* %addr1546, i32 0, i32 1
  %conaddr1548 = load i32*, i32** %getcon1547
  %access1549 = getelementptr i32, i32* %conaddr1548, i32 %loadi1545
  %calcval1550 = add i32 0, %loadi1545
  store i32 %calcval1550, i32* %access1549
  %i1551 = load i32, i32* %i1542
  %iplusone1552 = add i32 %i1551, 1
  store i32 %iplusone1552, i32* %i1542
  br label %while1543

merge1555:                                        ; preds = %while1543
  %eptr1556 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1532, { i32, i32* }** %eptr1556
  %getlen1557 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1532, i32 0, i32 0
  %size1558 = load i32, i32* %getlen1557
  %addr1559 = load { i32, i32* }*, { i32, i32* }** %eptr1556
  %getcon1560 = getelementptr { i32, i32* }, { i32, i32* }* %addr1559, i32 0, i32 1
  %conaddr1561 = load i32*, i32** %getcon1560
  %access1562 = getelementptr i32, i32* %conaddr1561, i32 0
  %current1563 = load i32, i32* %access1562
  %i1564 = alloca i32
  store i32 %current1563, i32* %i1564
  %i1565 = alloca i32
  store i32 0, i32* %i1565
  br label %for1566

for1566:                                          ; preds = %merge2926, %merge1555
  %i2935 = load i32, i32* %i1565
  %forcomp2936 = icmp ne i32 %i2935, %size1558
  br i1 %forcomp2936, label %for_loop1567, label %merge2937

for_loop1567:                                     ; preds = %for1566
  br label %block1568

block1568:                                        ; preds = %for_loop1567
  %payoffs11569 = load { i32, double* }*, { i32, double* }** @payoffs1
  %randindex_result = call i32 ({ i32, double* }*, ...) @randindex({ i32, double* }* %payoffs11569)
  %m1 = alloca i32
  store i32 %randindex_result, i32* %m1
  %payoffs11570 = load { i32, double* }*, { i32, double* }** @payoffs1
  %randindex_result1571 = call i32 ({ i32, double* }*, ...) @randindex({ i32, double* }* %payoffs11570)
  %f1 = alloca i32
  store i32 %randindex_result1571, i32* %f1
  %m11572 = load i32, i32* %m1
  %f11573 = load i32, i32* %f1
  %tmp1574 = icmp eq i32 %m11572, %f11573
  br i1 %tmp1574, label %then1576, label %else1592

merge1575:                                        ; preds = %merge1594, %merge1591
  %payoffs21595 = load { i32, double* }*, { i32, double* }** @payoffs2
  %randindex_result1596 = call i32 ({ i32, double* }*, ...) @randindex({ i32, double* }* %payoffs21595)
  %m2 = alloca i32
  store i32 %randindex_result1596, i32* %m2
  %payoffs21597 = load { i32, double* }*, { i32, double* }** @payoffs2
  %randindex_result1598 = call i32 ({ i32, double* }*, ...) @randindex({ i32, double* }* %payoffs21597)
  %f2 = alloca i32
  store i32 %randindex_result1598, i32* %f2
  %m21599 = load i32, i32* %m2
  %f21600 = load i32, i32* %f2
  %tmp1601 = icmp eq i32 %m21599, %f21600
  br i1 %tmp1601, label %then1603, label %else1619

then1576:                                         ; preds = %block1568
  br label %block1577

block1577:                                        ; preds = %then1576
  %f11578 = load i32, i32* %f1
  %tmp1579 = icmp eq i32 %f11578, 9
  br i1 %tmp1579, label %then1581, label %else1586

merge1580:                                        ; preds = %merge1590, %merge1585
  br label %merge1591

then1581:                                         ; preds = %block1577
  br label %block1582

block1582:                                        ; preds = %then1581
  %m11583 = load i32, i32* %m1
  %tmp1584 = sub i32 %m11583, 1
  store i32 %tmp1584, i32* %m1
  br label %merge1585

merge1585:                                        ; preds = %block1582
  br label %merge1580

else1586:                                         ; preds = %block1577
  br label %block1587

block1587:                                        ; preds = %else1586
  %f11588 = load i32, i32* %f1
  %tmp1589 = add i32 %f11588, 1
  store i32 %tmp1589, i32* %f1
  br label %merge1590

merge1590:                                        ; preds = %block1587
  br label %merge1580

merge1591:                                        ; preds = %merge1580
  br label %merge1575

else1592:                                         ; preds = %block1568
  br label %block1593

block1593:                                        ; preds = %else1592
  br label %merge1594

merge1594:                                        ; preds = %block1593
  br label %merge1575

merge1602:                                        ; preds = %merge1621, %merge1618
  %m11622 = load i32, i32* %m1
  %players11623 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen1624 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11623, i32 0, i32 0
  %arrlen1625 = load i32, i32* %getlen1624
  %sub1626 = sub i32 %arrlen1625, 1
  %error1627 = icmp sgt i32 %m11622, %sub1626
  br i1 %error1627, label %error1629, label %merge1628

then1603:                                         ; preds = %merge1575
  br label %block1604

block1604:                                        ; preds = %then1603
  %f21605 = load i32, i32* %f2
  %tmp1606 = icmp eq i32 %f21605, 9
  br i1 %tmp1606, label %then1608, label %else1613

merge1607:                                        ; preds = %merge1617, %merge1612
  br label %merge1618

then1608:                                         ; preds = %block1604
  br label %block1609

block1609:                                        ; preds = %then1608
  %m21610 = load i32, i32* %m2
  %tmp1611 = sub i32 %m21610, 1
  store i32 %tmp1611, i32* %m2
  br label %merge1612

merge1612:                                        ; preds = %block1609
  br label %merge1607

else1613:                                         ; preds = %block1604
  br label %block1614

block1614:                                        ; preds = %else1613
  %f21615 = load i32, i32* %f2
  %tmp1616 = add i32 %f21615, 1
  store i32 %tmp1616, i32* %f2
  br label %merge1617

merge1617:                                        ; preds = %block1614
  br label %merge1607

merge1618:                                        ; preds = %merge1607
  br label %merge1602

else1619:                                         ; preds = %merge1575
  br label %block1620

block1620:                                        ; preds = %else1619
  br label %merge1621

merge1621:                                        ; preds = %block1620
  br label %merge1602

merge1628:                                        ; preds = %merge1602, %error1629
  %addr1631 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1632 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1631, i32 0, i32 1
  %conaddr1633 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1632
  %access1634 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1633, i32 %m11622
  %players11635 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1634
  %field1636 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11635, i32 0, i32 0
  %fieldzero = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1636
  %newplayer1637 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest1638 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1637, i32 0, i32 0
  %deltadest1639 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1637, i32 0, i32 1
  %payoffdest1640 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1637, i32 0, i32 2
  %statedest1641 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1637, i32 0, i32 3
  %roundsdest1642 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1637, i32 0, i32 4
  %field1643 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 0
  %nplayers1644 = load i32, i32* %field1643
  %field1645 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 1
  %nmoves1646 = load i32, i32* %field1645
  %field1647 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 2
  %nstates1648 = load i32, i32* %field1647
  %newstrategy1649 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp1650 = sitofp i32 %nmoves1646 to double
  %sitofp1651 = sitofp i32 %nplayers1644 to double
  %exp1652 = call double (double, double, ...) @pow(double %sitofp1650, double %sitofp1651)
  %size1653 = fptoui double %exp1652 to i32
  %size1654 = mul i32 %size1653, %nstates1648
  %trans1655 = alloca { i32, i32 }, i32 %size1654
  %nplayersdest1656 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1649, i32 0, i32 0
  %nmovesdest1657 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1649, i32 0, i32 1
  %nstatesdest1658 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1649, i32 0, i32 2
  %ptrdest1659 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1649, i32 0, i32 3
  store i32 %nplayers1644, i32* %nplayersdest1656
  store i32 %nmoves1646, i32* %nmovesdest1657
  store i32 %nstates1648, i32* %nstatesdest1658
  store { i32, i32 }* %trans1655, { i32, i32 }** %ptrdest1659
  %field1660 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 0
  %nplayers1661 = load i32, i32* %field1660
  %field1662 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 1
  %nmoves1663 = load i32, i32* %field1662
  %field1664 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 2
  %nstates1665 = load i32, i32* %field1664
  %sitofp1666 = sitofp i32 %nmoves1663 to double
  %sitofp1667 = sitofp i32 %nplayers1661 to double
  %exp1668 = call double (double, double, ...) @pow(double %sitofp1666, double %sitofp1667)
  %size1669 = fptoui double %exp1668 to i32
  %size1670 = mul i32 %size1669, %nstates1665
  %sitofp1671 = sitofp i32 %size1670 to double
  %sitofp1672 = sitofp i32 %nmoves1663 to double
  %sitofp1673 = sitofp i32 %nstates1665 to double
  %fcopy_size1674 = fmul double %sitofp1671, 1.000000e+00
  %copy_size1675 = fptoui double %fcopy_size1674 to i32
  %transi1676 = alloca i32
  store i32 0, i32* %transi1676
  br label %copycond1677

error1629:                                        ; preds = %merge1602
  %printerror1630 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.49, i32 0, i32 0), i32 %m11622, i32 %sub1626)
  br label %merge1628

copycond1677:                                     ; preds = %merge1711, %merge1628
  %transi1721 = load i32, i32* %transi1676
  %statecomp1722 = icmp slt i32 %transi1721, %copy_size1675
  br i1 %statecomp1722, label %copyloop1678, label %merge1723

copyloop1678:                                     ; preds = %copycond1677
  %load1679 = load i32, i32* %transi1676
  %field1680 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 3
  %sourceaddr1681 = load { i32, i32 }*, { i32, i32 }** %field1680
  %field1682 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1649, i32 0, i32 3
  %destaddr1683 = load { i32, i32 }*, { i32, i32 }** %field1682
  %source1684 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr1681, i32 %load1679
  %dest1685 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr1683, i32 %load1679
  %field1686 = getelementptr { i32, i32 }, { i32, i32 }* %source1684, i32 0, i32 0
  %source_output1687 = load i32, i32* %field1686
  %field1688 = getelementptr { i32, i32 }, { i32, i32 }* %dest1685, i32 0, i32 0
  %field1689 = getelementptr { i32, i32 }, { i32, i32 }* %source1684, i32 0, i32 1
  %source_nextstate1690 = load i32, i32* %field1689
  %field1691 = getelementptr { i32, i32 }, { i32, i32 }* %dest1685, i32 0, i32 1
  %rand1692 = call i32 (...) @rand()
  %randint1693 = urem i32 %rand1692, 32767
  %sitofp1694 = sitofp i32 %randint1693 to double
  %randfloat1695 = fdiv double %sitofp1694, 3.276700e+04
  %randcomp1696 = fcmp olt double %randfloat1695, 0.000000e+00
  br i1 %randcomp1696, label %then1698, label %else1705

merge1697:                                        ; preds = %else1705, %then1698
  %rand1706 = call i32 (...) @rand()
  %randint1707 = urem i32 %rand1706, 32767
  %sitofp1708 = sitofp i32 %randint1707 to double
  %randfloat1709 = fdiv double %sitofp1708, 3.276700e+04
  %randcomp1710 = fcmp olt double %randfloat1709, 0.000000e+00
  br i1 %randcomp1710, label %then1712, label %else1719

then1698:                                         ; preds = %copyloop1678
  %rand1699 = call i32 (...) @rand()
  %randint1700 = urem i32 %rand1699, 32767
  %sitofp1701 = sitofp i32 %randint1700 to double
  %randfloat1702 = fdiv double %sitofp1701, 3.276700e+04
  %frandmove1703 = fmul double %randfloat1702, %sitofp1672
  %randmove1704 = fptoui double %frandmove1703 to i32
  store i32 %randmove1704, i32* %field1688
  br label %merge1697

else1705:                                         ; preds = %copyloop1678
  store i32 %source_output1687, i32* %field1688
  br label %merge1697

merge1711:                                        ; preds = %else1719, %then1712
  %inc1720 = add i32 %load1679, 1
  store i32 %inc1720, i32* %transi1676
  br label %copycond1677

then1712:                                         ; preds = %merge1697
  %rand1713 = call i32 (...) @rand()
  %randint1714 = urem i32 %rand1713, 32767
  %sitofp1715 = sitofp i32 %randint1714 to double
  %randfloat1716 = fdiv double %sitofp1715, 3.276700e+04
  %frandstate1717 = fmul double %randfloat1716, %sitofp1673
  %randstate1718 = fptoui double %frandstate1717 to i32
  store i32 %randstate1718, i32* %field1691
  br label %merge1711

else1719:                                         ; preds = %merge1697
  store i32 %source_nextstate1690, i32* %field1691
  br label %merge1711

merge1723:                                        ; preds = %copycond1677
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy1649, { i32, i32, i32, { i32, i32 }* }** %strategydest1638
  store double 1.000000e+00, double* %deltadest1639
  store double 0.000000e+00, double* %payoffdest1640
  store i32 0, i32* %statedest1641
  store i32 0, i32* %roundsdest1642
  %i1724 = load i32, i32* %i1564
  %tmp1725 = mul i32 2, %i1724
  %tmp1726 = add i32 6, %tmp1725
  %addr1727 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1728 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1727, i32 0, i32 1
  %conaddr1729 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1728
  %access1730 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1729, i32 %tmp1726
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1637, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1730
  %f11731 = load i32, i32* %f1
  %players11732 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen1733 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11732, i32 0, i32 0
  %arrlen1734 = load i32, i32* %getlen1733
  %sub1735 = sub i32 %arrlen1734, 1
  %error1736 = icmp sgt i32 %f11731, %sub1735
  br i1 %error1736, label %error1738, label %merge1737

merge1737:                                        ; preds = %merge1723, %error1738
  %addr1740 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1741 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1740, i32 0, i32 1
  %conaddr1742 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1741
  %access1743 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1742, i32 %f11731
  %players11744 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1743
  %field1745 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11744, i32 0, i32 0
  %fieldzero1746 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1745
  %newplayer1747 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest1748 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1747, i32 0, i32 0
  %deltadest1749 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1747, i32 0, i32 1
  %payoffdest1750 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1747, i32 0, i32 2
  %statedest1751 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1747, i32 0, i32 3
  %roundsdest1752 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1747, i32 0, i32 4
  %field1753 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1746, i32 0, i32 0
  %nplayers1754 = load i32, i32* %field1753
  %field1755 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1746, i32 0, i32 1
  %nmoves1756 = load i32, i32* %field1755
  %field1757 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1746, i32 0, i32 2
  %nstates1758 = load i32, i32* %field1757
  %newstrategy1759 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp1760 = sitofp i32 %nmoves1756 to double
  %sitofp1761 = sitofp i32 %nplayers1754 to double
  %exp1762 = call double (double, double, ...) @pow(double %sitofp1760, double %sitofp1761)
  %size1763 = fptoui double %exp1762 to i32
  %size1764 = mul i32 %size1763, %nstates1758
  %trans1765 = alloca { i32, i32 }, i32 %size1764
  %nplayersdest1766 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1759, i32 0, i32 0
  %nmovesdest1767 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1759, i32 0, i32 1
  %nstatesdest1768 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1759, i32 0, i32 2
  %ptrdest1769 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1759, i32 0, i32 3
  store i32 %nplayers1754, i32* %nplayersdest1766
  store i32 %nmoves1756, i32* %nmovesdest1767
  store i32 %nstates1758, i32* %nstatesdest1768
  store { i32, i32 }* %trans1765, { i32, i32 }** %ptrdest1769
  %field1770 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1746, i32 0, i32 0
  %nplayers1771 = load i32, i32* %field1770
  %field1772 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1746, i32 0, i32 1
  %nmoves1773 = load i32, i32* %field1772
  %field1774 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1746, i32 0, i32 2
  %nstates1775 = load i32, i32* %field1774
  %sitofp1776 = sitofp i32 %nmoves1773 to double
  %sitofp1777 = sitofp i32 %nplayers1771 to double
  %exp1778 = call double (double, double, ...) @pow(double %sitofp1776, double %sitofp1777)
  %size1779 = fptoui double %exp1778 to i32
  %size1780 = mul i32 %size1779, %nstates1775
  %sitofp1781 = sitofp i32 %size1780 to double
  %sitofp1782 = sitofp i32 %nmoves1773 to double
  %sitofp1783 = sitofp i32 %nstates1775 to double
  %fcopy_size1784 = fmul double %sitofp1781, 1.000000e+00
  %copy_size1785 = fptoui double %fcopy_size1784 to i32
  %transi1786 = alloca i32
  store i32 0, i32* %transi1786
  br label %copycond1787

error1738:                                        ; preds = %merge1723
  %printerror1739 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.50, i32 0, i32 0), i32 %f11731, i32 %sub1735)
  br label %merge1737

copycond1787:                                     ; preds = %merge1821, %merge1737
  %transi1831 = load i32, i32* %transi1786
  %statecomp1832 = icmp slt i32 %transi1831, %copy_size1785
  br i1 %statecomp1832, label %copyloop1788, label %merge1833

copyloop1788:                                     ; preds = %copycond1787
  %load1789 = load i32, i32* %transi1786
  %field1790 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1746, i32 0, i32 3
  %sourceaddr1791 = load { i32, i32 }*, { i32, i32 }** %field1790
  %field1792 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1759, i32 0, i32 3
  %destaddr1793 = load { i32, i32 }*, { i32, i32 }** %field1792
  %source1794 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr1791, i32 %load1789
  %dest1795 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr1793, i32 %load1789
  %field1796 = getelementptr { i32, i32 }, { i32, i32 }* %source1794, i32 0, i32 0
  %source_output1797 = load i32, i32* %field1796
  %field1798 = getelementptr { i32, i32 }, { i32, i32 }* %dest1795, i32 0, i32 0
  %field1799 = getelementptr { i32, i32 }, { i32, i32 }* %source1794, i32 0, i32 1
  %source_nextstate1800 = load i32, i32* %field1799
  %field1801 = getelementptr { i32, i32 }, { i32, i32 }* %dest1795, i32 0, i32 1
  %rand1802 = call i32 (...) @rand()
  %randint1803 = urem i32 %rand1802, 32767
  %sitofp1804 = sitofp i32 %randint1803 to double
  %randfloat1805 = fdiv double %sitofp1804, 3.276700e+04
  %randcomp1806 = fcmp olt double %randfloat1805, 0.000000e+00
  br i1 %randcomp1806, label %then1808, label %else1815

merge1807:                                        ; preds = %else1815, %then1808
  %rand1816 = call i32 (...) @rand()
  %randint1817 = urem i32 %rand1816, 32767
  %sitofp1818 = sitofp i32 %randint1817 to double
  %randfloat1819 = fdiv double %sitofp1818, 3.276700e+04
  %randcomp1820 = fcmp olt double %randfloat1819, 0.000000e+00
  br i1 %randcomp1820, label %then1822, label %else1829

then1808:                                         ; preds = %copyloop1788
  %rand1809 = call i32 (...) @rand()
  %randint1810 = urem i32 %rand1809, 32767
  %sitofp1811 = sitofp i32 %randint1810 to double
  %randfloat1812 = fdiv double %sitofp1811, 3.276700e+04
  %frandmove1813 = fmul double %randfloat1812, %sitofp1782
  %randmove1814 = fptoui double %frandmove1813 to i32
  store i32 %randmove1814, i32* %field1798
  br label %merge1807

else1815:                                         ; preds = %copyloop1788
  store i32 %source_output1797, i32* %field1798
  br label %merge1807

merge1821:                                        ; preds = %else1829, %then1822
  %inc1830 = add i32 %load1789, 1
  store i32 %inc1830, i32* %transi1786
  br label %copycond1787

then1822:                                         ; preds = %merge1807
  %rand1823 = call i32 (...) @rand()
  %randint1824 = urem i32 %rand1823, 32767
  %sitofp1825 = sitofp i32 %randint1824 to double
  %randfloat1826 = fdiv double %sitofp1825, 3.276700e+04
  %frandstate1827 = fmul double %randfloat1826, %sitofp1783
  %randstate1828 = fptoui double %frandstate1827 to i32
  store i32 %randstate1828, i32* %field1801
  br label %merge1821

else1829:                                         ; preds = %merge1807
  store i32 %source_nextstate1800, i32* %field1801
  br label %merge1821

merge1833:                                        ; preds = %copycond1787
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy1759, { i32, i32, i32, { i32, i32 }* }** %strategydest1748
  store double 1.000000e+00, double* %deltadest1749
  store double 0.000000e+00, double* %payoffdest1750
  store i32 0, i32* %statedest1751
  store i32 0, i32* %roundsdest1752
  %i1834 = load i32, i32* %i1564
  %tmp1835 = mul i32 2, %i1834
  %tmp1836 = add i32 6, %tmp1835
  %tmp1837 = add i32 %tmp1836, 1
  %addr1838 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1839 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1838, i32 0, i32 1
  %conaddr1840 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1839
  %access1841 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1840, i32 %tmp1837
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1747, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1841
  %m21842 = load i32, i32* %m2
  %players21843 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen1844 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players21843, i32 0, i32 0
  %arrlen1845 = load i32, i32* %getlen1844
  %sub1846 = sub i32 %arrlen1845, 1
  %error1847 = icmp sgt i32 %m21842, %sub1846
  br i1 %error1847, label %error1849, label %merge1848

merge1848:                                        ; preds = %merge1833, %error1849
  %addr1851 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1852 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1851, i32 0, i32 1
  %conaddr1853 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1852
  %access1854 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1853, i32 %m21842
  %players21855 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1854
  %field1856 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21855, i32 0, i32 0
  %fieldzero1857 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1856
  %newplayer1858 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest1859 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1858, i32 0, i32 0
  %deltadest1860 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1858, i32 0, i32 1
  %payoffdest1861 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1858, i32 0, i32 2
  %statedest1862 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1858, i32 0, i32 3
  %roundsdest1863 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1858, i32 0, i32 4
  %field1864 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1857, i32 0, i32 0
  %nplayers1865 = load i32, i32* %field1864
  %field1866 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1857, i32 0, i32 1
  %nmoves1867 = load i32, i32* %field1866
  %field1868 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1857, i32 0, i32 2
  %nstates1869 = load i32, i32* %field1868
  %newstrategy1870 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp1871 = sitofp i32 %nmoves1867 to double
  %sitofp1872 = sitofp i32 %nplayers1865 to double
  %exp1873 = call double (double, double, ...) @pow(double %sitofp1871, double %sitofp1872)
  %size1874 = fptoui double %exp1873 to i32
  %size1875 = mul i32 %size1874, %nstates1869
  %trans1876 = alloca { i32, i32 }, i32 %size1875
  %nplayersdest1877 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1870, i32 0, i32 0
  %nmovesdest1878 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1870, i32 0, i32 1
  %nstatesdest1879 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1870, i32 0, i32 2
  %ptrdest1880 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1870, i32 0, i32 3
  store i32 %nplayers1865, i32* %nplayersdest1877
  store i32 %nmoves1867, i32* %nmovesdest1878
  store i32 %nstates1869, i32* %nstatesdest1879
  store { i32, i32 }* %trans1876, { i32, i32 }** %ptrdest1880
  %field1881 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1857, i32 0, i32 0
  %nplayers1882 = load i32, i32* %field1881
  %field1883 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1857, i32 0, i32 1
  %nmoves1884 = load i32, i32* %field1883
  %field1885 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1857, i32 0, i32 2
  %nstates1886 = load i32, i32* %field1885
  %sitofp1887 = sitofp i32 %nmoves1884 to double
  %sitofp1888 = sitofp i32 %nplayers1882 to double
  %exp1889 = call double (double, double, ...) @pow(double %sitofp1887, double %sitofp1888)
  %size1890 = fptoui double %exp1889 to i32
  %size1891 = mul i32 %size1890, %nstates1886
  %sitofp1892 = sitofp i32 %size1891 to double
  %sitofp1893 = sitofp i32 %nmoves1884 to double
  %sitofp1894 = sitofp i32 %nstates1886 to double
  %fcopy_size1895 = fmul double %sitofp1892, 1.000000e+00
  %copy_size1896 = fptoui double %fcopy_size1895 to i32
  %transi1897 = alloca i32
  store i32 0, i32* %transi1897
  br label %copycond1898

error1849:                                        ; preds = %merge1833
  %printerror1850 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.51, i32 0, i32 0), i32 %m21842, i32 %sub1846)
  br label %merge1848

copycond1898:                                     ; preds = %merge1932, %merge1848
  %transi1942 = load i32, i32* %transi1897
  %statecomp1943 = icmp slt i32 %transi1942, %copy_size1896
  br i1 %statecomp1943, label %copyloop1899, label %merge1944

copyloop1899:                                     ; preds = %copycond1898
  %load1900 = load i32, i32* %transi1897
  %field1901 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1857, i32 0, i32 3
  %sourceaddr1902 = load { i32, i32 }*, { i32, i32 }** %field1901
  %field1903 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1870, i32 0, i32 3
  %destaddr1904 = load { i32, i32 }*, { i32, i32 }** %field1903
  %source1905 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr1902, i32 %load1900
  %dest1906 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr1904, i32 %load1900
  %field1907 = getelementptr { i32, i32 }, { i32, i32 }* %source1905, i32 0, i32 0
  %source_output1908 = load i32, i32* %field1907
  %field1909 = getelementptr { i32, i32 }, { i32, i32 }* %dest1906, i32 0, i32 0
  %field1910 = getelementptr { i32, i32 }, { i32, i32 }* %source1905, i32 0, i32 1
  %source_nextstate1911 = load i32, i32* %field1910
  %field1912 = getelementptr { i32, i32 }, { i32, i32 }* %dest1906, i32 0, i32 1
  %rand1913 = call i32 (...) @rand()
  %randint1914 = urem i32 %rand1913, 32767
  %sitofp1915 = sitofp i32 %randint1914 to double
  %randfloat1916 = fdiv double %sitofp1915, 3.276700e+04
  %randcomp1917 = fcmp olt double %randfloat1916, 0.000000e+00
  br i1 %randcomp1917, label %then1919, label %else1926

merge1918:                                        ; preds = %else1926, %then1919
  %rand1927 = call i32 (...) @rand()
  %randint1928 = urem i32 %rand1927, 32767
  %sitofp1929 = sitofp i32 %randint1928 to double
  %randfloat1930 = fdiv double %sitofp1929, 3.276700e+04
  %randcomp1931 = fcmp olt double %randfloat1930, 0.000000e+00
  br i1 %randcomp1931, label %then1933, label %else1940

then1919:                                         ; preds = %copyloop1899
  %rand1920 = call i32 (...) @rand()
  %randint1921 = urem i32 %rand1920, 32767
  %sitofp1922 = sitofp i32 %randint1921 to double
  %randfloat1923 = fdiv double %sitofp1922, 3.276700e+04
  %frandmove1924 = fmul double %randfloat1923, %sitofp1893
  %randmove1925 = fptoui double %frandmove1924 to i32
  store i32 %randmove1925, i32* %field1909
  br label %merge1918

else1926:                                         ; preds = %copyloop1899
  store i32 %source_output1908, i32* %field1909
  br label %merge1918

merge1932:                                        ; preds = %else1940, %then1933
  %inc1941 = add i32 %load1900, 1
  store i32 %inc1941, i32* %transi1897
  br label %copycond1898

then1933:                                         ; preds = %merge1918
  %rand1934 = call i32 (...) @rand()
  %randint1935 = urem i32 %rand1934, 32767
  %sitofp1936 = sitofp i32 %randint1935 to double
  %randfloat1937 = fdiv double %sitofp1936, 3.276700e+04
  %frandstate1938 = fmul double %randfloat1937, %sitofp1894
  %randstate1939 = fptoui double %frandstate1938 to i32
  store i32 %randstate1939, i32* %field1912
  br label %merge1932

else1940:                                         ; preds = %merge1918
  store i32 %source_nextstate1911, i32* %field1912
  br label %merge1932

merge1944:                                        ; preds = %copycond1898
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy1870, { i32, i32, i32, { i32, i32 }* }** %strategydest1859
  store double 1.000000e+00, double* %deltadest1860
  store double 0.000000e+00, double* %payoffdest1861
  store i32 0, i32* %statedest1862
  store i32 0, i32* %roundsdest1863
  %i1945 = load i32, i32* %i1564
  %tmp1946 = mul i32 2, %i1945
  %tmp1947 = add i32 6, %tmp1946
  %addr1948 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1949 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1948, i32 0, i32 1
  %conaddr1950 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1949
  %access1951 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1950, i32 %tmp1947
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1858, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1951
  %f21952 = load i32, i32* %f2
  %players21953 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen1954 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players21953, i32 0, i32 0
  %arrlen1955 = load i32, i32* %getlen1954
  %sub1956 = sub i32 %arrlen1955, 1
  %error1957 = icmp sgt i32 %f21952, %sub1956
  br i1 %error1957, label %error1959, label %merge1958

merge1958:                                        ; preds = %merge1944, %error1959
  %addr1961 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1962 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1961, i32 0, i32 1
  %conaddr1963 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1962
  %access1964 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1963, i32 %f21952
  %players21965 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1964
  %field1966 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21965, i32 0, i32 0
  %fieldzero1967 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1966
  %newplayer1968 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest1969 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1968, i32 0, i32 0
  %deltadest1970 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1968, i32 0, i32 1
  %payoffdest1971 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1968, i32 0, i32 2
  %statedest1972 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1968, i32 0, i32 3
  %roundsdest1973 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1968, i32 0, i32 4
  %field1974 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1967, i32 0, i32 0
  %nplayers1975 = load i32, i32* %field1974
  %field1976 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1967, i32 0, i32 1
  %nmoves1977 = load i32, i32* %field1976
  %field1978 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1967, i32 0, i32 2
  %nstates1979 = load i32, i32* %field1978
  %newstrategy1980 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp1981 = sitofp i32 %nmoves1977 to double
  %sitofp1982 = sitofp i32 %nplayers1975 to double
  %exp1983 = call double (double, double, ...) @pow(double %sitofp1981, double %sitofp1982)
  %size1984 = fptoui double %exp1983 to i32
  %size1985 = mul i32 %size1984, %nstates1979
  %trans1986 = alloca { i32, i32 }, i32 %size1985
  %nplayersdest1987 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1980, i32 0, i32 0
  %nmovesdest1988 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1980, i32 0, i32 1
  %nstatesdest1989 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1980, i32 0, i32 2
  %ptrdest1990 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1980, i32 0, i32 3
  store i32 %nplayers1975, i32* %nplayersdest1987
  store i32 %nmoves1977, i32* %nmovesdest1988
  store i32 %nstates1979, i32* %nstatesdest1989
  store { i32, i32 }* %trans1986, { i32, i32 }** %ptrdest1990
  %field1991 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1967, i32 0, i32 0
  %nplayers1992 = load i32, i32* %field1991
  %field1993 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1967, i32 0, i32 1
  %nmoves1994 = load i32, i32* %field1993
  %field1995 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1967, i32 0, i32 2
  %nstates1996 = load i32, i32* %field1995
  %sitofp1997 = sitofp i32 %nmoves1994 to double
  %sitofp1998 = sitofp i32 %nplayers1992 to double
  %exp1999 = call double (double, double, ...) @pow(double %sitofp1997, double %sitofp1998)
  %size2000 = fptoui double %exp1999 to i32
  %size2001 = mul i32 %size2000, %nstates1996
  %sitofp2002 = sitofp i32 %size2001 to double
  %sitofp2003 = sitofp i32 %nmoves1994 to double
  %sitofp2004 = sitofp i32 %nstates1996 to double
  %fcopy_size2005 = fmul double %sitofp2002, 1.000000e+00
  %copy_size2006 = fptoui double %fcopy_size2005 to i32
  %transi2007 = alloca i32
  store i32 0, i32* %transi2007
  br label %copycond2008

error1959:                                        ; preds = %merge1944
  %printerror1960 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.52, i32 0, i32 0), i32 %f21952, i32 %sub1956)
  br label %merge1958

copycond2008:                                     ; preds = %merge2042, %merge1958
  %transi2052 = load i32, i32* %transi2007
  %statecomp2053 = icmp slt i32 %transi2052, %copy_size2006
  br i1 %statecomp2053, label %copyloop2009, label %merge2054

copyloop2009:                                     ; preds = %copycond2008
  %load2010 = load i32, i32* %transi2007
  %field2011 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1967, i32 0, i32 3
  %sourceaddr2012 = load { i32, i32 }*, { i32, i32 }** %field2011
  %field2013 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1980, i32 0, i32 3
  %destaddr2014 = load { i32, i32 }*, { i32, i32 }** %field2013
  %source2015 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2012, i32 %load2010
  %dest2016 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2014, i32 %load2010
  %field2017 = getelementptr { i32, i32 }, { i32, i32 }* %source2015, i32 0, i32 0
  %source_output2018 = load i32, i32* %field2017
  %field2019 = getelementptr { i32, i32 }, { i32, i32 }* %dest2016, i32 0, i32 0
  %field2020 = getelementptr { i32, i32 }, { i32, i32 }* %source2015, i32 0, i32 1
  %source_nextstate2021 = load i32, i32* %field2020
  %field2022 = getelementptr { i32, i32 }, { i32, i32 }* %dest2016, i32 0, i32 1
  %rand2023 = call i32 (...) @rand()
  %randint2024 = urem i32 %rand2023, 32767
  %sitofp2025 = sitofp i32 %randint2024 to double
  %randfloat2026 = fdiv double %sitofp2025, 3.276700e+04
  %randcomp2027 = fcmp olt double %randfloat2026, 0.000000e+00
  br i1 %randcomp2027, label %then2029, label %else2036

merge2028:                                        ; preds = %else2036, %then2029
  %rand2037 = call i32 (...) @rand()
  %randint2038 = urem i32 %rand2037, 32767
  %sitofp2039 = sitofp i32 %randint2038 to double
  %randfloat2040 = fdiv double %sitofp2039, 3.276700e+04
  %randcomp2041 = fcmp olt double %randfloat2040, 0.000000e+00
  br i1 %randcomp2041, label %then2043, label %else2050

then2029:                                         ; preds = %copyloop2009
  %rand2030 = call i32 (...) @rand()
  %randint2031 = urem i32 %rand2030, 32767
  %sitofp2032 = sitofp i32 %randint2031 to double
  %randfloat2033 = fdiv double %sitofp2032, 3.276700e+04
  %frandmove2034 = fmul double %randfloat2033, %sitofp2003
  %randmove2035 = fptoui double %frandmove2034 to i32
  store i32 %randmove2035, i32* %field2019
  br label %merge2028

else2036:                                         ; preds = %copyloop2009
  store i32 %source_output2018, i32* %field2019
  br label %merge2028

merge2042:                                        ; preds = %else2050, %then2043
  %inc2051 = add i32 %load2010, 1
  store i32 %inc2051, i32* %transi2007
  br label %copycond2008

then2043:                                         ; preds = %merge2028
  %rand2044 = call i32 (...) @rand()
  %randint2045 = urem i32 %rand2044, 32767
  %sitofp2046 = sitofp i32 %randint2045 to double
  %randfloat2047 = fdiv double %sitofp2046, 3.276700e+04
  %frandstate2048 = fmul double %randfloat2047, %sitofp2004
  %randstate2049 = fptoui double %frandstate2048 to i32
  store i32 %randstate2049, i32* %field2022
  br label %merge2042

else2050:                                         ; preds = %merge2028
  store i32 %source_nextstate2021, i32* %field2022
  br label %merge2042

merge2054:                                        ; preds = %copycond2008
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy1980, { i32, i32, i32, { i32, i32 }* }** %strategydest1969
  store double 1.000000e+00, double* %deltadest1970
  store double 0.000000e+00, double* %payoffdest1971
  store i32 0, i32* %statedest1972
  store i32 0, i32* %roundsdest1973
  %i2055 = load i32, i32* %i1564
  %tmp2056 = mul i32 2, %i2055
  %tmp2057 = add i32 6, %tmp2056
  %tmp2058 = add i32 %tmp2057, 1
  %addr2059 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2060 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2059, i32 0, i32 1
  %conaddr2061 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2060
  %access2062 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2061, i32 %tmp2058
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1968, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2062
  %i2063 = load i32, i32* %i1564
  %tmp2064 = mul i32 2, %i2063
  %tmp2065 = add i32 6, %tmp2064
  %players12066 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen2067 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players12066, i32 0, i32 0
  %arrlen2068 = load i32, i32* %getlen2067
  %sub2069 = sub i32 %arrlen2068, 1
  %error2070 = icmp sgt i32 %tmp2065, %sub2069
  br i1 %error2070, label %error2072, label %merge2071

merge2071:                                        ; preds = %merge2054, %error2072
  %addr2074 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon2075 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2074, i32 0, i32 1
  %conaddr2076 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2075
  %access2077 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2076, i32 %tmp2065
  %players12078 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2077
  %i2079 = load i32, i32* %i1564
  %tmp2080 = mul i32 2, %i2079
  %tmp2081 = add i32 6, %tmp2080
  %tmp2082 = add i32 %tmp2081, 1
  %players12083 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen2084 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players12083, i32 0, i32 0
  %arrlen2085 = load i32, i32* %getlen2084
  %sub2086 = sub i32 %arrlen2085, 1
  %error2087 = icmp sgt i32 %tmp2082, %sub2086
  br i1 %error2087, label %error2089, label %merge2088

error2072:                                        ; preds = %merge2054
  %printerror2073 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.53, i32 0, i32 0), i32 %tmp2065, i32 %sub2069)
  br label %merge2071

merge2088:                                        ; preds = %merge2071, %error2089
  %addr2091 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon2092 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2091, i32 0, i32 1
  %conaddr2093 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2092
  %access2094 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2093, i32 %tmp2082
  %players12095 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2094
  %rand2096 = call i32 (...) @rand()
  %randint2097 = urem i32 %rand2096, 32767
  %sitofp2098 = sitofp i32 %randint2097 to double
  %randfloat2099 = fdiv double %sitofp2098, 3.276700e+04
  %field2100 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players12078, i32 0, i32 0
  %cross1 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2100
  %field2101 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players12095, i32 0, i32 0
  %cross2 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2101
  %field2102 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 0
  %nplayers2103 = load i32, i32* %field2102
  %field2104 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 0
  %nplayers2105 = load i32, i32* %field2104
  %field2106 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 1
  %nmoves2107 = load i32, i32* %field2106
  %field2108 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 1
  %nmoves2109 = load i32, i32* %field2108
  %field2110 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 2
  %nstates2111 = load i32, i32* %field2110
  %field2112 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 2
  %nstates2113 = load i32, i32* %field2112
  %error2114 = icmp ne i32 %nplayers2103, %nplayers2105
  br i1 %error2114, label %error2116, label %merge2115

error2089:                                        ; preds = %merge2071
  %printerror2090 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.54, i32 0, i32 0), i32 %tmp2082, i32 %sub2086)
  br label %merge2088

merge2115:                                        ; preds = %merge2088, %error2116
  %error2118 = icmp ne i32 %nmoves2107, %nmoves2109
  br i1 %error2118, label %error2120, label %merge2119

error2116:                                        ; preds = %merge2088
  %printerror2117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @error.55, i32 0, i32 0), i32 %nplayers2103, i32 %nplayers2105)
  br label %merge2115

merge2119:                                        ; preds = %merge2115, %error2120
  %error2122 = icmp ne i32 %nstates2111, %nstates2113
  br i1 %error2122, label %error2124, label %merge2123

error2120:                                        ; preds = %merge2115
  %printerror2121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @error.56, i32 0, i32 0), i32 %nmoves2107, i32 %nmoves2109)
  br label %merge2119

merge2123:                                        ; preds = %merge2119, %error2124
  %newstrategy2126 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp2127 = sitofp i32 %nplayers2103 to double
  %sitofp2128 = sitofp i32 %nmoves2107 to double
  %exp2129 = call double (double, double, ...) @pow(double %sitofp2127, double %sitofp2128)
  %size2130 = fptoui double %exp2129 to i32
  %size2131 = mul i32 %size2130, %nstates2111
  %trans2132 = alloca { i32, i32 }, i32 %size2131
  %nplayersdest2133 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2126, i32 0, i32 0
  %nmovesdest2134 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2126, i32 0, i32 1
  %nstatesdest2135 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2126, i32 0, i32 2
  %ptrdest2136 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2126, i32 0, i32 3
  store i32 %nmoves2107, i32* %nplayersdest2133
  store i32 %nplayers2103, i32* %nmovesdest2134
  store i32 %nstates2111, i32* %nstatesdest2135
  store { i32, i32 }* %trans2132, { i32, i32 }** %ptrdest2136
  %field2137 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 0
  %nplayers2138 = load i32, i32* %field2137
  %field2139 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 1
  %nmoves2140 = load i32, i32* %field2139
  %field2141 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 2
  %nstates2142 = load i32, i32* %field2141
  %sitofp2143 = sitofp i32 %nmoves2140 to double
  %sitofp2144 = sitofp i32 %nplayers2138 to double
  %exp2145 = call double (double, double, ...) @pow(double %sitofp2143, double %sitofp2144)
  %size2146 = fptoui double %exp2145 to i32
  %size2147 = mul i32 %size2146, %nstates2142
  %sitofp2148 = sitofp i32 %size2147 to double
  %sitofp2149 = sitofp i32 %nmoves2140 to double
  %sitofp2150 = sitofp i32 %nstates2142 to double
  %fcopy_size2151 = fmul double %sitofp2148, %randfloat2099
  %copy_size2152 = fptoui double %fcopy_size2151 to i32
  %transi2153 = alloca i32
  store i32 0, i32* %transi2153
  br label %copycond2154

error2124:                                        ; preds = %merge2119
  %printerror2125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @error.57, i32 0, i32 0), i32 %nstates2111, i32 %nstates2113)
  br label %merge2123

copycond2154:                                     ; preds = %merge2188, %merge2123
  %transi2198 = load i32, i32* %transi2153
  %statecomp2199 = icmp slt i32 %transi2198, %copy_size2152
  br i1 %statecomp2199, label %copyloop2155, label %merge2200

copyloop2155:                                     ; preds = %copycond2154
  %load2156 = load i32, i32* %transi2153
  %field2157 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 3
  %sourceaddr2158 = load { i32, i32 }*, { i32, i32 }** %field2157
  %field2159 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2126, i32 0, i32 3
  %destaddr2160 = load { i32, i32 }*, { i32, i32 }** %field2159
  %source2161 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2158, i32 %load2156
  %dest2162 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2160, i32 %load2156
  %field2163 = getelementptr { i32, i32 }, { i32, i32 }* %source2161, i32 0, i32 0
  %source_output2164 = load i32, i32* %field2163
  %field2165 = getelementptr { i32, i32 }, { i32, i32 }* %dest2162, i32 0, i32 0
  %field2166 = getelementptr { i32, i32 }, { i32, i32 }* %source2161, i32 0, i32 1
  %source_nextstate2167 = load i32, i32* %field2166
  %field2168 = getelementptr { i32, i32 }, { i32, i32 }* %dest2162, i32 0, i32 1
  %rand2169 = call i32 (...) @rand()
  %randint2170 = urem i32 %rand2169, 32767
  %sitofp2171 = sitofp i32 %randint2170 to double
  %randfloat2172 = fdiv double %sitofp2171, 3.276700e+04
  %randcomp2173 = fcmp olt double %randfloat2172, 0.000000e+00
  br i1 %randcomp2173, label %then2175, label %else2182

merge2174:                                        ; preds = %else2182, %then2175
  %rand2183 = call i32 (...) @rand()
  %randint2184 = urem i32 %rand2183, 32767
  %sitofp2185 = sitofp i32 %randint2184 to double
  %randfloat2186 = fdiv double %sitofp2185, 3.276700e+04
  %randcomp2187 = fcmp olt double %randfloat2186, 0.000000e+00
  br i1 %randcomp2187, label %then2189, label %else2196

then2175:                                         ; preds = %copyloop2155
  %rand2176 = call i32 (...) @rand()
  %randint2177 = urem i32 %rand2176, 32767
  %sitofp2178 = sitofp i32 %randint2177 to double
  %randfloat2179 = fdiv double %sitofp2178, 3.276700e+04
  %frandmove2180 = fmul double %randfloat2179, %sitofp2149
  %randmove2181 = fptoui double %frandmove2180 to i32
  store i32 %randmove2181, i32* %field2165
  br label %merge2174

else2182:                                         ; preds = %copyloop2155
  store i32 %source_output2164, i32* %field2165
  br label %merge2174

merge2188:                                        ; preds = %else2196, %then2189
  %inc2197 = add i32 %load2156, 1
  store i32 %inc2197, i32* %transi2153
  br label %copycond2154

then2189:                                         ; preds = %merge2174
  %rand2190 = call i32 (...) @rand()
  %randint2191 = urem i32 %rand2190, 32767
  %sitofp2192 = sitofp i32 %randint2191 to double
  %randfloat2193 = fdiv double %sitofp2192, 3.276700e+04
  %frandstate2194 = fmul double %randfloat2193, %sitofp2150
  %randstate2195 = fptoui double %frandstate2194 to i32
  store i32 %randstate2195, i32* %field2168
  br label %merge2188

else2196:                                         ; preds = %merge2174
  store i32 %source_nextstate2167, i32* %field2168
  br label %merge2188

merge2200:                                        ; preds = %copycond2154
  %field2201 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 0
  %nplayers2202 = load i32, i32* %field2201
  %field2203 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 1
  %nmoves2204 = load i32, i32* %field2203
  %field2205 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 2
  %nstates2206 = load i32, i32* %field2205
  %sitofp2207 = sitofp i32 %nmoves2204 to double
  %sitofp2208 = sitofp i32 %nplayers2202 to double
  %exp2209 = call double (double, double, ...) @pow(double %sitofp2207, double %sitofp2208)
  %size2210 = fptoui double %exp2209 to i32
  %size2211 = mul i32 %size2210, %nstates2206
  %sitofp2212 = sitofp i32 %size2211 to double
  %sitofp2213 = sitofp i32 %nmoves2204 to double
  %sitofp2214 = sitofp i32 %nstates2206 to double
  %fcopy_size2215 = fmul double %sitofp2212, %randfloat2099
  %copy_size2216 = fptoui double %fcopy_size2215 to i32
  %transi2217 = alloca i32
  store i32 0, i32* %transi2217
  br label %copycond2218

copycond2218:                                     ; preds = %merge2252, %merge2200
  %transi2262 = load i32, i32* %transi2217
  %statecomp2263 = icmp slt i32 %transi2262, %copy_size2216
  br i1 %statecomp2263, label %copyloop2219, label %merge2264

copyloop2219:                                     ; preds = %copycond2218
  %load2220 = load i32, i32* %transi2217
  %field2221 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 3
  %sourceaddr2222 = load { i32, i32 }*, { i32, i32 }** %field2221
  %field2223 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 3
  %destaddr2224 = load { i32, i32 }*, { i32, i32 }** %field2223
  %source2225 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2222, i32 %load2220
  %dest2226 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2224, i32 %load2220
  %field2227 = getelementptr { i32, i32 }, { i32, i32 }* %source2225, i32 0, i32 0
  %source_output2228 = load i32, i32* %field2227
  %field2229 = getelementptr { i32, i32 }, { i32, i32 }* %dest2226, i32 0, i32 0
  %field2230 = getelementptr { i32, i32 }, { i32, i32 }* %source2225, i32 0, i32 1
  %source_nextstate2231 = load i32, i32* %field2230
  %field2232 = getelementptr { i32, i32 }, { i32, i32 }* %dest2226, i32 0, i32 1
  %rand2233 = call i32 (...) @rand()
  %randint2234 = urem i32 %rand2233, 32767
  %sitofp2235 = sitofp i32 %randint2234 to double
  %randfloat2236 = fdiv double %sitofp2235, 3.276700e+04
  %randcomp2237 = fcmp olt double %randfloat2236, 0.000000e+00
  br i1 %randcomp2237, label %then2239, label %else2246

merge2238:                                        ; preds = %else2246, %then2239
  %rand2247 = call i32 (...) @rand()
  %randint2248 = urem i32 %rand2247, 32767
  %sitofp2249 = sitofp i32 %randint2248 to double
  %randfloat2250 = fdiv double %sitofp2249, 3.276700e+04
  %randcomp2251 = fcmp olt double %randfloat2250, 0.000000e+00
  br i1 %randcomp2251, label %then2253, label %else2260

then2239:                                         ; preds = %copyloop2219
  %rand2240 = call i32 (...) @rand()
  %randint2241 = urem i32 %rand2240, 32767
  %sitofp2242 = sitofp i32 %randint2241 to double
  %randfloat2243 = fdiv double %sitofp2242, 3.276700e+04
  %frandmove2244 = fmul double %randfloat2243, %sitofp2213
  %randmove2245 = fptoui double %frandmove2244 to i32
  store i32 %randmove2245, i32* %field2229
  br label %merge2238

else2246:                                         ; preds = %copyloop2219
  store i32 %source_output2228, i32* %field2229
  br label %merge2238

merge2252:                                        ; preds = %else2260, %then2253
  %inc2261 = add i32 %load2220, 1
  store i32 %inc2261, i32* %transi2217
  br label %copycond2218

then2253:                                         ; preds = %merge2238
  %rand2254 = call i32 (...) @rand()
  %randint2255 = urem i32 %rand2254, 32767
  %sitofp2256 = sitofp i32 %randint2255 to double
  %randfloat2257 = fdiv double %sitofp2256, 3.276700e+04
  %frandstate2258 = fmul double %randfloat2257, %sitofp2214
  %randstate2259 = fptoui double %frandstate2258 to i32
  store i32 %randstate2259, i32* %field2232
  br label %merge2252

else2260:                                         ; preds = %merge2238
  store i32 %source_nextstate2231, i32* %field2232
  br label %merge2252

merge2264:                                        ; preds = %copycond2218
  %field2265 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2126, i32 0, i32 0
  %nplayers2266 = load i32, i32* %field2265
  %field2267 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2126, i32 0, i32 1
  %nmoves2268 = load i32, i32* %field2267
  %field2269 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2126, i32 0, i32 2
  %nstates2270 = load i32, i32* %field2269
  %sitofp2271 = sitofp i32 %nmoves2268 to double
  %sitofp2272 = sitofp i32 %nplayers2266 to double
  %exp2273 = call double (double, double, ...) @pow(double %sitofp2271, double %sitofp2272)
  %size2274 = fptoui double %exp2273 to i32
  %size2275 = mul i32 %size2274, %nstates2270
  %sitofp2276 = sitofp i32 %size2275 to double
  %sitofp2277 = sitofp i32 %nmoves2268 to double
  %sitofp2278 = sitofp i32 %nstates2270 to double
  %fcopy_size2279 = fmul double %sitofp2276, %randfloat2099
  %copy_size2280 = fptoui double %fcopy_size2279 to i32
  %transi2281 = alloca i32
  store i32 0, i32* %transi2281
  br label %copycond2282

copycond2282:                                     ; preds = %merge2316, %merge2264
  %transi2326 = load i32, i32* %transi2281
  %statecomp2327 = icmp slt i32 %transi2326, %copy_size2280
  br i1 %statecomp2327, label %copyloop2283, label %merge2328

copyloop2283:                                     ; preds = %copycond2282
  %load2284 = load i32, i32* %transi2281
  %field2285 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2126, i32 0, i32 3
  %sourceaddr2286 = load { i32, i32 }*, { i32, i32 }** %field2285
  %field2287 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 3
  %destaddr2288 = load { i32, i32 }*, { i32, i32 }** %field2287
  %source2289 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2286, i32 %load2284
  %dest2290 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2288, i32 %load2284
  %field2291 = getelementptr { i32, i32 }, { i32, i32 }* %source2289, i32 0, i32 0
  %source_output2292 = load i32, i32* %field2291
  %field2293 = getelementptr { i32, i32 }, { i32, i32 }* %dest2290, i32 0, i32 0
  %field2294 = getelementptr { i32, i32 }, { i32, i32 }* %source2289, i32 0, i32 1
  %source_nextstate2295 = load i32, i32* %field2294
  %field2296 = getelementptr { i32, i32 }, { i32, i32 }* %dest2290, i32 0, i32 1
  %rand2297 = call i32 (...) @rand()
  %randint2298 = urem i32 %rand2297, 32767
  %sitofp2299 = sitofp i32 %randint2298 to double
  %randfloat2300 = fdiv double %sitofp2299, 3.276700e+04
  %randcomp2301 = fcmp olt double %randfloat2300, 0.000000e+00
  br i1 %randcomp2301, label %then2303, label %else2310

merge2302:                                        ; preds = %else2310, %then2303
  %rand2311 = call i32 (...) @rand()
  %randint2312 = urem i32 %rand2311, 32767
  %sitofp2313 = sitofp i32 %randint2312 to double
  %randfloat2314 = fdiv double %sitofp2313, 3.276700e+04
  %randcomp2315 = fcmp olt double %randfloat2314, 0.000000e+00
  br i1 %randcomp2315, label %then2317, label %else2324

then2303:                                         ; preds = %copyloop2283
  %rand2304 = call i32 (...) @rand()
  %randint2305 = urem i32 %rand2304, 32767
  %sitofp2306 = sitofp i32 %randint2305 to double
  %randfloat2307 = fdiv double %sitofp2306, 3.276700e+04
  %frandmove2308 = fmul double %randfloat2307, %sitofp2277
  %randmove2309 = fptoui double %frandmove2308 to i32
  store i32 %randmove2309, i32* %field2293
  br label %merge2302

else2310:                                         ; preds = %copyloop2283
  store i32 %source_output2292, i32* %field2293
  br label %merge2302

merge2316:                                        ; preds = %else2324, %then2317
  %inc2325 = add i32 %load2284, 1
  store i32 %inc2325, i32* %transi2281
  br label %copycond2282

then2317:                                         ; preds = %merge2302
  %rand2318 = call i32 (...) @rand()
  %randint2319 = urem i32 %rand2318, 32767
  %sitofp2320 = sitofp i32 %randint2319 to double
  %randfloat2321 = fdiv double %sitofp2320, 3.276700e+04
  %frandstate2322 = fmul double %randfloat2321, %sitofp2278
  %randstate2323 = fptoui double %frandstate2322 to i32
  store i32 %randstate2323, i32* %field2296
  br label %merge2316

else2324:                                         ; preds = %merge2302
  store i32 %source_nextstate2295, i32* %field2296
  br label %merge2316

merge2328:                                        ; preds = %copycond2282
  %i2329 = load i32, i32* %i1564
  %tmp2330 = mul i32 2, %i2329
  %tmp2331 = add i32 6, %tmp2330
  %players22332 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen2333 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players22332, i32 0, i32 0
  %arrlen2334 = load i32, i32* %getlen2333
  %sub2335 = sub i32 %arrlen2334, 1
  %error2336 = icmp sgt i32 %tmp2331, %sub2335
  br i1 %error2336, label %error2338, label %merge2337

merge2337:                                        ; preds = %merge2328, %error2338
  %addr2340 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2341 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2340, i32 0, i32 1
  %conaddr2342 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2341
  %access2343 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2342, i32 %tmp2331
  %players22344 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2343
  %i2345 = load i32, i32* %i1564
  %tmp2346 = mul i32 2, %i2345
  %tmp2347 = add i32 6, %tmp2346
  %tmp2348 = add i32 %tmp2347, 1
  %players22349 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen2350 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players22349, i32 0, i32 0
  %arrlen2351 = load i32, i32* %getlen2350
  %sub2352 = sub i32 %arrlen2351, 1
  %error2353 = icmp sgt i32 %tmp2348, %sub2352
  br i1 %error2353, label %error2355, label %merge2354

error2338:                                        ; preds = %merge2328
  %printerror2339 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.58, i32 0, i32 0), i32 %tmp2331, i32 %sub2335)
  br label %merge2337

merge2354:                                        ; preds = %merge2337, %error2355
  %addr2357 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2358 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2357, i32 0, i32 1
  %conaddr2359 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2358
  %access2360 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2359, i32 %tmp2348
  %players22361 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2360
  %rand2362 = call i32 (...) @rand()
  %randint2363 = urem i32 %rand2362, 32767
  %sitofp2364 = sitofp i32 %randint2363 to double
  %randfloat2365 = fdiv double %sitofp2364, 3.276700e+04
  %field2366 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players22344, i32 0, i32 0
  %cross12367 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2366
  %field2368 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players22361, i32 0, i32 0
  %cross22369 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2368
  %field2370 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12367, i32 0, i32 0
  %nplayers2371 = load i32, i32* %field2370
  %field2372 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22369, i32 0, i32 0
  %nplayers2373 = load i32, i32* %field2372
  %field2374 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12367, i32 0, i32 1
  %nmoves2375 = load i32, i32* %field2374
  %field2376 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22369, i32 0, i32 1
  %nmoves2377 = load i32, i32* %field2376
  %field2378 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12367, i32 0, i32 2
  %nstates2379 = load i32, i32* %field2378
  %field2380 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22369, i32 0, i32 2
  %nstates2381 = load i32, i32* %field2380
  %error2382 = icmp ne i32 %nplayers2371, %nplayers2373
  br i1 %error2382, label %error2384, label %merge2383

error2355:                                        ; preds = %merge2337
  %printerror2356 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.59, i32 0, i32 0), i32 %tmp2348, i32 %sub2352)
  br label %merge2354

merge2383:                                        ; preds = %merge2354, %error2384
  %error2386 = icmp ne i32 %nmoves2375, %nmoves2377
  br i1 %error2386, label %error2388, label %merge2387

error2384:                                        ; preds = %merge2354
  %printerror2385 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @error.60, i32 0, i32 0), i32 %nplayers2371, i32 %nplayers2373)
  br label %merge2383

merge2387:                                        ; preds = %merge2383, %error2388
  %error2390 = icmp ne i32 %nstates2379, %nstates2381
  br i1 %error2390, label %error2392, label %merge2391

error2388:                                        ; preds = %merge2383
  %printerror2389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @error.61, i32 0, i32 0), i32 %nmoves2375, i32 %nmoves2377)
  br label %merge2387

merge2391:                                        ; preds = %merge2387, %error2392
  %newstrategy2394 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp2395 = sitofp i32 %nplayers2371 to double
  %sitofp2396 = sitofp i32 %nmoves2375 to double
  %exp2397 = call double (double, double, ...) @pow(double %sitofp2395, double %sitofp2396)
  %size2398 = fptoui double %exp2397 to i32
  %size2399 = mul i32 %size2398, %nstates2379
  %trans2400 = alloca { i32, i32 }, i32 %size2399
  %nplayersdest2401 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2394, i32 0, i32 0
  %nmovesdest2402 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2394, i32 0, i32 1
  %nstatesdest2403 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2394, i32 0, i32 2
  %ptrdest2404 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2394, i32 0, i32 3
  store i32 %nmoves2375, i32* %nplayersdest2401
  store i32 %nplayers2371, i32* %nmovesdest2402
  store i32 %nstates2379, i32* %nstatesdest2403
  store { i32, i32 }* %trans2400, { i32, i32 }** %ptrdest2404
  %field2405 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12367, i32 0, i32 0
  %nplayers2406 = load i32, i32* %field2405
  %field2407 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12367, i32 0, i32 1
  %nmoves2408 = load i32, i32* %field2407
  %field2409 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12367, i32 0, i32 2
  %nstates2410 = load i32, i32* %field2409
  %sitofp2411 = sitofp i32 %nmoves2408 to double
  %sitofp2412 = sitofp i32 %nplayers2406 to double
  %exp2413 = call double (double, double, ...) @pow(double %sitofp2411, double %sitofp2412)
  %size2414 = fptoui double %exp2413 to i32
  %size2415 = mul i32 %size2414, %nstates2410
  %sitofp2416 = sitofp i32 %size2415 to double
  %sitofp2417 = sitofp i32 %nmoves2408 to double
  %sitofp2418 = sitofp i32 %nstates2410 to double
  %fcopy_size2419 = fmul double %sitofp2416, %randfloat2365
  %copy_size2420 = fptoui double %fcopy_size2419 to i32
  %transi2421 = alloca i32
  store i32 0, i32* %transi2421
  br label %copycond2422

error2392:                                        ; preds = %merge2387
  %printerror2393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @error.62, i32 0, i32 0), i32 %nstates2379, i32 %nstates2381)
  br label %merge2391

copycond2422:                                     ; preds = %merge2456, %merge2391
  %transi2466 = load i32, i32* %transi2421
  %statecomp2467 = icmp slt i32 %transi2466, %copy_size2420
  br i1 %statecomp2467, label %copyloop2423, label %merge2468

copyloop2423:                                     ; preds = %copycond2422
  %load2424 = load i32, i32* %transi2421
  %field2425 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12367, i32 0, i32 3
  %sourceaddr2426 = load { i32, i32 }*, { i32, i32 }** %field2425
  %field2427 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2394, i32 0, i32 3
  %destaddr2428 = load { i32, i32 }*, { i32, i32 }** %field2427
  %source2429 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2426, i32 %load2424
  %dest2430 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2428, i32 %load2424
  %field2431 = getelementptr { i32, i32 }, { i32, i32 }* %source2429, i32 0, i32 0
  %source_output2432 = load i32, i32* %field2431
  %field2433 = getelementptr { i32, i32 }, { i32, i32 }* %dest2430, i32 0, i32 0
  %field2434 = getelementptr { i32, i32 }, { i32, i32 }* %source2429, i32 0, i32 1
  %source_nextstate2435 = load i32, i32* %field2434
  %field2436 = getelementptr { i32, i32 }, { i32, i32 }* %dest2430, i32 0, i32 1
  %rand2437 = call i32 (...) @rand()
  %randint2438 = urem i32 %rand2437, 32767
  %sitofp2439 = sitofp i32 %randint2438 to double
  %randfloat2440 = fdiv double %sitofp2439, 3.276700e+04
  %randcomp2441 = fcmp olt double %randfloat2440, 0.000000e+00
  br i1 %randcomp2441, label %then2443, label %else2450

merge2442:                                        ; preds = %else2450, %then2443
  %rand2451 = call i32 (...) @rand()
  %randint2452 = urem i32 %rand2451, 32767
  %sitofp2453 = sitofp i32 %randint2452 to double
  %randfloat2454 = fdiv double %sitofp2453, 3.276700e+04
  %randcomp2455 = fcmp olt double %randfloat2454, 0.000000e+00
  br i1 %randcomp2455, label %then2457, label %else2464

then2443:                                         ; preds = %copyloop2423
  %rand2444 = call i32 (...) @rand()
  %randint2445 = urem i32 %rand2444, 32767
  %sitofp2446 = sitofp i32 %randint2445 to double
  %randfloat2447 = fdiv double %sitofp2446, 3.276700e+04
  %frandmove2448 = fmul double %randfloat2447, %sitofp2417
  %randmove2449 = fptoui double %frandmove2448 to i32
  store i32 %randmove2449, i32* %field2433
  br label %merge2442

else2450:                                         ; preds = %copyloop2423
  store i32 %source_output2432, i32* %field2433
  br label %merge2442

merge2456:                                        ; preds = %else2464, %then2457
  %inc2465 = add i32 %load2424, 1
  store i32 %inc2465, i32* %transi2421
  br label %copycond2422

then2457:                                         ; preds = %merge2442
  %rand2458 = call i32 (...) @rand()
  %randint2459 = urem i32 %rand2458, 32767
  %sitofp2460 = sitofp i32 %randint2459 to double
  %randfloat2461 = fdiv double %sitofp2460, 3.276700e+04
  %frandstate2462 = fmul double %randfloat2461, %sitofp2418
  %randstate2463 = fptoui double %frandstate2462 to i32
  store i32 %randstate2463, i32* %field2436
  br label %merge2456

else2464:                                         ; preds = %merge2442
  store i32 %source_nextstate2435, i32* %field2436
  br label %merge2456

merge2468:                                        ; preds = %copycond2422
  %field2469 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22369, i32 0, i32 0
  %nplayers2470 = load i32, i32* %field2469
  %field2471 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22369, i32 0, i32 1
  %nmoves2472 = load i32, i32* %field2471
  %field2473 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22369, i32 0, i32 2
  %nstates2474 = load i32, i32* %field2473
  %sitofp2475 = sitofp i32 %nmoves2472 to double
  %sitofp2476 = sitofp i32 %nplayers2470 to double
  %exp2477 = call double (double, double, ...) @pow(double %sitofp2475, double %sitofp2476)
  %size2478 = fptoui double %exp2477 to i32
  %size2479 = mul i32 %size2478, %nstates2474
  %sitofp2480 = sitofp i32 %size2479 to double
  %sitofp2481 = sitofp i32 %nmoves2472 to double
  %sitofp2482 = sitofp i32 %nstates2474 to double
  %fcopy_size2483 = fmul double %sitofp2480, %randfloat2365
  %copy_size2484 = fptoui double %fcopy_size2483 to i32
  %transi2485 = alloca i32
  store i32 0, i32* %transi2485
  br label %copycond2486

copycond2486:                                     ; preds = %merge2520, %merge2468
  %transi2530 = load i32, i32* %transi2485
  %statecomp2531 = icmp slt i32 %transi2530, %copy_size2484
  br i1 %statecomp2531, label %copyloop2487, label %merge2532

copyloop2487:                                     ; preds = %copycond2486
  %load2488 = load i32, i32* %transi2485
  %field2489 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22369, i32 0, i32 3
  %sourceaddr2490 = load { i32, i32 }*, { i32, i32 }** %field2489
  %field2491 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12367, i32 0, i32 3
  %destaddr2492 = load { i32, i32 }*, { i32, i32 }** %field2491
  %source2493 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2490, i32 %load2488
  %dest2494 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2492, i32 %load2488
  %field2495 = getelementptr { i32, i32 }, { i32, i32 }* %source2493, i32 0, i32 0
  %source_output2496 = load i32, i32* %field2495
  %field2497 = getelementptr { i32, i32 }, { i32, i32 }* %dest2494, i32 0, i32 0
  %field2498 = getelementptr { i32, i32 }, { i32, i32 }* %source2493, i32 0, i32 1
  %source_nextstate2499 = load i32, i32* %field2498
  %field2500 = getelementptr { i32, i32 }, { i32, i32 }* %dest2494, i32 0, i32 1
  %rand2501 = call i32 (...) @rand()
  %randint2502 = urem i32 %rand2501, 32767
  %sitofp2503 = sitofp i32 %randint2502 to double
  %randfloat2504 = fdiv double %sitofp2503, 3.276700e+04
  %randcomp2505 = fcmp olt double %randfloat2504, 0.000000e+00
  br i1 %randcomp2505, label %then2507, label %else2514

merge2506:                                        ; preds = %else2514, %then2507
  %rand2515 = call i32 (...) @rand()
  %randint2516 = urem i32 %rand2515, 32767
  %sitofp2517 = sitofp i32 %randint2516 to double
  %randfloat2518 = fdiv double %sitofp2517, 3.276700e+04
  %randcomp2519 = fcmp olt double %randfloat2518, 0.000000e+00
  br i1 %randcomp2519, label %then2521, label %else2528

then2507:                                         ; preds = %copyloop2487
  %rand2508 = call i32 (...) @rand()
  %randint2509 = urem i32 %rand2508, 32767
  %sitofp2510 = sitofp i32 %randint2509 to double
  %randfloat2511 = fdiv double %sitofp2510, 3.276700e+04
  %frandmove2512 = fmul double %randfloat2511, %sitofp2481
  %randmove2513 = fptoui double %frandmove2512 to i32
  store i32 %randmove2513, i32* %field2497
  br label %merge2506

else2514:                                         ; preds = %copyloop2487
  store i32 %source_output2496, i32* %field2497
  br label %merge2506

merge2520:                                        ; preds = %else2528, %then2521
  %inc2529 = add i32 %load2488, 1
  store i32 %inc2529, i32* %transi2485
  br label %copycond2486

then2521:                                         ; preds = %merge2506
  %rand2522 = call i32 (...) @rand()
  %randint2523 = urem i32 %rand2522, 32767
  %sitofp2524 = sitofp i32 %randint2523 to double
  %randfloat2525 = fdiv double %sitofp2524, 3.276700e+04
  %frandstate2526 = fmul double %randfloat2525, %sitofp2482
  %randstate2527 = fptoui double %frandstate2526 to i32
  store i32 %randstate2527, i32* %field2500
  br label %merge2520

else2528:                                         ; preds = %merge2506
  store i32 %source_nextstate2499, i32* %field2500
  br label %merge2520

merge2532:                                        ; preds = %copycond2486
  %field2533 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2394, i32 0, i32 0
  %nplayers2534 = load i32, i32* %field2533
  %field2535 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2394, i32 0, i32 1
  %nmoves2536 = load i32, i32* %field2535
  %field2537 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2394, i32 0, i32 2
  %nstates2538 = load i32, i32* %field2537
  %sitofp2539 = sitofp i32 %nmoves2536 to double
  %sitofp2540 = sitofp i32 %nplayers2534 to double
  %exp2541 = call double (double, double, ...) @pow(double %sitofp2539, double %sitofp2540)
  %size2542 = fptoui double %exp2541 to i32
  %size2543 = mul i32 %size2542, %nstates2538
  %sitofp2544 = sitofp i32 %size2543 to double
  %sitofp2545 = sitofp i32 %nmoves2536 to double
  %sitofp2546 = sitofp i32 %nstates2538 to double
  %fcopy_size2547 = fmul double %sitofp2544, %randfloat2365
  %copy_size2548 = fptoui double %fcopy_size2547 to i32
  %transi2549 = alloca i32
  store i32 0, i32* %transi2549
  br label %copycond2550

copycond2550:                                     ; preds = %merge2584, %merge2532
  %transi2594 = load i32, i32* %transi2549
  %statecomp2595 = icmp slt i32 %transi2594, %copy_size2548
  br i1 %statecomp2595, label %copyloop2551, label %merge2596

copyloop2551:                                     ; preds = %copycond2550
  %load2552 = load i32, i32* %transi2549
  %field2553 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2394, i32 0, i32 3
  %sourceaddr2554 = load { i32, i32 }*, { i32, i32 }** %field2553
  %field2555 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22369, i32 0, i32 3
  %destaddr2556 = load { i32, i32 }*, { i32, i32 }** %field2555
  %source2557 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2554, i32 %load2552
  %dest2558 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2556, i32 %load2552
  %field2559 = getelementptr { i32, i32 }, { i32, i32 }* %source2557, i32 0, i32 0
  %source_output2560 = load i32, i32* %field2559
  %field2561 = getelementptr { i32, i32 }, { i32, i32 }* %dest2558, i32 0, i32 0
  %field2562 = getelementptr { i32, i32 }, { i32, i32 }* %source2557, i32 0, i32 1
  %source_nextstate2563 = load i32, i32* %field2562
  %field2564 = getelementptr { i32, i32 }, { i32, i32 }* %dest2558, i32 0, i32 1
  %rand2565 = call i32 (...) @rand()
  %randint2566 = urem i32 %rand2565, 32767
  %sitofp2567 = sitofp i32 %randint2566 to double
  %randfloat2568 = fdiv double %sitofp2567, 3.276700e+04
  %randcomp2569 = fcmp olt double %randfloat2568, 0.000000e+00
  br i1 %randcomp2569, label %then2571, label %else2578

merge2570:                                        ; preds = %else2578, %then2571
  %rand2579 = call i32 (...) @rand()
  %randint2580 = urem i32 %rand2579, 32767
  %sitofp2581 = sitofp i32 %randint2580 to double
  %randfloat2582 = fdiv double %sitofp2581, 3.276700e+04
  %randcomp2583 = fcmp olt double %randfloat2582, 0.000000e+00
  br i1 %randcomp2583, label %then2585, label %else2592

then2571:                                         ; preds = %copyloop2551
  %rand2572 = call i32 (...) @rand()
  %randint2573 = urem i32 %rand2572, 32767
  %sitofp2574 = sitofp i32 %randint2573 to double
  %randfloat2575 = fdiv double %sitofp2574, 3.276700e+04
  %frandmove2576 = fmul double %randfloat2575, %sitofp2545
  %randmove2577 = fptoui double %frandmove2576 to i32
  store i32 %randmove2577, i32* %field2561
  br label %merge2570

else2578:                                         ; preds = %copyloop2551
  store i32 %source_output2560, i32* %field2561
  br label %merge2570

merge2584:                                        ; preds = %else2592, %then2585
  %inc2593 = add i32 %load2552, 1
  store i32 %inc2593, i32* %transi2549
  br label %copycond2550

then2585:                                         ; preds = %merge2570
  %rand2586 = call i32 (...) @rand()
  %randint2587 = urem i32 %rand2586, 32767
  %sitofp2588 = sitofp i32 %randint2587 to double
  %randfloat2589 = fdiv double %sitofp2588, 3.276700e+04
  %frandstate2590 = fmul double %randfloat2589, %sitofp2546
  %randstate2591 = fptoui double %frandstate2590 to i32
  store i32 %randstate2591, i32* %field2564
  br label %merge2584

else2592:                                         ; preds = %merge2570
  store i32 %source_nextstate2563, i32* %field2564
  br label %merge2584

merge2596:                                        ; preds = %copycond2550
  %i2597 = load i32, i32* %i1564
  %tmp2598 = mul i32 2, %i2597
  %tmp2599 = add i32 6, %tmp2598
  %players12600 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen2601 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players12600, i32 0, i32 0
  %arrlen2602 = load i32, i32* %getlen2601
  %sub2603 = sub i32 %arrlen2602, 1
  %error2604 = icmp sgt i32 %tmp2599, %sub2603
  br i1 %error2604, label %error2606, label %merge2605

merge2605:                                        ; preds = %merge2596, %error2606
  %addr2608 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon2609 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2608, i32 0, i32 1
  %conaddr2610 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2609
  %access2611 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2610, i32 %tmp2599
  %players12612 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2611
  %field2613 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players12612, i32 0, i32 0
  %mutate = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2613
  %field2614 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate, i32 0, i32 0
  %nplayers2615 = load i32, i32* %field2614
  %field2616 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate, i32 0, i32 1
  %nmoves2617 = load i32, i32* %field2616
  %field2618 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate, i32 0, i32 2
  %nstates2619 = load i32, i32* %field2618
  %sitofp2620 = sitofp i32 %nmoves2617 to double
  %sitofp2621 = sitofp i32 %nplayers2615 to double
  %exp2622 = call double (double, double, ...) @pow(double %sitofp2620, double %sitofp2621)
  %size2623 = fptoui double %exp2622 to i32
  %size2624 = mul i32 %size2623, %nstates2619
  %sitofp2625 = sitofp i32 %size2624 to double
  %sitofp2626 = sitofp i32 %nmoves2617 to double
  %sitofp2627 = sitofp i32 %nstates2619 to double
  %fcopy_size2628 = fmul double %sitofp2625, 1.000000e+00
  %copy_size2629 = fptoui double %fcopy_size2628 to i32
  %transi2630 = alloca i32
  store i32 0, i32* %transi2630
  br label %copycond2631

error2606:                                        ; preds = %merge2596
  %printerror2607 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.63, i32 0, i32 0), i32 %tmp2599, i32 %sub2603)
  br label %merge2605

copycond2631:                                     ; preds = %merge2665, %merge2605
  %transi2675 = load i32, i32* %transi2630
  %statecomp2676 = icmp slt i32 %transi2675, %copy_size2629
  br i1 %statecomp2676, label %copyloop2632, label %merge2677

copyloop2632:                                     ; preds = %copycond2631
  %load2633 = load i32, i32* %transi2630
  %field2634 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate, i32 0, i32 3
  %sourceaddr2635 = load { i32, i32 }*, { i32, i32 }** %field2634
  %field2636 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate, i32 0, i32 3
  %destaddr2637 = load { i32, i32 }*, { i32, i32 }** %field2636
  %source2638 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2635, i32 %load2633
  %dest2639 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2637, i32 %load2633
  %field2640 = getelementptr { i32, i32 }, { i32, i32 }* %source2638, i32 0, i32 0
  %source_output2641 = load i32, i32* %field2640
  %field2642 = getelementptr { i32, i32 }, { i32, i32 }* %dest2639, i32 0, i32 0
  %field2643 = getelementptr { i32, i32 }, { i32, i32 }* %source2638, i32 0, i32 1
  %source_nextstate2644 = load i32, i32* %field2643
  %field2645 = getelementptr { i32, i32 }, { i32, i32 }* %dest2639, i32 0, i32 1
  %rand2646 = call i32 (...) @rand()
  %randint2647 = urem i32 %rand2646, 32767
  %sitofp2648 = sitofp i32 %randint2647 to double
  %randfloat2649 = fdiv double %sitofp2648, 3.276700e+04
  %randcomp2650 = fcmp olt double %randfloat2649, 2.000000e-01
  br i1 %randcomp2650, label %then2652, label %else2659

merge2651:                                        ; preds = %else2659, %then2652
  %rand2660 = call i32 (...) @rand()
  %randint2661 = urem i32 %rand2660, 32767
  %sitofp2662 = sitofp i32 %randint2661 to double
  %randfloat2663 = fdiv double %sitofp2662, 3.276700e+04
  %randcomp2664 = fcmp olt double %randfloat2663, 2.000000e-01
  br i1 %randcomp2664, label %then2666, label %else2673

then2652:                                         ; preds = %copyloop2632
  %rand2653 = call i32 (...) @rand()
  %randint2654 = urem i32 %rand2653, 32767
  %sitofp2655 = sitofp i32 %randint2654 to double
  %randfloat2656 = fdiv double %sitofp2655, 3.276700e+04
  %frandmove2657 = fmul double %randfloat2656, %sitofp2626
  %randmove2658 = fptoui double %frandmove2657 to i32
  store i32 %randmove2658, i32* %field2642
  br label %merge2651

else2659:                                         ; preds = %copyloop2632
  store i32 %source_output2641, i32* %field2642
  br label %merge2651

merge2665:                                        ; preds = %else2673, %then2666
  %inc2674 = add i32 %load2633, 1
  store i32 %inc2674, i32* %transi2630
  br label %copycond2631

then2666:                                         ; preds = %merge2651
  %rand2667 = call i32 (...) @rand()
  %randint2668 = urem i32 %rand2667, 32767
  %sitofp2669 = sitofp i32 %randint2668 to double
  %randfloat2670 = fdiv double %sitofp2669, 3.276700e+04
  %frandstate2671 = fmul double %randfloat2670, %sitofp2627
  %randstate2672 = fptoui double %frandstate2671 to i32
  store i32 %randstate2672, i32* %field2645
  br label %merge2665

else2673:                                         ; preds = %merge2651
  store i32 %source_nextstate2644, i32* %field2645
  br label %merge2665

merge2677:                                        ; preds = %copycond2631
  %i2678 = load i32, i32* %i1564
  %tmp2679 = mul i32 2, %i2678
  %tmp2680 = add i32 6, %tmp2679
  %players22681 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen2682 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players22681, i32 0, i32 0
  %arrlen2683 = load i32, i32* %getlen2682
  %sub2684 = sub i32 %arrlen2683, 1
  %error2685 = icmp sgt i32 %tmp2680, %sub2684
  br i1 %error2685, label %error2687, label %merge2686

merge2686:                                        ; preds = %merge2677, %error2687
  %addr2689 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2690 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2689, i32 0, i32 1
  %conaddr2691 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2690
  %access2692 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2691, i32 %tmp2680
  %players22693 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2692
  %field2694 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players22693, i32 0, i32 0
  %mutate2695 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2694
  %field2696 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2695, i32 0, i32 0
  %nplayers2697 = load i32, i32* %field2696
  %field2698 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2695, i32 0, i32 1
  %nmoves2699 = load i32, i32* %field2698
  %field2700 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2695, i32 0, i32 2
  %nstates2701 = load i32, i32* %field2700
  %sitofp2702 = sitofp i32 %nmoves2699 to double
  %sitofp2703 = sitofp i32 %nplayers2697 to double
  %exp2704 = call double (double, double, ...) @pow(double %sitofp2702, double %sitofp2703)
  %size2705 = fptoui double %exp2704 to i32
  %size2706 = mul i32 %size2705, %nstates2701
  %sitofp2707 = sitofp i32 %size2706 to double
  %sitofp2708 = sitofp i32 %nmoves2699 to double
  %sitofp2709 = sitofp i32 %nstates2701 to double
  %fcopy_size2710 = fmul double %sitofp2707, 1.000000e+00
  %copy_size2711 = fptoui double %fcopy_size2710 to i32
  %transi2712 = alloca i32
  store i32 0, i32* %transi2712
  br label %copycond2713

error2687:                                        ; preds = %merge2677
  %printerror2688 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.64, i32 0, i32 0), i32 %tmp2680, i32 %sub2684)
  br label %merge2686

copycond2713:                                     ; preds = %merge2747, %merge2686
  %transi2757 = load i32, i32* %transi2712
  %statecomp2758 = icmp slt i32 %transi2757, %copy_size2711
  br i1 %statecomp2758, label %copyloop2714, label %merge2759

copyloop2714:                                     ; preds = %copycond2713
  %load2715 = load i32, i32* %transi2712
  %field2716 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2695, i32 0, i32 3
  %sourceaddr2717 = load { i32, i32 }*, { i32, i32 }** %field2716
  %field2718 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2695, i32 0, i32 3
  %destaddr2719 = load { i32, i32 }*, { i32, i32 }** %field2718
  %source2720 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2717, i32 %load2715
  %dest2721 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2719, i32 %load2715
  %field2722 = getelementptr { i32, i32 }, { i32, i32 }* %source2720, i32 0, i32 0
  %source_output2723 = load i32, i32* %field2722
  %field2724 = getelementptr { i32, i32 }, { i32, i32 }* %dest2721, i32 0, i32 0
  %field2725 = getelementptr { i32, i32 }, { i32, i32 }* %source2720, i32 0, i32 1
  %source_nextstate2726 = load i32, i32* %field2725
  %field2727 = getelementptr { i32, i32 }, { i32, i32 }* %dest2721, i32 0, i32 1
  %rand2728 = call i32 (...) @rand()
  %randint2729 = urem i32 %rand2728, 32767
  %sitofp2730 = sitofp i32 %randint2729 to double
  %randfloat2731 = fdiv double %sitofp2730, 3.276700e+04
  %randcomp2732 = fcmp olt double %randfloat2731, 2.000000e-01
  br i1 %randcomp2732, label %then2734, label %else2741

merge2733:                                        ; preds = %else2741, %then2734
  %rand2742 = call i32 (...) @rand()
  %randint2743 = urem i32 %rand2742, 32767
  %sitofp2744 = sitofp i32 %randint2743 to double
  %randfloat2745 = fdiv double %sitofp2744, 3.276700e+04
  %randcomp2746 = fcmp olt double %randfloat2745, 2.000000e-01
  br i1 %randcomp2746, label %then2748, label %else2755

then2734:                                         ; preds = %copyloop2714
  %rand2735 = call i32 (...) @rand()
  %randint2736 = urem i32 %rand2735, 32767
  %sitofp2737 = sitofp i32 %randint2736 to double
  %randfloat2738 = fdiv double %sitofp2737, 3.276700e+04
  %frandmove2739 = fmul double %randfloat2738, %sitofp2708
  %randmove2740 = fptoui double %frandmove2739 to i32
  store i32 %randmove2740, i32* %field2724
  br label %merge2733

else2741:                                         ; preds = %copyloop2714
  store i32 %source_output2723, i32* %field2724
  br label %merge2733

merge2747:                                        ; preds = %else2755, %then2748
  %inc2756 = add i32 %load2715, 1
  store i32 %inc2756, i32* %transi2712
  br label %copycond2713

then2748:                                         ; preds = %merge2733
  %rand2749 = call i32 (...) @rand()
  %randint2750 = urem i32 %rand2749, 32767
  %sitofp2751 = sitofp i32 %randint2750 to double
  %randfloat2752 = fdiv double %sitofp2751, 3.276700e+04
  %frandstate2753 = fmul double %randfloat2752, %sitofp2709
  %randstate2754 = fptoui double %frandstate2753 to i32
  store i32 %randstate2754, i32* %field2727
  br label %merge2747

else2755:                                         ; preds = %merge2733
  store i32 %source_nextstate2726, i32* %field2727
  br label %merge2747

merge2759:                                        ; preds = %copycond2713
  %i2760 = load i32, i32* %i1564
  %tmp2761 = mul i32 2, %i2760
  %tmp2762 = add i32 6, %tmp2761
  %tmp2763 = add i32 %tmp2762, 1
  %players12764 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen2765 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players12764, i32 0, i32 0
  %arrlen2766 = load i32, i32* %getlen2765
  %sub2767 = sub i32 %arrlen2766, 1
  %error2768 = icmp sgt i32 %tmp2763, %sub2767
  br i1 %error2768, label %error2770, label %merge2769

merge2769:                                        ; preds = %merge2759, %error2770
  %addr2772 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon2773 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2772, i32 0, i32 1
  %conaddr2774 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2773
  %access2775 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2774, i32 %tmp2763
  %players12776 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2775
  %field2777 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players12776, i32 0, i32 0
  %mutate2778 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2777
  %field2779 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2778, i32 0, i32 0
  %nplayers2780 = load i32, i32* %field2779
  %field2781 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2778, i32 0, i32 1
  %nmoves2782 = load i32, i32* %field2781
  %field2783 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2778, i32 0, i32 2
  %nstates2784 = load i32, i32* %field2783
  %sitofp2785 = sitofp i32 %nmoves2782 to double
  %sitofp2786 = sitofp i32 %nplayers2780 to double
  %exp2787 = call double (double, double, ...) @pow(double %sitofp2785, double %sitofp2786)
  %size2788 = fptoui double %exp2787 to i32
  %size2789 = mul i32 %size2788, %nstates2784
  %sitofp2790 = sitofp i32 %size2789 to double
  %sitofp2791 = sitofp i32 %nmoves2782 to double
  %sitofp2792 = sitofp i32 %nstates2784 to double
  %fcopy_size2793 = fmul double %sitofp2790, 1.000000e+00
  %copy_size2794 = fptoui double %fcopy_size2793 to i32
  %transi2795 = alloca i32
  store i32 0, i32* %transi2795
  br label %copycond2796

error2770:                                        ; preds = %merge2759
  %printerror2771 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.65, i32 0, i32 0), i32 %tmp2763, i32 %sub2767)
  br label %merge2769

copycond2796:                                     ; preds = %merge2830, %merge2769
  %transi2840 = load i32, i32* %transi2795
  %statecomp2841 = icmp slt i32 %transi2840, %copy_size2794
  br i1 %statecomp2841, label %copyloop2797, label %merge2842

copyloop2797:                                     ; preds = %copycond2796
  %load2798 = load i32, i32* %transi2795
  %field2799 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2778, i32 0, i32 3
  %sourceaddr2800 = load { i32, i32 }*, { i32, i32 }** %field2799
  %field2801 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2778, i32 0, i32 3
  %destaddr2802 = load { i32, i32 }*, { i32, i32 }** %field2801
  %source2803 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2800, i32 %load2798
  %dest2804 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2802, i32 %load2798
  %field2805 = getelementptr { i32, i32 }, { i32, i32 }* %source2803, i32 0, i32 0
  %source_output2806 = load i32, i32* %field2805
  %field2807 = getelementptr { i32, i32 }, { i32, i32 }* %dest2804, i32 0, i32 0
  %field2808 = getelementptr { i32, i32 }, { i32, i32 }* %source2803, i32 0, i32 1
  %source_nextstate2809 = load i32, i32* %field2808
  %field2810 = getelementptr { i32, i32 }, { i32, i32 }* %dest2804, i32 0, i32 1
  %rand2811 = call i32 (...) @rand()
  %randint2812 = urem i32 %rand2811, 32767
  %sitofp2813 = sitofp i32 %randint2812 to double
  %randfloat2814 = fdiv double %sitofp2813, 3.276700e+04
  %randcomp2815 = fcmp olt double %randfloat2814, 2.000000e-01
  br i1 %randcomp2815, label %then2817, label %else2824

merge2816:                                        ; preds = %else2824, %then2817
  %rand2825 = call i32 (...) @rand()
  %randint2826 = urem i32 %rand2825, 32767
  %sitofp2827 = sitofp i32 %randint2826 to double
  %randfloat2828 = fdiv double %sitofp2827, 3.276700e+04
  %randcomp2829 = fcmp olt double %randfloat2828, 2.000000e-01
  br i1 %randcomp2829, label %then2831, label %else2838

then2817:                                         ; preds = %copyloop2797
  %rand2818 = call i32 (...) @rand()
  %randint2819 = urem i32 %rand2818, 32767
  %sitofp2820 = sitofp i32 %randint2819 to double
  %randfloat2821 = fdiv double %sitofp2820, 3.276700e+04
  %frandmove2822 = fmul double %randfloat2821, %sitofp2791
  %randmove2823 = fptoui double %frandmove2822 to i32
  store i32 %randmove2823, i32* %field2807
  br label %merge2816

else2824:                                         ; preds = %copyloop2797
  store i32 %source_output2806, i32* %field2807
  br label %merge2816

merge2830:                                        ; preds = %else2838, %then2831
  %inc2839 = add i32 %load2798, 1
  store i32 %inc2839, i32* %transi2795
  br label %copycond2796

then2831:                                         ; preds = %merge2816
  %rand2832 = call i32 (...) @rand()
  %randint2833 = urem i32 %rand2832, 32767
  %sitofp2834 = sitofp i32 %randint2833 to double
  %randfloat2835 = fdiv double %sitofp2834, 3.276700e+04
  %frandstate2836 = fmul double %randfloat2835, %sitofp2792
  %randstate2837 = fptoui double %frandstate2836 to i32
  store i32 %randstate2837, i32* %field2810
  br label %merge2830

else2838:                                         ; preds = %merge2816
  store i32 %source_nextstate2809, i32* %field2810
  br label %merge2830

merge2842:                                        ; preds = %copycond2796
  %i2843 = load i32, i32* %i1564
  %tmp2844 = mul i32 2, %i2843
  %tmp2845 = add i32 6, %tmp2844
  %tmp2846 = add i32 %tmp2845, 1
  %players22847 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen2848 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players22847, i32 0, i32 0
  %arrlen2849 = load i32, i32* %getlen2848
  %sub2850 = sub i32 %arrlen2849, 1
  %error2851 = icmp sgt i32 %tmp2846, %sub2850
  br i1 %error2851, label %error2853, label %merge2852

merge2852:                                        ; preds = %merge2842, %error2853
  %addr2855 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2856 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2855, i32 0, i32 1
  %conaddr2857 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2856
  %access2858 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2857, i32 %tmp2846
  %players22859 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2858
  %field2860 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players22859, i32 0, i32 0
  %mutate2861 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2860
  %field2862 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2861, i32 0, i32 0
  %nplayers2863 = load i32, i32* %field2862
  %field2864 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2861, i32 0, i32 1
  %nmoves2865 = load i32, i32* %field2864
  %field2866 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2861, i32 0, i32 2
  %nstates2867 = load i32, i32* %field2866
  %sitofp2868 = sitofp i32 %nmoves2865 to double
  %sitofp2869 = sitofp i32 %nplayers2863 to double
  %exp2870 = call double (double, double, ...) @pow(double %sitofp2868, double %sitofp2869)
  %size2871 = fptoui double %exp2870 to i32
  %size2872 = mul i32 %size2871, %nstates2867
  %sitofp2873 = sitofp i32 %size2872 to double
  %sitofp2874 = sitofp i32 %nmoves2865 to double
  %sitofp2875 = sitofp i32 %nstates2867 to double
  %fcopy_size2876 = fmul double %sitofp2873, 1.000000e+00
  %copy_size2877 = fptoui double %fcopy_size2876 to i32
  %transi2878 = alloca i32
  store i32 0, i32* %transi2878
  br label %copycond2879

error2853:                                        ; preds = %merge2842
  %printerror2854 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.66, i32 0, i32 0), i32 %tmp2846, i32 %sub2850)
  br label %merge2852

copycond2879:                                     ; preds = %merge2913, %merge2852
  %transi2923 = load i32, i32* %transi2878
  %statecomp2924 = icmp slt i32 %transi2923, %copy_size2877
  br i1 %statecomp2924, label %copyloop2880, label %merge2925

copyloop2880:                                     ; preds = %copycond2879
  %load2881 = load i32, i32* %transi2878
  %field2882 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2861, i32 0, i32 3
  %sourceaddr2883 = load { i32, i32 }*, { i32, i32 }** %field2882
  %field2884 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2861, i32 0, i32 3
  %destaddr2885 = load { i32, i32 }*, { i32, i32 }** %field2884
  %source2886 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2883, i32 %load2881
  %dest2887 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2885, i32 %load2881
  %field2888 = getelementptr { i32, i32 }, { i32, i32 }* %source2886, i32 0, i32 0
  %source_output2889 = load i32, i32* %field2888
  %field2890 = getelementptr { i32, i32 }, { i32, i32 }* %dest2887, i32 0, i32 0
  %field2891 = getelementptr { i32, i32 }, { i32, i32 }* %source2886, i32 0, i32 1
  %source_nextstate2892 = load i32, i32* %field2891
  %field2893 = getelementptr { i32, i32 }, { i32, i32 }* %dest2887, i32 0, i32 1
  %rand2894 = call i32 (...) @rand()
  %randint2895 = urem i32 %rand2894, 32767
  %sitofp2896 = sitofp i32 %randint2895 to double
  %randfloat2897 = fdiv double %sitofp2896, 3.276700e+04
  %randcomp2898 = fcmp olt double %randfloat2897, 2.000000e-01
  br i1 %randcomp2898, label %then2900, label %else2907

merge2899:                                        ; preds = %else2907, %then2900
  %rand2908 = call i32 (...) @rand()
  %randint2909 = urem i32 %rand2908, 32767
  %sitofp2910 = sitofp i32 %randint2909 to double
  %randfloat2911 = fdiv double %sitofp2910, 3.276700e+04
  %randcomp2912 = fcmp olt double %randfloat2911, 2.000000e-01
  br i1 %randcomp2912, label %then2914, label %else2921

then2900:                                         ; preds = %copyloop2880
  %rand2901 = call i32 (...) @rand()
  %randint2902 = urem i32 %rand2901, 32767
  %sitofp2903 = sitofp i32 %randint2902 to double
  %randfloat2904 = fdiv double %sitofp2903, 3.276700e+04
  %frandmove2905 = fmul double %randfloat2904, %sitofp2874
  %randmove2906 = fptoui double %frandmove2905 to i32
  store i32 %randmove2906, i32* %field2890
  br label %merge2899

else2907:                                         ; preds = %copyloop2880
  store i32 %source_output2889, i32* %field2890
  br label %merge2899

merge2913:                                        ; preds = %else2921, %then2914
  %inc2922 = add i32 %load2881, 1
  store i32 %inc2922, i32* %transi2878
  br label %copycond2879

then2914:                                         ; preds = %merge2899
  %rand2915 = call i32 (...) @rand()
  %randint2916 = urem i32 %rand2915, 32767
  %sitofp2917 = sitofp i32 %randint2916 to double
  %randfloat2918 = fdiv double %sitofp2917, 3.276700e+04
  %frandstate2919 = fmul double %randfloat2918, %sitofp2875
  %randstate2920 = fptoui double %frandstate2919 to i32
  store i32 %randstate2920, i32* %field2893
  br label %merge2913

else2921:                                         ; preds = %merge2899
  store i32 %source_nextstate2892, i32* %field2893
  br label %merge2913

merge2925:                                        ; preds = %copycond2879
  br label %merge2926

merge2926:                                        ; preds = %merge2925
  %i2927 = load i32, i32* %i1565
  %iplusone2928 = add i32 %i2927, 1
  store i32 %iplusone2928, i32* %i1565
  %loadi2929 = load i32, i32* %i1565
  %addr2930 = load { i32, i32* }*, { i32, i32* }** %eptr1556
  %getcon2931 = getelementptr { i32, i32* }, { i32, i32* }* %addr2930, i32 0, i32 1
  %conaddr2932 = load i32*, i32** %getcon2931
  %access2933 = getelementptr i32, i32* %conaddr2932, i32 %loadi2929
  %current2934 = load i32, i32* %access2933
  store i32 %current2934, i32* %i1564
  br label %for1566

merge2937:                                        ; preds = %for1566
  %strlen = call i32 (i8*, ...) @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i32 0, i32 0))
  %payoffs12938 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getlen2939 = getelementptr { i32, double* }, { i32, double* }* %payoffs12938, i32 0, i32 0
  %arrlen2940 = load i32, i32* %getlen2939
  %sub2941 = sub i32 %arrlen2940, 1
  %error2942 = icmp sgt i32 0, %sub2941
  br i1 %error2942, label %error2944, label %merge2943

merge2943:                                        ; preds = %merge2937, %error2944
  %addr2946 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon2947 = getelementptr { i32, double* }, { i32, double* }* %addr2946, i32 0, i32 1
  %conaddr2948 = load double*, double** %getcon2947
  %access2949 = getelementptr double, double* %conaddr2948, i32 0
  %payoffs12950 = load double, double* %access2949
  %strofnum = alloca i8, i32 32
  %sprintf = call i32 (i8*, i8*, ...) @sprintf(i8* %strofnum, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmtf.30, i32 0, i32 0), double %payoffs12950)
  %strlen2951 = call i32 (i8*, ...) @strlen(i8* %strofnum)
  %size2952 = add i32 %strlen, %strlen2951
  %result2953 = alloca i8, i32 %size2952
  %strcpy = call i8* (i8*, i8*, ...) @strcpy(i8* %result2953, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i32 0, i32 0))
  %strcat = call i8* (i8*, i8*, ...) @strcat(i8* %result2953, i8* %strofnum)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln.28, i32 0, i32 0), i8* %result2953)
  %strlen2954 = call i32 (i8*, ...) @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.68, i32 0, i32 0))
  %payoffs12955 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getlen2956 = getelementptr { i32, double* }, { i32, double* }* %payoffs12955, i32 0, i32 0
  %arrlen2957 = load i32, i32* %getlen2956
  %sub2958 = sub i32 %arrlen2957, 1
  %error2959 = icmp sgt i32 9, %sub2958
  br i1 %error2959, label %error2961, label %merge2960

error2944:                                        ; preds = %merge2937
  %printerror2945 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.67, i32 0, i32 0), i32 0, i32 %sub2941)
  br label %merge2943

merge2960:                                        ; preds = %merge2943, %error2961
  %addr2963 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon2964 = getelementptr { i32, double* }, { i32, double* }* %addr2963, i32 0, i32 1
  %conaddr2965 = load double*, double** %getcon2964
  %access2966 = getelementptr double, double* %conaddr2965, i32 9
  %payoffs12967 = load double, double* %access2966
  %strofnum2968 = alloca i8, i32 32
  %sprintf2969 = call i32 (i8*, i8*, ...) @sprintf(i8* %strofnum2968, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmtf.30, i32 0, i32 0), double %payoffs12967)
  %strlen2970 = call i32 (i8*, ...) @strlen(i8* %strofnum2968)
  %size2971 = add i32 %strlen2954, %strlen2970
  %result2972 = alloca i8, i32 %size2971
  %strcpy2973 = call i8* (i8*, i8*, ...) @strcpy(i8* %result2972, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.68, i32 0, i32 0))
  %strcat2974 = call i8* (i8*, i8*, ...) @strcat(i8* %result2972, i8* %strofnum2968)
  %printf2975 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln.28, i32 0, i32 0), i8* %result2972)
  %newarray2976 = alloca { i32, i32* }
  %contents2977 = alloca i32, i32 10
  %ptrdest2978 = getelementptr { i32, i32* }, { i32, i32* }* %newarray2976, i32 0, i32 0
  %ptrdest2979 = getelementptr { i32, i32* }, { i32, i32* }* %newarray2976, i32 0, i32 1
  store i32 10, i32* %ptrdest2978
  store i32* %contents2977, i32** %ptrdest2979
  %rangeptr2980 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray2976, { i32, i32* }** %rangeptr2980
  %addr2981 = load { i32, i32* }*, { i32, i32* }** %rangeptr2980
  %getcon2982 = getelementptr { i32, i32* }, { i32, i32* }* %addr2981, i32 0, i32 1
  %conaddr2983 = load i32*, i32** %getcon2982
  %access2984 = getelementptr i32, i32* %conaddr2983, i32 9
  br label %range2985

error2961:                                        ; preds = %merge2943
  %printerror2962 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.69, i32 0, i32 0), i32 9, i32 %sub2958)
  br label %merge2960

range2985:                                        ; preds = %merge2960
  %i2986 = alloca i32
  store i32 0, i32* %i2986
  br label %while2987

while2987:                                        ; preds = %while_loop2988, %range2985
  %lastentry2997 = load i32, i32* %access2984
  %rangecomp2998 = icmp ne i32 %lastentry2997, 9
  br i1 %rangecomp2998, label %while_loop2988, label %merge2999

while_loop2988:                                   ; preds = %while2987
  %loadi2989 = load i32, i32* %i2986
  %addr2990 = load { i32, i32* }*, { i32, i32* }** %rangeptr2980
  %getcon2991 = getelementptr { i32, i32* }, { i32, i32* }* %addr2990, i32 0, i32 1
  %conaddr2992 = load i32*, i32** %getcon2991
  %access2993 = getelementptr i32, i32* %conaddr2992, i32 %loadi2989
  %calcval2994 = add i32 0, %loadi2989
  store i32 %calcval2994, i32* %access2993
  %i2995 = load i32, i32* %i2986
  %iplusone2996 = add i32 %i2995, 1
  store i32 %iplusone2996, i32* %i2986
  br label %while2987

merge2999:                                        ; preds = %while2987
  %eptr3000 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray2976, { i32, i32* }** %eptr3000
  %getlen3001 = getelementptr { i32, i32* }, { i32, i32* }* %newarray2976, i32 0, i32 0
  %size3002 = load i32, i32* %getlen3001
  %addr3003 = load { i32, i32* }*, { i32, i32* }** %eptr3000
  %getcon3004 = getelementptr { i32, i32* }, { i32, i32* }* %addr3003, i32 0, i32 1
  %conaddr3005 = load i32*, i32** %getcon3004
  %access3006 = getelementptr i32, i32* %conaddr3005, i32 0
  %current3007 = load i32, i32* %access3006
  %i3008 = alloca i32
  store i32 %current3007, i32* %i3008
  %i3009 = alloca i32
  store i32 0, i32* %i3009
  br label %for3010

for3010:                                          ; preds = %merge3023, %merge2999
  %i3032 = load i32, i32* %i3009
  %forcomp3033 = icmp ne i32 %i3032, %size3002
  br i1 %forcomp3033, label %for_loop3011, label %merge3034

for_loop3011:                                     ; preds = %for3010
  br label %block3012

block3012:                                        ; preds = %for_loop3011
  %i3013 = load i32, i32* %i3008
  %addr3014 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon3015 = getelementptr { i32, double* }, { i32, double* }* %addr3014, i32 0, i32 1
  %conaddr3016 = load double*, double** %getcon3015
  %access3017 = getelementptr double, double* %conaddr3016, i32 %i3013
  store double 0.000000e+00, double* %access3017
  %i3018 = load i32, i32* %i3008
  %addr3019 = load { i32, double* }*, { i32, double* }** @payoffs2
  %getcon3020 = getelementptr { i32, double* }, { i32, double* }* %addr3019, i32 0, i32 1
  %conaddr3021 = load double*, double** %getcon3020
  %access3022 = getelementptr double, double* %conaddr3021, i32 %i3018
  store double 0.000000e+00, double* %access3022
  br label %merge3023

merge3023:                                        ; preds = %block3012
  %i3024 = load i32, i32* %i3009
  %iplusone3025 = add i32 %i3024, 1
  store i32 %iplusone3025, i32* %i3009
  %loadi3026 = load i32, i32* %i3009
  %addr3027 = load { i32, i32* }*, { i32, i32* }** %eptr3000
  %getcon3028 = getelementptr { i32, i32* }, { i32, i32* }* %addr3027, i32 0, i32 1
  %conaddr3029 = load i32*, i32** %getcon3028
  %access3030 = getelementptr i32, i32* %conaddr3029, i32 %loadi3026
  %current3031 = load i32, i32* %access3030
  store i32 %current3031, i32* %i3008
  br label %for3010

merge3034:                                        ; preds = %for3010
  br label %merge3035

merge3035:                                        ; preds = %merge3034
  %i3036 = load i32, i32* %i995
  %iplusone3037 = add i32 %i3036, 1
  store i32 %iplusone3037, i32* %i995
  %loadi3038 = load i32, i32* %i995
  %addr3039 = load { i32, i32* }*, { i32, i32* }** %eptr987
  %getcon3040 = getelementptr { i32, i32* }, { i32, i32* }* %addr3039, i32 0, i32 1
  %conaddr3041 = load i32*, i32** %getcon3040
  %access3042 = getelementptr i32, i32* %conaddr3041, i32 %loadi3038
  %current3043 = load i32, i32* %access3042
  store i32 %current3043, i32* %t
  br label %for996

merge3046:                                        ; preds = %for996
  %players13047 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen3048 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players13047, i32 0, i32 0
  %arrlen3049 = load i32, i32* %getlen3048
  %sub3050 = sub i32 %arrlen3049, 1
  %error3051 = icmp sgt i32 0, %sub3050
  br i1 %error3051, label %error3053, label %merge3052

merge3052:                                        ; preds = %merge3046, %error3053
  %addr3055 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon3056 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr3055, i32 0, i32 1
  %conaddr3057 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon3056
  %access3058 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr3057, i32 0
  %players13059 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access3058
  %field3060 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players13059, i32 0, i32 0
  %fieldzero3061 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field3060
  %strofnum3062 = alloca i8, i32 32
  %field3063 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero3061, i32 0, i32 0
  %nplayers3064 = load i32, i32* %field3063
  %field3065 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero3061, i32 0, i32 1
  %nmoves3066 = load i32, i32* %field3065
  %field3067 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero3061, i32 0, i32 2
  %nstates3068 = load i32, i32* %field3067
  %move_size = mul i32 %nplayers3064, 2
  %moves_size = add i32 %move_size, 15
  %sitofp3069 = sitofp i32 %nmoves3066 to double
  %sitofp3070 = sitofp i32 %nplayers3064 to double
  %exp3071 = call double (double, double, ...) @pow(double %sitofp3069, double %sitofp3070)
  %size3072 = fptoui double %exp3071 to i32
  %temp1 = mul i32 %size3072, %moves_size
  %state_size = add i32 %temp1, 16
  %strat_str_size = mul i32 %state_size, %nstates3068
  %stralloca = alloca i8, i32 %strat_str_size
  %sprintf3073 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr.34, i32 0, i32 0))
  %statei3074 = alloca i32
  %transi3075 = alloca i32
  %movei = alloca i32
  store i32 0, i32* %statei3074
  br label %whileone

error3053:                                        ; preds = %merge3046
  %printerror3054 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.70, i32 0, i32 0), i32 0, i32 %sub3050)
  br label %merge3052

whileone:                                         ; preds = %merge3120, %merge3052
  %load3123 = load i32, i32* %statei3074
  %slt3124 = icmp slt i32 %load3123, %nstates3068
  br i1 %slt3124, label %whileone_loop, label %merge3125

whileone_loop:                                    ; preds = %whileone
  store i32 0, i32* %transi3075
  %load3076 = load i32, i32* %statei3074
  %load3077 = load i32, i32* %transi3075
  %field3078 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero3061, i32 0, i32 3
  %transaddr3079 = load { i32, i32 }*, { i32, i32 }** %field3078
  %state3080 = mul i32 %size3072, %load3076
  %state3081 = add i32 %load3077, %state3080
  %access3082 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr3079, i32 %state3081
  %field3083 = getelementptr { i32, i32 }, { i32, i32 }* %access3082, i32 0, i32 0
  %current_output = load i32, i32* %field3083
  %stralloca3084 = alloca i8, i32 16
  %sprintf3085 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3084, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr.34, i32 0, i32 0))
  %sprintf3086 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3084, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @fmts.33, i32 0, i32 0), i32 %load3076, i32 %current_output)
  %strcat3087 = call i8* (i8*, i8*, ...) @strcat(i8* %stralloca, i8* %stralloca3084)
  br label %whiletwo

whiletwo:                                         ; preds = %merge3106, %whileone_loop
  %load3119 = load i32, i32* %transi3075
  %slt = icmp slt i32 %load3119, %size3072
  br i1 %slt, label %whiletwo_loop, label %merge3120

whiletwo_loop:                                    ; preds = %whiletwo
  %mul = mul i32 %nmoves3066, 2
  %add = add i32 %mul, 15
  %stralloca3088 = alloca i8, i32 %mul
  %sprintf3089 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3088, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr.34, i32 0, i32 0))
  %stralloca3090 = alloca i8, i32 %add
  %sprintf3091 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3090, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr.34, i32 0, i32 0))
  store i32 %nplayers3064, i32* %movei
  br label %whilethree

whilethree:                                       ; preds = %whilethree_loop, %whiletwo_loop
  %load3105 = load i32, i32* %movei
  %sgt = icmp sgt i32 %load3105, 0
  br i1 %sgt, label %whilethree_loop, label %merge3106

whilethree_loop:                                  ; preds = %whilethree
  %load3092 = load i32, i32* %movei
  %load3093 = load i32, i32* %transi3075
  %decmovei = sub i32 %load3092, 1
  %sitofp3094 = sitofp i32 %nmoves3066 to double
  %sitofp3095 = sitofp i32 %load3092 to double
  %pow3096 = call double (double, double, ...) @pow(double %sitofp3094, double %sitofp3095)
  %sitofp3097 = sitofp i32 %nmoves3066 to double
  %sitofp3098 = sitofp i32 %decmovei to double
  %pow3099 = call double (double, double, ...) @pow(double %sitofp3097, double %sitofp3098)
  %fptoui = fptoui double %pow3096 to i32
  %fptoui3100 = fptoui double %pow3099 to i32
  %urem = urem i32 %load3093, %fptoui
  %div = sdiv i32 %urem, %fptoui3100
  %stralloca3101 = alloca i8, i32 2
  %sprintf3102 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtm.31, i32 0, i32 0), i32 %div)
  %strcat3103 = call i8* (i8*, i8*, ...) @strcat(i8* %stralloca3088, i8* %stralloca3101)
  %sub3104 = sub i32 %load3092, 1
  store i32 %sub3104, i32* %movei
  br label %whilethree

merge3106:                                        ; preds = %whilethree
  %load3107 = load i32, i32* %statei3074
  %load3108 = load i32, i32* %transi3075
  %field3109 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero3061, i32 0, i32 3
  %transaddr3110 = load { i32, i32 }*, { i32, i32 }** %field3109
  %state3111 = mul i32 %size3072, %load3107
  %state3112 = add i32 %load3108, %state3111
  %access3113 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr3110, i32 %state3112
  %field3114 = getelementptr { i32, i32 }, { i32, i32 }* %access3113, i32 0, i32 1
  %current_nextstate = load i32, i32* %field3114
  %sprintf3115 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3090, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @fmtt.32, i32 0, i32 0), i8* %stralloca3088, i32 %current_nextstate)
  %strcat3116 = call i8* (i8*, i8*, ...) @strcat(i8* %stralloca, i8* %stralloca3090)
  %load3117 = load i32, i32* %transi3075
  %add3118 = add i32 %load3117, 1
  store i32 %add3118, i32* %transi3075
  br label %whiletwo

merge3120:                                        ; preds = %whiletwo
  %load3121 = load i32, i32* %statei3074
  %add3122 = add i32 %load3121, 1
  store i32 %add3122, i32* %statei3074
  br label %whileone

merge3125:                                        ; preds = %whileone
  %printf3126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln.28, i32 0, i32 0), i8* %stralloca)
  ret i32 0

merge3127:                                        ; No predecessors!
  ret i32 0
}
