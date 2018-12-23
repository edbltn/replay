; ModuleID = 'Replay'

@payoffs2 = global { i32, double* }* null
@payoffs1 = global { i32, double* }* null
@players2 = global { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* null
@players1 = global { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* null
@rock = global { i32, i32, i32, { i32, i32 }* }* null
@rps = global { i32, i32, double* }* null
@R = global i32 0
@P = global i32 0
@S = global i32 0
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
  ret i32 %tmp117

merge118:                                         ; No predecessors!
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
  store i32 0, i32* @R
  store i32 1, i32* @P
  store i32 2, i32* @S
  %newgame = alloca { i32, i32, double* }
  %exp = call double (double, double, ...) @pow(double 3.000000e+00, double 2.000000e+00)
  %fsize = fmul double 2.000000e+00, %exp
  %size = fptoui double %fsize to i32
  %outcomes = alloca double, i32 %size
  %nplayersdest = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nmovesdest = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %ptrdest = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  store i32 2, i32* %nplayersdest
  store i32 3, i32* %nmovesdest
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
  %wildcomp70 = icmp slt i32 %player69, 3
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
  %wildcomp = icmp slt i32 %player, 3
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
  %R = load i32, i32* @R
  store i32 %R, i32* %access75
  %addr76 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon77 = getelementptr { i32, i32* }, { i32, i32* }* %addr76, i32 0, i32 1
  %conaddr78 = load i32*, i32** %getcon77
  %access79 = getelementptr i32, i32* %conaddr78, i32 1
  %R80 = load i32, i32* @R
  store i32 %R80, i32* %access79
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
  store double 0.000000e+00, double* %access111
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
  store double 0.000000e+00, double* %access142
  %addr143 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon144 = getelementptr { i32, i32* }, { i32, i32* }* %addr143, i32 0, i32 1
  %conaddr145 = load i32*, i32** %getcon144
  %access146 = getelementptr i32, i32* %conaddr145, i32 0
  %R147 = load i32, i32* @R
  store i32 %R147, i32* %access146
  %addr148 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon149 = getelementptr { i32, i32* }, { i32, i32* }* %addr148, i32 0, i32 1
  %conaddr150 = load i32*, i32** %getcon149
  %access151 = getelementptr i32, i32* %conaddr150, i32 1
  %P = load i32, i32* @P
  store i32 %P, i32* %access151
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
  store double -1.000000e+00, double* %access182
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
  store double 1.000000e+00, double* %access213
  %addr214 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon215 = getelementptr { i32, i32* }, { i32, i32* }* %addr214, i32 0, i32 1
  %conaddr216 = load i32*, i32** %getcon215
  %access217 = getelementptr i32, i32* %conaddr216, i32 0
  %R218 = load i32, i32* @R
  store i32 %R218, i32* %access217
  %addr219 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon220 = getelementptr { i32, i32* }, { i32, i32* }* %addr219, i32 0, i32 1
  %conaddr221 = load i32*, i32** %getcon220
  %access222 = getelementptr i32, i32* %conaddr221, i32 1
  %S = load i32, i32* @S
  store i32 %S, i32* %access222
  %field223 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers224 = load i32, i32* %field223
  %field225 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves226 = load i32, i32* %field225
  %field227 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr228 = load double*, double** %field227
  %sitofp229 = sitofp i32 %nmoves226 to double
  %sitofp230 = sitofp i32 %nplayers224 to double
  %addr231 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon232 = getelementptr { i32, i32* }, { i32, i32* }* %addr231, i32 0, i32 1
  %conaddr233 = load i32*, i32** %getcon232
  %access234 = getelementptr i32, i32* %conaddr233, i32 0
  %move235 = load i32, i32* %access234
  %sitofp236 = sitofp i32 %move235 to double
  %temp237 = call double (double, double, ...) @pow(double %sitofp229, double 0.000000e+00)
  %temp2238 = fmul double %temp237, %sitofp236
  %current239 = fptoui double %temp2238 to i32
  %addr240 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon241 = getelementptr { i32, i32* }, { i32, i32* }* %addr240, i32 0, i32 1
  %conaddr242 = load i32*, i32** %getcon241
  %access243 = getelementptr i32, i32* %conaddr242, i32 1
  %move244 = load i32, i32* %access243
  %sitofp245 = sitofp i32 %move244 to double
  %temp246 = call double (double, double, ...) @pow(double %sitofp229, double 1.000000e+00)
  %temp2247 = fmul double %temp246, %sitofp245
  %current248 = fptoui double %temp2247 to i32
  %result249 = add i32 %current248, 0
  %result250 = add i32 %current239, %result249
  %temp3251 = mul i32 %result250, %nplayers224
  %playerind252 = add i32 0, %temp3251
  %access253 = getelementptr double, double* %payaddr228, i32 %playerind252
  store double 1.000000e+00, double* %access253
  %field254 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers255 = load i32, i32* %field254
  %field256 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves257 = load i32, i32* %field256
  %field258 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr259 = load double*, double** %field258
  %sitofp260 = sitofp i32 %nmoves257 to double
  %sitofp261 = sitofp i32 %nplayers255 to double
  %addr262 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon263 = getelementptr { i32, i32* }, { i32, i32* }* %addr262, i32 0, i32 1
  %conaddr264 = load i32*, i32** %getcon263
  %access265 = getelementptr i32, i32* %conaddr264, i32 0
  %move266 = load i32, i32* %access265
  %sitofp267 = sitofp i32 %move266 to double
  %temp268 = call double (double, double, ...) @pow(double %sitofp260, double 0.000000e+00)
  %temp2269 = fmul double %temp268, %sitofp267
  %current270 = fptoui double %temp2269 to i32
  %addr271 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon272 = getelementptr { i32, i32* }, { i32, i32* }* %addr271, i32 0, i32 1
  %conaddr273 = load i32*, i32** %getcon272
  %access274 = getelementptr i32, i32* %conaddr273, i32 1
  %move275 = load i32, i32* %access274
  %sitofp276 = sitofp i32 %move275 to double
  %temp277 = call double (double, double, ...) @pow(double %sitofp260, double 1.000000e+00)
  %temp2278 = fmul double %temp277, %sitofp276
  %current279 = fptoui double %temp2278 to i32
  %result280 = add i32 %current279, 0
  %result281 = add i32 %current270, %result280
  %temp3282 = mul i32 %result281, %nplayers255
  %playerind283 = add i32 1, %temp3282
  %access284 = getelementptr double, double* %payaddr259, i32 %playerind283
  store double -1.000000e+00, double* %access284
  %addr285 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon286 = getelementptr { i32, i32* }, { i32, i32* }* %addr285, i32 0, i32 1
  %conaddr287 = load i32*, i32** %getcon286
  %access288 = getelementptr i32, i32* %conaddr287, i32 0
  %P289 = load i32, i32* @P
  store i32 %P289, i32* %access288
  %addr290 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon291 = getelementptr { i32, i32* }, { i32, i32* }* %addr290, i32 0, i32 1
  %conaddr292 = load i32*, i32** %getcon291
  %access293 = getelementptr i32, i32* %conaddr292, i32 1
  %R294 = load i32, i32* @R
  store i32 %R294, i32* %access293
  %field295 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers296 = load i32, i32* %field295
  %field297 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves298 = load i32, i32* %field297
  %field299 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr300 = load double*, double** %field299
  %sitofp301 = sitofp i32 %nmoves298 to double
  %sitofp302 = sitofp i32 %nplayers296 to double
  %addr303 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon304 = getelementptr { i32, i32* }, { i32, i32* }* %addr303, i32 0, i32 1
  %conaddr305 = load i32*, i32** %getcon304
  %access306 = getelementptr i32, i32* %conaddr305, i32 0
  %move307 = load i32, i32* %access306
  %sitofp308 = sitofp i32 %move307 to double
  %temp309 = call double (double, double, ...) @pow(double %sitofp301, double 0.000000e+00)
  %temp2310 = fmul double %temp309, %sitofp308
  %current311 = fptoui double %temp2310 to i32
  %addr312 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon313 = getelementptr { i32, i32* }, { i32, i32* }* %addr312, i32 0, i32 1
  %conaddr314 = load i32*, i32** %getcon313
  %access315 = getelementptr i32, i32* %conaddr314, i32 1
  %move316 = load i32, i32* %access315
  %sitofp317 = sitofp i32 %move316 to double
  %temp318 = call double (double, double, ...) @pow(double %sitofp301, double 1.000000e+00)
  %temp2319 = fmul double %temp318, %sitofp317
  %current320 = fptoui double %temp2319 to i32
  %result321 = add i32 %current320, 0
  %result322 = add i32 %current311, %result321
  %temp3323 = mul i32 %result322, %nplayers296
  %playerind324 = add i32 0, %temp3323
  %access325 = getelementptr double, double* %payaddr300, i32 %playerind324
  store double 1.000000e+00, double* %access325
  %field326 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers327 = load i32, i32* %field326
  %field328 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves329 = load i32, i32* %field328
  %field330 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr331 = load double*, double** %field330
  %sitofp332 = sitofp i32 %nmoves329 to double
  %sitofp333 = sitofp i32 %nplayers327 to double
  %addr334 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon335 = getelementptr { i32, i32* }, { i32, i32* }* %addr334, i32 0, i32 1
  %conaddr336 = load i32*, i32** %getcon335
  %access337 = getelementptr i32, i32* %conaddr336, i32 0
  %move338 = load i32, i32* %access337
  %sitofp339 = sitofp i32 %move338 to double
  %temp340 = call double (double, double, ...) @pow(double %sitofp332, double 0.000000e+00)
  %temp2341 = fmul double %temp340, %sitofp339
  %current342 = fptoui double %temp2341 to i32
  %addr343 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon344 = getelementptr { i32, i32* }, { i32, i32* }* %addr343, i32 0, i32 1
  %conaddr345 = load i32*, i32** %getcon344
  %access346 = getelementptr i32, i32* %conaddr345, i32 1
  %move347 = load i32, i32* %access346
  %sitofp348 = sitofp i32 %move347 to double
  %temp349 = call double (double, double, ...) @pow(double %sitofp332, double 1.000000e+00)
  %temp2350 = fmul double %temp349, %sitofp348
  %current351 = fptoui double %temp2350 to i32
  %result352 = add i32 %current351, 0
  %result353 = add i32 %current342, %result352
  %temp3354 = mul i32 %result353, %nplayers327
  %playerind355 = add i32 1, %temp3354
  %access356 = getelementptr double, double* %payaddr331, i32 %playerind355
  store double -1.000000e+00, double* %access356
  %addr357 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon358 = getelementptr { i32, i32* }, { i32, i32* }* %addr357, i32 0, i32 1
  %conaddr359 = load i32*, i32** %getcon358
  %access360 = getelementptr i32, i32* %conaddr359, i32 0
  %P361 = load i32, i32* @P
  store i32 %P361, i32* %access360
  %addr362 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon363 = getelementptr { i32, i32* }, { i32, i32* }* %addr362, i32 0, i32 1
  %conaddr364 = load i32*, i32** %getcon363
  %access365 = getelementptr i32, i32* %conaddr364, i32 1
  %P366 = load i32, i32* @P
  store i32 %P366, i32* %access365
  %field367 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers368 = load i32, i32* %field367
  %field369 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves370 = load i32, i32* %field369
  %field371 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr372 = load double*, double** %field371
  %sitofp373 = sitofp i32 %nmoves370 to double
  %sitofp374 = sitofp i32 %nplayers368 to double
  %addr375 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon376 = getelementptr { i32, i32* }, { i32, i32* }* %addr375, i32 0, i32 1
  %conaddr377 = load i32*, i32** %getcon376
  %access378 = getelementptr i32, i32* %conaddr377, i32 0
  %move379 = load i32, i32* %access378
  %sitofp380 = sitofp i32 %move379 to double
  %temp381 = call double (double, double, ...) @pow(double %sitofp373, double 0.000000e+00)
  %temp2382 = fmul double %temp381, %sitofp380
  %current383 = fptoui double %temp2382 to i32
  %addr384 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon385 = getelementptr { i32, i32* }, { i32, i32* }* %addr384, i32 0, i32 1
  %conaddr386 = load i32*, i32** %getcon385
  %access387 = getelementptr i32, i32* %conaddr386, i32 1
  %move388 = load i32, i32* %access387
  %sitofp389 = sitofp i32 %move388 to double
  %temp390 = call double (double, double, ...) @pow(double %sitofp373, double 1.000000e+00)
  %temp2391 = fmul double %temp390, %sitofp389
  %current392 = fptoui double %temp2391 to i32
  %result393 = add i32 %current392, 0
  %result394 = add i32 %current383, %result393
  %temp3395 = mul i32 %result394, %nplayers368
  %playerind396 = add i32 0, %temp3395
  %access397 = getelementptr double, double* %payaddr372, i32 %playerind396
  store double 0.000000e+00, double* %access397
  %field398 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers399 = load i32, i32* %field398
  %field400 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves401 = load i32, i32* %field400
  %field402 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr403 = load double*, double** %field402
  %sitofp404 = sitofp i32 %nmoves401 to double
  %sitofp405 = sitofp i32 %nplayers399 to double
  %addr406 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon407 = getelementptr { i32, i32* }, { i32, i32* }* %addr406, i32 0, i32 1
  %conaddr408 = load i32*, i32** %getcon407
  %access409 = getelementptr i32, i32* %conaddr408, i32 0
  %move410 = load i32, i32* %access409
  %sitofp411 = sitofp i32 %move410 to double
  %temp412 = call double (double, double, ...) @pow(double %sitofp404, double 0.000000e+00)
  %temp2413 = fmul double %temp412, %sitofp411
  %current414 = fptoui double %temp2413 to i32
  %addr415 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon416 = getelementptr { i32, i32* }, { i32, i32* }* %addr415, i32 0, i32 1
  %conaddr417 = load i32*, i32** %getcon416
  %access418 = getelementptr i32, i32* %conaddr417, i32 1
  %move419 = load i32, i32* %access418
  %sitofp420 = sitofp i32 %move419 to double
  %temp421 = call double (double, double, ...) @pow(double %sitofp404, double 1.000000e+00)
  %temp2422 = fmul double %temp421, %sitofp420
  %current423 = fptoui double %temp2422 to i32
  %result424 = add i32 %current423, 0
  %result425 = add i32 %current414, %result424
  %temp3426 = mul i32 %result425, %nplayers399
  %playerind427 = add i32 1, %temp3426
  %access428 = getelementptr double, double* %payaddr403, i32 %playerind427
  store double 0.000000e+00, double* %access428
  %addr429 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon430 = getelementptr { i32, i32* }, { i32, i32* }* %addr429, i32 0, i32 1
  %conaddr431 = load i32*, i32** %getcon430
  %access432 = getelementptr i32, i32* %conaddr431, i32 0
  %P433 = load i32, i32* @P
  store i32 %P433, i32* %access432
  %addr434 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon435 = getelementptr { i32, i32* }, { i32, i32* }* %addr434, i32 0, i32 1
  %conaddr436 = load i32*, i32** %getcon435
  %access437 = getelementptr i32, i32* %conaddr436, i32 1
  %S438 = load i32, i32* @S
  store i32 %S438, i32* %access437
  %field439 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers440 = load i32, i32* %field439
  %field441 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves442 = load i32, i32* %field441
  %field443 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr444 = load double*, double** %field443
  %sitofp445 = sitofp i32 %nmoves442 to double
  %sitofp446 = sitofp i32 %nplayers440 to double
  %addr447 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon448 = getelementptr { i32, i32* }, { i32, i32* }* %addr447, i32 0, i32 1
  %conaddr449 = load i32*, i32** %getcon448
  %access450 = getelementptr i32, i32* %conaddr449, i32 0
  %move451 = load i32, i32* %access450
  %sitofp452 = sitofp i32 %move451 to double
  %temp453 = call double (double, double, ...) @pow(double %sitofp445, double 0.000000e+00)
  %temp2454 = fmul double %temp453, %sitofp452
  %current455 = fptoui double %temp2454 to i32
  %addr456 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon457 = getelementptr { i32, i32* }, { i32, i32* }* %addr456, i32 0, i32 1
  %conaddr458 = load i32*, i32** %getcon457
  %access459 = getelementptr i32, i32* %conaddr458, i32 1
  %move460 = load i32, i32* %access459
  %sitofp461 = sitofp i32 %move460 to double
  %temp462 = call double (double, double, ...) @pow(double %sitofp445, double 1.000000e+00)
  %temp2463 = fmul double %temp462, %sitofp461
  %current464 = fptoui double %temp2463 to i32
  %result465 = add i32 %current464, 0
  %result466 = add i32 %current455, %result465
  %temp3467 = mul i32 %result466, %nplayers440
  %playerind468 = add i32 0, %temp3467
  %access469 = getelementptr double, double* %payaddr444, i32 %playerind468
  store double -1.000000e+00, double* %access469
  %field470 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers471 = load i32, i32* %field470
  %field472 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves473 = load i32, i32* %field472
  %field474 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr475 = load double*, double** %field474
  %sitofp476 = sitofp i32 %nmoves473 to double
  %sitofp477 = sitofp i32 %nplayers471 to double
  %addr478 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon479 = getelementptr { i32, i32* }, { i32, i32* }* %addr478, i32 0, i32 1
  %conaddr480 = load i32*, i32** %getcon479
  %access481 = getelementptr i32, i32* %conaddr480, i32 0
  %move482 = load i32, i32* %access481
  %sitofp483 = sitofp i32 %move482 to double
  %temp484 = call double (double, double, ...) @pow(double %sitofp476, double 0.000000e+00)
  %temp2485 = fmul double %temp484, %sitofp483
  %current486 = fptoui double %temp2485 to i32
  %addr487 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon488 = getelementptr { i32, i32* }, { i32, i32* }* %addr487, i32 0, i32 1
  %conaddr489 = load i32*, i32** %getcon488
  %access490 = getelementptr i32, i32* %conaddr489, i32 1
  %move491 = load i32, i32* %access490
  %sitofp492 = sitofp i32 %move491 to double
  %temp493 = call double (double, double, ...) @pow(double %sitofp476, double 1.000000e+00)
  %temp2494 = fmul double %temp493, %sitofp492
  %current495 = fptoui double %temp2494 to i32
  %result496 = add i32 %current495, 0
  %result497 = add i32 %current486, %result496
  %temp3498 = mul i32 %result497, %nplayers471
  %playerind499 = add i32 1, %temp3498
  %access500 = getelementptr double, double* %payaddr475, i32 %playerind499
  store double 1.000000e+00, double* %access500
  %addr501 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon502 = getelementptr { i32, i32* }, { i32, i32* }* %addr501, i32 0, i32 1
  %conaddr503 = load i32*, i32** %getcon502
  %access504 = getelementptr i32, i32* %conaddr503, i32 0
  %S505 = load i32, i32* @S
  store i32 %S505, i32* %access504
  %addr506 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon507 = getelementptr { i32, i32* }, { i32, i32* }* %addr506, i32 0, i32 1
  %conaddr508 = load i32*, i32** %getcon507
  %access509 = getelementptr i32, i32* %conaddr508, i32 1
  %R510 = load i32, i32* @R
  store i32 %R510, i32* %access509
  %field511 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers512 = load i32, i32* %field511
  %field513 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves514 = load i32, i32* %field513
  %field515 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr516 = load double*, double** %field515
  %sitofp517 = sitofp i32 %nmoves514 to double
  %sitofp518 = sitofp i32 %nplayers512 to double
  %addr519 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon520 = getelementptr { i32, i32* }, { i32, i32* }* %addr519, i32 0, i32 1
  %conaddr521 = load i32*, i32** %getcon520
  %access522 = getelementptr i32, i32* %conaddr521, i32 0
  %move523 = load i32, i32* %access522
  %sitofp524 = sitofp i32 %move523 to double
  %temp525 = call double (double, double, ...) @pow(double %sitofp517, double 0.000000e+00)
  %temp2526 = fmul double %temp525, %sitofp524
  %current527 = fptoui double %temp2526 to i32
  %addr528 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon529 = getelementptr { i32, i32* }, { i32, i32* }* %addr528, i32 0, i32 1
  %conaddr530 = load i32*, i32** %getcon529
  %access531 = getelementptr i32, i32* %conaddr530, i32 1
  %move532 = load i32, i32* %access531
  %sitofp533 = sitofp i32 %move532 to double
  %temp534 = call double (double, double, ...) @pow(double %sitofp517, double 1.000000e+00)
  %temp2535 = fmul double %temp534, %sitofp533
  %current536 = fptoui double %temp2535 to i32
  %result537 = add i32 %current536, 0
  %result538 = add i32 %current527, %result537
  %temp3539 = mul i32 %result538, %nplayers512
  %playerind540 = add i32 0, %temp3539
  %access541 = getelementptr double, double* %payaddr516, i32 %playerind540
  store double -1.000000e+00, double* %access541
  %field542 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers543 = load i32, i32* %field542
  %field544 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves545 = load i32, i32* %field544
  %field546 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr547 = load double*, double** %field546
  %sitofp548 = sitofp i32 %nmoves545 to double
  %sitofp549 = sitofp i32 %nplayers543 to double
  %addr550 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon551 = getelementptr { i32, i32* }, { i32, i32* }* %addr550, i32 0, i32 1
  %conaddr552 = load i32*, i32** %getcon551
  %access553 = getelementptr i32, i32* %conaddr552, i32 0
  %move554 = load i32, i32* %access553
  %sitofp555 = sitofp i32 %move554 to double
  %temp556 = call double (double, double, ...) @pow(double %sitofp548, double 0.000000e+00)
  %temp2557 = fmul double %temp556, %sitofp555
  %current558 = fptoui double %temp2557 to i32
  %addr559 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon560 = getelementptr { i32, i32* }, { i32, i32* }* %addr559, i32 0, i32 1
  %conaddr561 = load i32*, i32** %getcon560
  %access562 = getelementptr i32, i32* %conaddr561, i32 1
  %move563 = load i32, i32* %access562
  %sitofp564 = sitofp i32 %move563 to double
  %temp565 = call double (double, double, ...) @pow(double %sitofp548, double 1.000000e+00)
  %temp2566 = fmul double %temp565, %sitofp564
  %current567 = fptoui double %temp2566 to i32
  %result568 = add i32 %current567, 0
  %result569 = add i32 %current558, %result568
  %temp3570 = mul i32 %result569, %nplayers543
  %playerind571 = add i32 1, %temp3570
  %access572 = getelementptr double, double* %payaddr547, i32 %playerind571
  store double 1.000000e+00, double* %access572
  %addr573 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon574 = getelementptr { i32, i32* }, { i32, i32* }* %addr573, i32 0, i32 1
  %conaddr575 = load i32*, i32** %getcon574
  %access576 = getelementptr i32, i32* %conaddr575, i32 0
  %S577 = load i32, i32* @S
  store i32 %S577, i32* %access576
  %addr578 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon579 = getelementptr { i32, i32* }, { i32, i32* }* %addr578, i32 0, i32 1
  %conaddr580 = load i32*, i32** %getcon579
  %access581 = getelementptr i32, i32* %conaddr580, i32 1
  %P582 = load i32, i32* @P
  store i32 %P582, i32* %access581
  %field583 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers584 = load i32, i32* %field583
  %field585 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves586 = load i32, i32* %field585
  %field587 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr588 = load double*, double** %field587
  %sitofp589 = sitofp i32 %nmoves586 to double
  %sitofp590 = sitofp i32 %nplayers584 to double
  %addr591 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon592 = getelementptr { i32, i32* }, { i32, i32* }* %addr591, i32 0, i32 1
  %conaddr593 = load i32*, i32** %getcon592
  %access594 = getelementptr i32, i32* %conaddr593, i32 0
  %move595 = load i32, i32* %access594
  %sitofp596 = sitofp i32 %move595 to double
  %temp597 = call double (double, double, ...) @pow(double %sitofp589, double 0.000000e+00)
  %temp2598 = fmul double %temp597, %sitofp596
  %current599 = fptoui double %temp2598 to i32
  %addr600 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon601 = getelementptr { i32, i32* }, { i32, i32* }* %addr600, i32 0, i32 1
  %conaddr602 = load i32*, i32** %getcon601
  %access603 = getelementptr i32, i32* %conaddr602, i32 1
  %move604 = load i32, i32* %access603
  %sitofp605 = sitofp i32 %move604 to double
  %temp606 = call double (double, double, ...) @pow(double %sitofp589, double 1.000000e+00)
  %temp2607 = fmul double %temp606, %sitofp605
  %current608 = fptoui double %temp2607 to i32
  %result609 = add i32 %current608, 0
  %result610 = add i32 %current599, %result609
  %temp3611 = mul i32 %result610, %nplayers584
  %playerind612 = add i32 0, %temp3611
  %access613 = getelementptr double, double* %payaddr588, i32 %playerind612
  store double 1.000000e+00, double* %access613
  %field614 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers615 = load i32, i32* %field614
  %field616 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves617 = load i32, i32* %field616
  %field618 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr619 = load double*, double** %field618
  %sitofp620 = sitofp i32 %nmoves617 to double
  %sitofp621 = sitofp i32 %nplayers615 to double
  %addr622 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon623 = getelementptr { i32, i32* }, { i32, i32* }* %addr622, i32 0, i32 1
  %conaddr624 = load i32*, i32** %getcon623
  %access625 = getelementptr i32, i32* %conaddr624, i32 0
  %move626 = load i32, i32* %access625
  %sitofp627 = sitofp i32 %move626 to double
  %temp628 = call double (double, double, ...) @pow(double %sitofp620, double 0.000000e+00)
  %temp2629 = fmul double %temp628, %sitofp627
  %current630 = fptoui double %temp2629 to i32
  %addr631 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon632 = getelementptr { i32, i32* }, { i32, i32* }* %addr631, i32 0, i32 1
  %conaddr633 = load i32*, i32** %getcon632
  %access634 = getelementptr i32, i32* %conaddr633, i32 1
  %move635 = load i32, i32* %access634
  %sitofp636 = sitofp i32 %move635 to double
  %temp637 = call double (double, double, ...) @pow(double %sitofp620, double 1.000000e+00)
  %temp2638 = fmul double %temp637, %sitofp636
  %current639 = fptoui double %temp2638 to i32
  %result640 = add i32 %current639, 0
  %result641 = add i32 %current630, %result640
  %temp3642 = mul i32 %result641, %nplayers615
  %playerind643 = add i32 1, %temp3642
  %access644 = getelementptr double, double* %payaddr619, i32 %playerind643
  store double -1.000000e+00, double* %access644
  %addr645 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon646 = getelementptr { i32, i32* }, { i32, i32* }* %addr645, i32 0, i32 1
  %conaddr647 = load i32*, i32** %getcon646
  %access648 = getelementptr i32, i32* %conaddr647, i32 0
  %S649 = load i32, i32* @S
  store i32 %S649, i32* %access648
  %addr650 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon651 = getelementptr { i32, i32* }, { i32, i32* }* %addr650, i32 0, i32 1
  %conaddr652 = load i32*, i32** %getcon651
  %access653 = getelementptr i32, i32* %conaddr652, i32 1
  %S654 = load i32, i32* @S
  store i32 %S654, i32* %access653
  %field655 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers656 = load i32, i32* %field655
  %field657 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves658 = load i32, i32* %field657
  %field659 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr660 = load double*, double** %field659
  %sitofp661 = sitofp i32 %nmoves658 to double
  %sitofp662 = sitofp i32 %nplayers656 to double
  %addr663 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon664 = getelementptr { i32, i32* }, { i32, i32* }* %addr663, i32 0, i32 1
  %conaddr665 = load i32*, i32** %getcon664
  %access666 = getelementptr i32, i32* %conaddr665, i32 0
  %move667 = load i32, i32* %access666
  %sitofp668 = sitofp i32 %move667 to double
  %temp669 = call double (double, double, ...) @pow(double %sitofp661, double 0.000000e+00)
  %temp2670 = fmul double %temp669, %sitofp668
  %current671 = fptoui double %temp2670 to i32
  %addr672 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon673 = getelementptr { i32, i32* }, { i32, i32* }* %addr672, i32 0, i32 1
  %conaddr674 = load i32*, i32** %getcon673
  %access675 = getelementptr i32, i32* %conaddr674, i32 1
  %move676 = load i32, i32* %access675
  %sitofp677 = sitofp i32 %move676 to double
  %temp678 = call double (double, double, ...) @pow(double %sitofp661, double 1.000000e+00)
  %temp2679 = fmul double %temp678, %sitofp677
  %current680 = fptoui double %temp2679 to i32
  %result681 = add i32 %current680, 0
  %result682 = add i32 %current671, %result681
  %temp3683 = mul i32 %result682, %nplayers656
  %playerind684 = add i32 0, %temp3683
  %access685 = getelementptr double, double* %payaddr660, i32 %playerind684
  store double 0.000000e+00, double* %access685
  %field686 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 0
  %nplayers687 = load i32, i32* %field686
  %field688 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 1
  %nmoves689 = load i32, i32* %field688
  %field690 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %newgame, i32 0, i32 2
  %payaddr691 = load double*, double** %field690
  %sitofp692 = sitofp i32 %nmoves689 to double
  %sitofp693 = sitofp i32 %nplayers687 to double
  %addr694 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon695 = getelementptr { i32, i32* }, { i32, i32* }* %addr694, i32 0, i32 1
  %conaddr696 = load i32*, i32** %getcon695
  %access697 = getelementptr i32, i32* %conaddr696, i32 0
  %move698 = load i32, i32* %access697
  %sitofp699 = sitofp i32 %move698 to double
  %temp700 = call double (double, double, ...) @pow(double %sitofp692, double 0.000000e+00)
  %temp2701 = fmul double %temp700, %sitofp699
  %current702 = fptoui double %temp2701 to i32
  %addr703 = load { i32, i32* }*, { i32, i32* }** %moves
  %getcon704 = getelementptr { i32, i32* }, { i32, i32* }* %addr703, i32 0, i32 1
  %conaddr705 = load i32*, i32** %getcon704
  %access706 = getelementptr i32, i32* %conaddr705, i32 1
  %move707 = load i32, i32* %access706
  %sitofp708 = sitofp i32 %move707 to double
  %temp709 = call double (double, double, ...) @pow(double %sitofp692, double 1.000000e+00)
  %temp2710 = fmul double %temp709, %sitofp708
  %current711 = fptoui double %temp2710 to i32
  %result712 = add i32 %current711, 0
  %result713 = add i32 %current702, %result712
  %temp3714 = mul i32 %result713, %nplayers687
  %playerind715 = add i32 1, %temp3714
  %access716 = getelementptr double, double* %payaddr691, i32 %playerind715
  store double 0.000000e+00, double* %access716
  store { i32, i32, double* }* %newgame, { i32, i32, double* }** @rps
  %newstrategy = alloca { i32, i32, i32, { i32, i32 }* }
  %exp717 = call double (double, double, ...) @pow(double 3.000000e+00, double 2.000000e+00)
  %size718 = fptoui double %exp717 to i32
  %size719 = mul i32 %size718, 3
  %trans = alloca { i32, i32 }, i32 %size719
  %nplayersdest720 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nmovesdest721 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nstatesdest = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 2
  %ptrdest722 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  store i32 2, i32* %nplayersdest720
  store i32 3, i32* %nmovesdest721
  store i32 3, i32* %nstatesdest
  store { i32, i32 }* %trans, { i32, i32 }** %ptrdest722
  %outputs = alloca { i32, i32* }*
  %newarray723 = alloca { i32, i32* }
  %contents724 = alloca i32, i32 3
  %ptrdest725 = getelementptr { i32, i32* }, { i32, i32* }* %newarray723, i32 0, i32 0
  %ptrdest726 = getelementptr { i32, i32* }, { i32, i32* }* %newarray723, i32 0, i32 1
  store i32 3, i32* %ptrdest725
  store i32* %contents724, i32** %ptrdest726
  store { i32, i32* }* %newarray723, { i32, i32* }** %outputs
  %addr727 = load { i32, i32* }*, { i32, i32* }** %outputs
  %getcon728 = getelementptr { i32, i32* }, { i32, i32* }* %addr727, i32 0, i32 1
  %conaddr729 = load i32*, i32** %getcon728
  %access730 = getelementptr i32, i32* %conaddr729, i32 0
  %R731 = load i32, i32* @R
  store i32 %R731, i32* %access730
  %rock = alloca i32
  store i32 0, i32* %rock
  %exp732 = call double (double, double, ...) @pow(double 3.000000e+00, double 2.000000e+00)
  %size733 = fptoui double %exp732 to i32
  %statei = alloca i32
  %transi = alloca i32
  store i32 0, i32* %statei
  br label %statecond

statecond:                                        ; preds = %merge2, %merge71
  %statei765 = load i32, i32* %statei
  %statecomp = icmp slt i32 %statei765, 3
  br i1 %statecomp, label %state_loop, label %merge1

state_loop:                                       ; preds = %statecond
  store i32 0, i32* %transi
  br label %transcond

transcond:                                        ; preds = %merge3, %state_loop
  %transi762 = load i32, i32* %transi
  %transcomp = icmp slt i32 %transi762, %size733
  br i1 %transcomp, label %trans_loop, label %merge2

trans_loop:                                       ; preds = %transcond
  %statei734 = load i32, i32* %statei
  %transi735 = load i32, i32* %transi
  %field736 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr = load { i32, i32 }*, { i32, i32 }** %field736
  %state = mul i32 %size733, %statei734
  %state737 = add i32 %transi735, %state
  %access738 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr, i32 %state737
  %field739 = getelementptr { i32, i32 }, { i32, i32 }* %access738, i32 0, i32 1
  store i32 %statei734, i32* %field739
  %ifcomp = icmp slt i32 %statei734, 1
  br i1 %ifcomp, label %then, label %else

merge3:                                           ; preds = %else, %then
  %transi760 = load i32, i32* %transi
  %next761 = add i32 %transi760, 1
  store i32 %next761, i32* %transi
  br label %transcond

then:                                             ; preds = %trans_loop
  %statei740 = load i32, i32* %statei
  %transi741 = load i32, i32* %transi
  %field742 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr743 = load { i32, i32 }*, { i32, i32 }** %field742
  %state744 = mul i32 %size733, %statei740
  %state745 = add i32 %transi741, %state744
  %access746 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr743, i32 %state745
  %field747 = getelementptr { i32, i32 }, { i32, i32 }* %access746, i32 0, i32 0
  %addr748 = load { i32, i32* }*, { i32, i32* }** %outputs
  %getcon749 = getelementptr { i32, i32* }, { i32, i32* }* %addr748, i32 0, i32 1
  %conaddr750 = load i32*, i32** %getcon749
  %access751 = getelementptr i32, i32* %conaddr750, i32 %statei740
  %outputmove = load i32, i32* %access751
  store i32 %outputmove, i32* %field747
  br label %merge3

else:                                             ; preds = %trans_loop
  %statei752 = load i32, i32* %statei
  %transi753 = load i32, i32* %transi
  %field754 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr755 = load { i32, i32 }*, { i32, i32 }** %field754
  %state756 = mul i32 %size733, %statei752
  %state757 = add i32 %transi753, %state756
  %access758 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr755, i32 %state757
  %field759 = getelementptr { i32, i32 }, { i32, i32 }* %access758, i32 0, i32 0
  store i32 0, i32* %field759
  br label %merge3

merge2:                                           ; preds = %transcond
  %statei763 = load i32, i32* %statei
  %next764 = add i32 %statei763, 1
  store i32 %next764, i32* %statei
  br label %statecond

merge1:                                           ; preds = %statecond
  %moves766 = alloca { i32, i32* }*
  %newarray767 = alloca { i32, i32* }
  %contents768 = alloca i32, i32 2
  %ptrdest769 = getelementptr { i32, i32* }, { i32, i32* }* %newarray767, i32 0, i32 0
  %ptrdest770 = getelementptr { i32, i32* }, { i32, i32* }* %newarray767, i32 0, i32 1
  store i32 2, i32* %ptrdest769
  store i32* %contents768, i32** %ptrdest770
  store { i32, i32* }* %newarray767, { i32, i32* }** %moves766
  %addr771 = load { i32, i32* }*, { i32, i32* }** %moves766
  %getcon772 = getelementptr { i32, i32* }, { i32, i32* }* %addr771, i32 0, i32 1
  %conaddr773 = load i32*, i32** %getcon772
  %access774 = getelementptr i32, i32* %conaddr773, i32 0
  store i32 0, i32* %access774
  %addr775 = load { i32, i32* }*, { i32, i32* }** %moves766
  %getcon776 = getelementptr { i32, i32* }, { i32, i32* }* %addr775, i32 0, i32 1
  %conaddr777 = load i32*, i32** %getcon776
  %access778 = getelementptr i32, i32* %conaddr777, i32 1
  store i32 0, i32* %access778
  %addr779 = load { i32, i32* }*, { i32, i32* }** %moves766
  %getcon780 = getelementptr { i32, i32* }, { i32, i32* }* %addr779, i32 0, i32 1
  %conaddr781 = load i32*, i32** %getcon780
  %access782 = getelementptr i32, i32* %conaddr781, i32 0
  store i32 0, i32* %access782
  br label %wildcond783

wildcond783:                                      ; preds = %merge830, %merge1
  %player833 = load i32, i32* %access782
  %wildcomp834 = icmp slt i32 %player833, 3
  br i1 %wildcomp834, label %wildloop784, label %merge835

wildloop784:                                      ; preds = %wildcond783
  %addr785 = load { i32, i32* }*, { i32, i32* }** %moves766
  %getcon786 = getelementptr { i32, i32* }, { i32, i32* }* %addr785, i32 0, i32 1
  %conaddr787 = load i32*, i32** %getcon786
  %access788 = getelementptr i32, i32* %conaddr787, i32 1
  store i32 0, i32* %access788
  br label %wildcond789

wildcond789:                                      ; preds = %wildloop790, %wildloop784
  %player828 = load i32, i32* %access788
  %wildcomp829 = icmp slt i32 %player828, 3
  br i1 %wildcomp829, label %wildloop790, label %merge830

wildloop790:                                      ; preds = %wildcond789
  %rock791 = load i32, i32* %rock
  %field792 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 0
  %nplayers793 = load i32, i32* %field792
  %field794 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 1
  %nmoves795 = load i32, i32* %field794
  %sitofp796 = sitofp i32 %nmoves795 to double
  %sitofp797 = sitofp i32 %nplayers793 to double
  %exp798 = call double (double, double, ...) @pow(double %sitofp796, double %sitofp797)
  %size799 = fptoui double %exp798 to i32
  %field800 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy, i32 0, i32 3
  %transaddr801 = load { i32, i32 }*, { i32, i32 }** %field800
  %start = mul i32 %size799, 0
  %sitofp802 = sitofp i32 %nmoves795 to double
  %sitofp803 = sitofp i32 %nplayers793 to double
  %addr804 = load { i32, i32* }*, { i32, i32* }** %moves766
  %getcon805 = getelementptr { i32, i32* }, { i32, i32* }* %addr804, i32 0, i32 1
  %conaddr806 = load i32*, i32** %getcon805
  %access807 = getelementptr i32, i32* %conaddr806, i32 0
  %move808 = load i32, i32* %access807
  %sitofp809 = sitofp i32 %move808 to double
  %temp810 = call double (double, double, ...) @pow(double %sitofp802, double 0.000000e+00)
  %temp2811 = fmul double %temp810, %sitofp809
  %current812 = fptoui double %temp2811 to i32
  %addr813 = load { i32, i32* }*, { i32, i32* }** %moves766
  %getcon814 = getelementptr { i32, i32* }, { i32, i32* }* %addr813, i32 0, i32 1
  %conaddr815 = load i32*, i32** %getcon814
  %access816 = getelementptr i32, i32* %conaddr815, i32 1
  %move817 = load i32, i32* %access816
  %sitofp818 = sitofp i32 %move817 to double
  %temp819 = call double (double, double, ...) @pow(double %sitofp802, double 1.000000e+00)
  %temp2820 = fmul double %temp819, %sitofp818
  %current821 = fptoui double %temp2820 to i32
  %result822 = add i32 %current821, 0
  %result823 = add i32 %current812, %result822
  %index = add i32 %start, %result823
  %access824 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr801, i32 %index
  %field825 = getelementptr { i32, i32 }, { i32, i32 }* %access824, i32 0, i32 1
  store i32 %rock791, i32* %field825
  %loadwild826 = load i32, i32* %access788
  %next827 = add i32 %loadwild826, 1
  store i32 %next827, i32* %access788
  br label %wildcond789

merge830:                                         ; preds = %wildcond789
  %loadwild831 = load i32, i32* %access782
  %next832 = add i32 %loadwild831, 1
  store i32 %next832, i32* %access782
  br label %wildcond783

merge835:                                         ; preds = %wildcond783
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy, { i32, i32, i32, { i32, i32 }* }** @rock
  %newarray836 = alloca { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }
  %contents837 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, i32 10
  %ptrdest838 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray836, i32 0, i32 0
  %ptrdest839 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray836, i32 0, i32 1
  store i32 10, i32* %ptrdest838
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %contents837, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %ptrdest839
  store { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray836, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %newarray840 = alloca { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }
  %contents841 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, i32 10
  %ptrdest842 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray840, i32 0, i32 0
  %ptrdest843 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray840, i32 0, i32 1
  store i32 10, i32* %ptrdest842
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %contents841, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %ptrdest843
  store { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %newarray840, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %newarray844 = alloca { i32, double* }
  %contents845 = alloca double, i32 10
  %ptrdest846 = getelementptr { i32, double* }, { i32, double* }* %newarray844, i32 0, i32 0
  %ptrdest847 = getelementptr { i32, double* }, { i32, double* }* %newarray844, i32 0, i32 1
  store i32 10, i32* %ptrdest846
  store double* %contents845, double** %ptrdest847
  store { i32, double* }* %newarray844, { i32, double* }** @payoffs1
  %newarray848 = alloca { i32, double* }
  %contents849 = alloca double, i32 10
  %ptrdest850 = getelementptr { i32, double* }, { i32, double* }* %newarray848, i32 0, i32 0
  %ptrdest851 = getelementptr { i32, double* }, { i32, double* }* %newarray848, i32 0, i32 1
  store i32 10, i32* %ptrdest850
  store double* %contents849, double** %ptrdest851
  store { i32, double* }* %newarray848, { i32, double* }** @payoffs2
  %players1 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players1, i32 0, i32 0
  %arrlen = load i32, i32* %getlen
  %tmp = sub i32 %arrlen, 1
  %rangediff = sub i32 %tmp, 0
  %rangesize = add i32 %rangediff, 1
  %newarray852 = alloca { i32, i32* }
  %contents853 = alloca i32, i32 %rangesize
  %ptrdest854 = getelementptr { i32, i32* }, { i32, i32* }* %newarray852, i32 0, i32 0
  %ptrdest855 = getelementptr { i32, i32* }, { i32, i32* }* %newarray852, i32 0, i32 1
  store i32 %rangesize, i32* %ptrdest854
  store i32* %contents853, i32** %ptrdest855
  %rangeptr = alloca { i32, i32* }*
  store { i32, i32* }* %newarray852, { i32, i32* }** %rangeptr
  %addr856 = load { i32, i32* }*, { i32, i32* }** %rangeptr
  %getcon857 = getelementptr { i32, i32* }, { i32, i32* }* %addr856, i32 0, i32 1
  %conaddr858 = load i32*, i32** %getcon857
  %access859 = getelementptr i32, i32* %conaddr858, i32 %rangediff
  br label %range

range:                                            ; preds = %merge835
  %i = alloca i32
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_loop, %range
  %lastentry = load i32, i32* %access859
  %rangecomp = icmp ne i32 %lastentry, %tmp
  br i1 %rangecomp, label %while_loop, label %merge865

while_loop:                                       ; preds = %while
  %loadi = load i32, i32* %i
  %addr860 = load { i32, i32* }*, { i32, i32* }** %rangeptr
  %getcon861 = getelementptr { i32, i32* }, { i32, i32* }* %addr860, i32 0, i32 1
  %conaddr862 = load i32*, i32** %getcon861
  %access863 = getelementptr i32, i32* %conaddr862, i32 %loadi
  %calcval = add i32 0, %loadi
  store i32 %calcval, i32* %access863
  %i864 = load i32, i32* %i
  %iplusone = add i32 %i864, 1
  store i32 %iplusone, i32* %i
  br label %while

merge865:                                         ; preds = %while
  %eptr = alloca { i32, i32* }*
  store { i32, i32* }* %newarray852, { i32, i32* }** %eptr
  %getlen866 = getelementptr { i32, i32* }, { i32, i32* }* %newarray852, i32 0, i32 0
  %size867 = load i32, i32* %getlen866
  %addr868 = load { i32, i32* }*, { i32, i32* }** %eptr
  %getcon869 = getelementptr { i32, i32* }, { i32, i32* }* %addr868, i32 0, i32 1
  %conaddr870 = load i32*, i32** %getcon869
  %access871 = getelementptr i32, i32* %conaddr870, i32 0
  %current872 = load i32, i32* %access871
  %i873 = alloca i32
  store i32 %current872, i32* %i873
  %i874 = alloca i32
  store i32 0, i32* %i874
  br label %for

for:                                              ; preds = %merge1045, %merge865
  %i1054 = load i32, i32* %i874
  %forcomp = icmp ne i32 %i1054, %size867
  br i1 %forcomp, label %for_loop, label %merge1055

for_loop:                                         ; preds = %for
  br label %block875

block875:                                         ; preds = %for_loop
  %rock876 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** @rock
  %newplayer = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, i32 0, i32 0
  %deltadest = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, i32 0, i32 1
  %payoffdest = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, i32 0, i32 2
  %statedest = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, i32 0, i32 3
  %roundsdest = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, i32 0, i32 4
  %field877 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock876, i32 0, i32 0
  %nplayers878 = load i32, i32* %field877
  %field879 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock876, i32 0, i32 1
  %nmoves880 = load i32, i32* %field879
  %field881 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock876, i32 0, i32 2
  %nstates = load i32, i32* %field881
  %newstrategy882 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp883 = sitofp i32 %nmoves880 to double
  %sitofp884 = sitofp i32 %nplayers878 to double
  %exp885 = call double (double, double, ...) @pow(double %sitofp883, double %sitofp884)
  %size886 = fptoui double %exp885 to i32
  %size887 = mul i32 %size886, %nstates
  %trans888 = alloca { i32, i32 }, i32 %size887
  %nplayersdest889 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy882, i32 0, i32 0
  %nmovesdest890 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy882, i32 0, i32 1
  %nstatesdest891 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy882, i32 0, i32 2
  %ptrdest892 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy882, i32 0, i32 3
  store i32 %nplayers878, i32* %nplayersdest889
  store i32 %nmoves880, i32* %nmovesdest890
  store i32 %nstates, i32* %nstatesdest891
  store { i32, i32 }* %trans888, { i32, i32 }** %ptrdest892
  %field893 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock876, i32 0, i32 0
  %nplayers894 = load i32, i32* %field893
  %field895 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock876, i32 0, i32 1
  %nmoves896 = load i32, i32* %field895
  %field897 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock876, i32 0, i32 2
  %nstates898 = load i32, i32* %field897
  %sitofp899 = sitofp i32 %nmoves896 to double
  %sitofp900 = sitofp i32 %nplayers894 to double
  %exp901 = call double (double, double, ...) @pow(double %sitofp899, double %sitofp900)
  %size902 = fptoui double %exp901 to i32
  %size903 = mul i32 %size902, %nstates898
  %sitofp904 = sitofp i32 %size903 to double
  %sitofp905 = sitofp i32 %nmoves896 to double
  %sitofp906 = sitofp i32 %nstates898 to double
  %fcopy_size = fmul double %sitofp904, 1.000000e+00
  %copy_size = fptoui double %fcopy_size to i32
  %transi907 = alloca i32
  store i32 0, i32* %transi907
  br label %copycond

copycond:                                         ; preds = %merge927, %block875
  %transi934 = load i32, i32* %transi907
  %statecomp935 = icmp slt i32 %transi934, %copy_size
  br i1 %statecomp935, label %copyloop, label %merge936

copyloop:                                         ; preds = %copycond
  %load = load i32, i32* %transi907
  %field908 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock876, i32 0, i32 3
  %sourceaddr = load { i32, i32 }*, { i32, i32 }** %field908
  %field909 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy882, i32 0, i32 3
  %destaddr = load { i32, i32 }*, { i32, i32 }** %field909
  %source = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr, i32 %load
  %dest = getelementptr { i32, i32 }, { i32, i32 }* %destaddr, i32 %load
  %field910 = getelementptr { i32, i32 }, { i32, i32 }* %source, i32 0, i32 0
  %source_output = load i32, i32* %field910
  %field911 = getelementptr { i32, i32 }, { i32, i32 }* %dest, i32 0, i32 0
  %field912 = getelementptr { i32, i32 }, { i32, i32 }* %source, i32 0, i32 1
  %source_nextstate = load i32, i32* %field912
  %field913 = getelementptr { i32, i32 }, { i32, i32 }* %dest, i32 0, i32 1
  %rand = call i32 (...) @rand()
  %randint = urem i32 %rand, 32767
  %sitofp914 = sitofp i32 %randint to double
  %randfloat = fdiv double %sitofp914, 3.276700e+04
  %randcomp = fcmp olt double %randfloat, 0.000000e+00
  br i1 %randcomp, label %then916, label %else921

merge915:                                         ; preds = %else921, %then916
  %rand922 = call i32 (...) @rand()
  %randint923 = urem i32 %rand922, 32767
  %sitofp924 = sitofp i32 %randint923 to double
  %randfloat925 = fdiv double %sitofp924, 3.276700e+04
  %randcomp926 = fcmp olt double %randfloat925, 0.000000e+00
  br i1 %randcomp926, label %then928, label %else933

then916:                                          ; preds = %copyloop
  %rand917 = call i32 (...) @rand()
  %randint918 = urem i32 %rand917, 32767
  %sitofp919 = sitofp i32 %randint918 to double
  %randfloat920 = fdiv double %sitofp919, 3.276700e+04
  %frandmove = fmul double %randfloat920, %sitofp905
  %randmove = fptoui double %frandmove to i32
  store i32 %randmove, i32* %field911
  br label %merge915

else921:                                          ; preds = %copyloop
  store i32 %source_output, i32* %field911
  br label %merge915

merge927:                                         ; preds = %else933, %then928
  %inc = add i32 %load, 1
  store i32 %inc, i32* %transi907
  br label %copycond

then928:                                          ; preds = %merge915
  %rand929 = call i32 (...) @rand()
  %randint930 = urem i32 %rand929, 32767
  %sitofp931 = sitofp i32 %randint930 to double
  %randfloat932 = fdiv double %sitofp931, 3.276700e+04
  %frandstate = fmul double %randfloat932, %sitofp906
  %randstate = fptoui double %frandstate to i32
  store i32 %randstate, i32* %field913
  br label %merge927

else933:                                          ; preds = %merge915
  store i32 %source_nextstate, i32* %field913
  br label %merge927

merge936:                                         ; preds = %copycond
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy882, { i32, i32, i32, { i32, i32 }* }** %strategydest
  store double 1.000000e+00, double* %deltadest
  store double 0.000000e+00, double* %payoffdest
  store i32 0, i32* %statedest
  store i32 0, i32* %roundsdest
  %i937 = load i32, i32* %i873
  %addr938 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon939 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr938, i32 0, i32 1
  %conaddr940 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon939
  %access941 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr940, i32 %i937
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access941
  %rock942 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** @rock
  %newplayer943 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest944 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer943, i32 0, i32 0
  %deltadest945 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer943, i32 0, i32 1
  %payoffdest946 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer943, i32 0, i32 2
  %statedest947 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer943, i32 0, i32 3
  %roundsdest948 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer943, i32 0, i32 4
  %field949 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock942, i32 0, i32 0
  %nplayers950 = load i32, i32* %field949
  %field951 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock942, i32 0, i32 1
  %nmoves952 = load i32, i32* %field951
  %field953 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock942, i32 0, i32 2
  %nstates954 = load i32, i32* %field953
  %newstrategy955 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp956 = sitofp i32 %nmoves952 to double
  %sitofp957 = sitofp i32 %nplayers950 to double
  %exp958 = call double (double, double, ...) @pow(double %sitofp956, double %sitofp957)
  %size959 = fptoui double %exp958 to i32
  %size960 = mul i32 %size959, %nstates954
  %trans961 = alloca { i32, i32 }, i32 %size960
  %nplayersdest962 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy955, i32 0, i32 0
  %nmovesdest963 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy955, i32 0, i32 1
  %nstatesdest964 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy955, i32 0, i32 2
  %ptrdest965 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy955, i32 0, i32 3
  store i32 %nplayers950, i32* %nplayersdest962
  store i32 %nmoves952, i32* %nmovesdest963
  store i32 %nstates954, i32* %nstatesdest964
  store { i32, i32 }* %trans961, { i32, i32 }** %ptrdest965
  %field966 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock942, i32 0, i32 0
  %nplayers967 = load i32, i32* %field966
  %field968 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock942, i32 0, i32 1
  %nmoves969 = load i32, i32* %field968
  %field970 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock942, i32 0, i32 2
  %nstates971 = load i32, i32* %field970
  %sitofp972 = sitofp i32 %nmoves969 to double
  %sitofp973 = sitofp i32 %nplayers967 to double
  %exp974 = call double (double, double, ...) @pow(double %sitofp972, double %sitofp973)
  %size975 = fptoui double %exp974 to i32
  %size976 = mul i32 %size975, %nstates971
  %sitofp977 = sitofp i32 %size976 to double
  %sitofp978 = sitofp i32 %nmoves969 to double
  %sitofp979 = sitofp i32 %nstates971 to double
  %fcopy_size980 = fmul double %sitofp977, 1.000000e+00
  %copy_size981 = fptoui double %fcopy_size980 to i32
  %transi982 = alloca i32
  store i32 0, i32* %transi982
  br label %copycond983

copycond983:                                      ; preds = %merge1017, %merge936
  %transi1027 = load i32, i32* %transi982
  %statecomp1028 = icmp slt i32 %transi1027, %copy_size981
  br i1 %statecomp1028, label %copyloop984, label %merge1029

copyloop984:                                      ; preds = %copycond983
  %load985 = load i32, i32* %transi982
  %field986 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %rock942, i32 0, i32 3
  %sourceaddr987 = load { i32, i32 }*, { i32, i32 }** %field986
  %field988 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy955, i32 0, i32 3
  %destaddr989 = load { i32, i32 }*, { i32, i32 }** %field988
  %source990 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr987, i32 %load985
  %dest991 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr989, i32 %load985
  %field992 = getelementptr { i32, i32 }, { i32, i32 }* %source990, i32 0, i32 0
  %source_output993 = load i32, i32* %field992
  %field994 = getelementptr { i32, i32 }, { i32, i32 }* %dest991, i32 0, i32 0
  %field995 = getelementptr { i32, i32 }, { i32, i32 }* %source990, i32 0, i32 1
  %source_nextstate996 = load i32, i32* %field995
  %field997 = getelementptr { i32, i32 }, { i32, i32 }* %dest991, i32 0, i32 1
  %rand998 = call i32 (...) @rand()
  %randint999 = urem i32 %rand998, 32767
  %sitofp1000 = sitofp i32 %randint999 to double
  %randfloat1001 = fdiv double %sitofp1000, 3.276700e+04
  %randcomp1002 = fcmp olt double %randfloat1001, 0.000000e+00
  br i1 %randcomp1002, label %then1004, label %else1011

merge1003:                                        ; preds = %else1011, %then1004
  %rand1012 = call i32 (...) @rand()
  %randint1013 = urem i32 %rand1012, 32767
  %sitofp1014 = sitofp i32 %randint1013 to double
  %randfloat1015 = fdiv double %sitofp1014, 3.276700e+04
  %randcomp1016 = fcmp olt double %randfloat1015, 0.000000e+00
  br i1 %randcomp1016, label %then1018, label %else1025

then1004:                                         ; preds = %copyloop984
  %rand1005 = call i32 (...) @rand()
  %randint1006 = urem i32 %rand1005, 32767
  %sitofp1007 = sitofp i32 %randint1006 to double
  %randfloat1008 = fdiv double %sitofp1007, 3.276700e+04
  %frandmove1009 = fmul double %randfloat1008, %sitofp978
  %randmove1010 = fptoui double %frandmove1009 to i32
  store i32 %randmove1010, i32* %field994
  br label %merge1003

else1011:                                         ; preds = %copyloop984
  store i32 %source_output993, i32* %field994
  br label %merge1003

merge1017:                                        ; preds = %else1025, %then1018
  %inc1026 = add i32 %load985, 1
  store i32 %inc1026, i32* %transi982
  br label %copycond983

then1018:                                         ; preds = %merge1003
  %rand1019 = call i32 (...) @rand()
  %randint1020 = urem i32 %rand1019, 32767
  %sitofp1021 = sitofp i32 %randint1020 to double
  %randfloat1022 = fdiv double %sitofp1021, 3.276700e+04
  %frandstate1023 = fmul double %randfloat1022, %sitofp979
  %randstate1024 = fptoui double %frandstate1023 to i32
  store i32 %randstate1024, i32* %field997
  br label %merge1017

else1025:                                         ; preds = %merge1003
  store i32 %source_nextstate996, i32* %field997
  br label %merge1017

merge1029:                                        ; preds = %copycond983
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy955, { i32, i32, i32, { i32, i32 }* }** %strategydest944
  store double 1.000000e+00, double* %deltadest945
  store double 0.000000e+00, double* %payoffdest946
  store i32 0, i32* %statedest947
  store i32 0, i32* %roundsdest948
  %i1030 = load i32, i32* %i873
  %addr1031 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1032 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1031, i32 0, i32 1
  %conaddr1033 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1032
  %access1034 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1033, i32 %i1030
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer943, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1034
  %i1035 = load i32, i32* %i873
  %addr1036 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon1037 = getelementptr { i32, double* }, { i32, double* }* %addr1036, i32 0, i32 1
  %conaddr1038 = load double*, double** %getcon1037
  %access1039 = getelementptr double, double* %conaddr1038, i32 %i1035
  store double 0.000000e+00, double* %access1039
  %i1040 = load i32, i32* %i873
  %addr1041 = load { i32, double* }*, { i32, double* }** @payoffs2
  %getcon1042 = getelementptr { i32, double* }, { i32, double* }* %addr1041, i32 0, i32 1
  %conaddr1043 = load double*, double** %getcon1042
  %access1044 = getelementptr double, double* %conaddr1043, i32 %i1040
  store double 0.000000e+00, double* %access1044
  br label %merge1045

merge1045:                                        ; preds = %merge1029
  %i1046 = load i32, i32* %i874
  %iplusone1047 = add i32 %i1046, 1
  store i32 %iplusone1047, i32* %i874
  %loadi1048 = load i32, i32* %i874
  %addr1049 = load { i32, i32* }*, { i32, i32* }** %eptr
  %getcon1050 = getelementptr { i32, i32* }, { i32, i32* }* %addr1049, i32 0, i32 1
  %conaddr1051 = load i32*, i32** %getcon1050
  %access1052 = getelementptr i32, i32* %conaddr1051, i32 %loadi1048
  %current1053 = load i32, i32* %access1052
  store i32 %current1053, i32* %i873
  br label %for

merge1055:                                        ; preds = %for
  %newarray1056 = alloca { i32, i32* }
  %contents1057 = alloca i32, i32 50
  %ptrdest1058 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1056, i32 0, i32 0
  %ptrdest1059 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1056, i32 0, i32 1
  store i32 50, i32* %ptrdest1058
  store i32* %contents1057, i32** %ptrdest1059
  %rangeptr1060 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1056, { i32, i32* }** %rangeptr1060
  %addr1061 = load { i32, i32* }*, { i32, i32* }** %rangeptr1060
  %getcon1062 = getelementptr { i32, i32* }, { i32, i32* }* %addr1061, i32 0, i32 1
  %conaddr1063 = load i32*, i32** %getcon1062
  %access1064 = getelementptr i32, i32* %conaddr1063, i32 49
  br label %range1065

range1065:                                        ; preds = %merge1055
  %i1066 = alloca i32
  store i32 0, i32* %i1066
  br label %while1067

while1067:                                        ; preds = %while_loop1068, %range1065
  %lastentry1077 = load i32, i32* %access1064
  %rangecomp1078 = icmp ne i32 %lastentry1077, 50
  br i1 %rangecomp1078, label %while_loop1068, label %merge1079

while_loop1068:                                   ; preds = %while1067
  %loadi1069 = load i32, i32* %i1066
  %addr1070 = load { i32, i32* }*, { i32, i32* }** %rangeptr1060
  %getcon1071 = getelementptr { i32, i32* }, { i32, i32* }* %addr1070, i32 0, i32 1
  %conaddr1072 = load i32*, i32** %getcon1071
  %access1073 = getelementptr i32, i32* %conaddr1072, i32 %loadi1069
  %calcval1074 = add i32 1, %loadi1069
  store i32 %calcval1074, i32* %access1073
  %i1075 = load i32, i32* %i1066
  %iplusone1076 = add i32 %i1075, 1
  store i32 %iplusone1076, i32* %i1066
  br label %while1067

merge1079:                                        ; preds = %while1067
  %eptr1080 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1056, { i32, i32* }** %eptr1080
  %getlen1081 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1056, i32 0, i32 0
  %size1082 = load i32, i32* %getlen1081
  %addr1083 = load { i32, i32* }*, { i32, i32* }** %eptr1080
  %getcon1084 = getelementptr { i32, i32* }, { i32, i32* }* %addr1083, i32 0, i32 1
  %conaddr1085 = load i32*, i32** %getcon1084
  %access1086 = getelementptr i32, i32* %conaddr1085, i32 0
  %current1087 = load i32, i32* %access1086
  %t = alloca i32
  store i32 %current1087, i32* %t
  %i1088 = alloca i32
  store i32 0, i32* %i1088
  br label %for1089

for1089:                                          ; preds = %merge3132, %merge1079
  %i3141 = load i32, i32* %i1088
  %forcomp3142 = icmp ne i32 %i3141, %size1082
  br i1 %forcomp3142, label %for_loop1090, label %merge3143

for_loop1090:                                     ; preds = %for1089
  br label %block1091

block1091:                                        ; preds = %for_loop1090
  %t1092 = load i32, i32* %t
  %strofnum = alloca i8, i32 32
  %sprintf = call i32 (i8*, i8*, ...) @sprintf(i8* %strofnum, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmtd.29, i32 0, i32 0), i32 %t1092)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln.28, i32 0, i32 0), i8* %strofnum)
  %newarray1093 = alloca { i32, i32* }
  %contents1094 = alloca i32, i32 10
  %ptrdest1095 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1093, i32 0, i32 0
  %ptrdest1096 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1093, i32 0, i32 1
  store i32 10, i32* %ptrdest1095
  store i32* %contents1094, i32** %ptrdest1096
  %rangeptr1097 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1093, { i32, i32* }** %rangeptr1097
  %addr1098 = load { i32, i32* }*, { i32, i32* }** %rangeptr1097
  %getcon1099 = getelementptr { i32, i32* }, { i32, i32* }* %addr1098, i32 0, i32 1
  %conaddr1100 = load i32*, i32** %getcon1099
  %access1101 = getelementptr i32, i32* %conaddr1100, i32 9
  br label %range1102

range1102:                                        ; preds = %block1091
  %i1103 = alloca i32
  store i32 0, i32* %i1103
  br label %while1104

while1104:                                        ; preds = %while_loop1105, %range1102
  %lastentry1114 = load i32, i32* %access1101
  %rangecomp1115 = icmp ne i32 %lastentry1114, 9
  br i1 %rangecomp1115, label %while_loop1105, label %merge1116

while_loop1105:                                   ; preds = %while1104
  %loadi1106 = load i32, i32* %i1103
  %addr1107 = load { i32, i32* }*, { i32, i32* }** %rangeptr1097
  %getcon1108 = getelementptr { i32, i32* }, { i32, i32* }* %addr1107, i32 0, i32 1
  %conaddr1109 = load i32*, i32** %getcon1108
  %access1110 = getelementptr i32, i32* %conaddr1109, i32 %loadi1106
  %calcval1111 = add i32 0, %loadi1106
  store i32 %calcval1111, i32* %access1110
  %i1112 = load i32, i32* %i1103
  %iplusone1113 = add i32 %i1112, 1
  store i32 %iplusone1113, i32* %i1103
  br label %while1104

merge1116:                                        ; preds = %while1104
  %eptr1117 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1093, { i32, i32* }** %eptr1117
  %getlen1118 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1093, i32 0, i32 0
  %size1119 = load i32, i32* %getlen1118
  %addr1120 = load { i32, i32* }*, { i32, i32* }** %eptr1117
  %getcon1121 = getelementptr { i32, i32* }, { i32, i32* }* %addr1120, i32 0, i32 1
  %conaddr1122 = load i32*, i32** %getcon1121
  %access1123 = getelementptr i32, i32* %conaddr1122, i32 0
  %current1124 = load i32, i32* %access1123
  %i1125 = alloca i32
  store i32 %current1124, i32* %i1125
  %i1126 = alloca i32
  store i32 0, i32* %i1126
  br label %for1127

for1127:                                          ; preds = %merge1610, %merge1116
  %i1619 = load i32, i32* %i1126
  %forcomp1620 = icmp ne i32 %i1619, %size1119
  br i1 %forcomp1620, label %for_loop1128, label %merge1621

for_loop1128:                                     ; preds = %for1127
  br label %block1129

block1129:                                        ; preds = %for_loop1128
  %newarray1130 = alloca { i32, i32* }
  %contents1131 = alloca i32, i32 10
  %ptrdest1132 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1130, i32 0, i32 0
  %ptrdest1133 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1130, i32 0, i32 1
  store i32 10, i32* %ptrdest1132
  store i32* %contents1131, i32** %ptrdest1133
  %rangeptr1134 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1130, { i32, i32* }** %rangeptr1134
  %addr1135 = load { i32, i32* }*, { i32, i32* }** %rangeptr1134
  %getcon1136 = getelementptr { i32, i32* }, { i32, i32* }* %addr1135, i32 0, i32 1
  %conaddr1137 = load i32*, i32** %getcon1136
  %access1138 = getelementptr i32, i32* %conaddr1137, i32 9
  br label %range1139

range1139:                                        ; preds = %block1129
  %i1140 = alloca i32
  store i32 0, i32* %i1140
  br label %while1141

while1141:                                        ; preds = %while_loop1142, %range1139
  %lastentry1151 = load i32, i32* %access1138
  %rangecomp1152 = icmp ne i32 %lastentry1151, 9
  br i1 %rangecomp1152, label %while_loop1142, label %merge1153

while_loop1142:                                   ; preds = %while1141
  %loadi1143 = load i32, i32* %i1140
  %addr1144 = load { i32, i32* }*, { i32, i32* }** %rangeptr1134
  %getcon1145 = getelementptr { i32, i32* }, { i32, i32* }* %addr1144, i32 0, i32 1
  %conaddr1146 = load i32*, i32** %getcon1145
  %access1147 = getelementptr i32, i32* %conaddr1146, i32 %loadi1143
  %calcval1148 = add i32 0, %loadi1143
  store i32 %calcval1148, i32* %access1147
  %i1149 = load i32, i32* %i1140
  %iplusone1150 = add i32 %i1149, 1
  store i32 %iplusone1150, i32* %i1140
  br label %while1141

merge1153:                                        ; preds = %while1141
  %eptr1154 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1130, { i32, i32* }** %eptr1154
  %getlen1155 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1130, i32 0, i32 0
  %size1156 = load i32, i32* %getlen1155
  %addr1157 = load { i32, i32* }*, { i32, i32* }** %eptr1154
  %getcon1158 = getelementptr { i32, i32* }, { i32, i32* }* %addr1157, i32 0, i32 1
  %conaddr1159 = load i32*, i32** %getcon1158
  %access1160 = getelementptr i32, i32* %conaddr1159, i32 0
  %current1161 = load i32, i32* %access1160
  %j = alloca i32
  store i32 %current1161, i32* %j
  %i1162 = alloca i32
  store i32 0, i32* %i1162
  br label %for1163

for1163:                                          ; preds = %merge1598, %merge1153
  %i1607 = load i32, i32* %i1162
  %forcomp1608 = icmp ne i32 %i1607, %size1156
  br i1 %forcomp1608, label %for_loop1164, label %merge1609

for_loop1164:                                     ; preds = %for1163
  br label %block1165

block1165:                                        ; preds = %for_loop1164
  %i1166 = load i32, i32* %i1125
  %players11167 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen1168 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11167, i32 0, i32 0
  %arrlen1169 = load i32, i32* %getlen1168
  %sub = sub i32 %arrlen1169, 1
  %error = icmp sgt i32 %i1166, %sub
  br i1 %error, label %error1171, label %merge1170

merge1170:                                        ; preds = %block1165, %error1171
  %addr1172 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1173 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1172, i32 0, i32 1
  %conaddr1174 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1173
  %access1175 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1174, i32 %i1166
  %players11176 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1175
  %field1177 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11176, i32 0, i32 2
  %field1178 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11176, i32 0, i32 3
  %field1179 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11176, i32 0, i32 4
  store double 0.000000e+00, double* %field1177
  store i32 0, i32* %field1178
  store i32 0, i32* %field1179
  %i1180 = load i32, i32* %i1125
  %addr1181 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1182 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1181, i32 0, i32 1
  %conaddr1183 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1182
  %access1184 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1183, i32 %i1180
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11176, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1184
  %j1185 = load i32, i32* %j
  %players2 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen1186 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players2, i32 0, i32 0
  %arrlen1187 = load i32, i32* %getlen1186
  %sub1188 = sub i32 %arrlen1187, 1
  %error1189 = icmp sgt i32 %j1185, %sub1188
  br i1 %error1189, label %error1191, label %merge1190

error1171:                                        ; preds = %block1165
  %printerror = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.36, i32 0, i32 0), i32 %i1166, i32 %sub)
  br label %merge1170

merge1190:                                        ; preds = %merge1170, %error1191
  %addr1193 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1194 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1193, i32 0, i32 1
  %conaddr1195 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1194
  %access1196 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1195, i32 %j1185
  %players21197 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1196
  %field1198 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21197, i32 0, i32 2
  %field1199 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21197, i32 0, i32 3
  %field1200 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21197, i32 0, i32 4
  store double 0.000000e+00, double* %field1198
  store i32 0, i32* %field1199
  store i32 0, i32* %field1200
  %j1201 = load i32, i32* %j
  %addr1202 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1203 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1202, i32 0, i32 1
  %conaddr1204 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1203
  %access1205 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1204, i32 %j1201
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21197, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1205
  %newarray1206 = alloca { i32, i32* }
  %contents1207 = alloca i32, i32 20
  %ptrdest1208 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1206, i32 0, i32 0
  %ptrdest1209 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1206, i32 0, i32 1
  store i32 20, i32* %ptrdest1208
  store i32* %contents1207, i32** %ptrdest1209
  %rangeptr1210 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1206, { i32, i32* }** %rangeptr1210
  %addr1211 = load { i32, i32* }*, { i32, i32* }** %rangeptr1210
  %getcon1212 = getelementptr { i32, i32* }, { i32, i32* }* %addr1211, i32 0, i32 1
  %conaddr1213 = load i32*, i32** %getcon1212
  %access1214 = getelementptr i32, i32* %conaddr1213, i32 19
  br label %range1215

error1191:                                        ; preds = %merge1170
  %printerror1192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.37, i32 0, i32 0), i32 %j1185, i32 %sub1188)
  br label %merge1190

range1215:                                        ; preds = %merge1190
  %i1216 = alloca i32
  store i32 0, i32* %i1216
  br label %while1217

while1217:                                        ; preds = %while_loop1218, %range1215
  %lastentry1227 = load i32, i32* %access1214
  %rangecomp1228 = icmp ne i32 %lastentry1227, 20
  br i1 %rangecomp1228, label %while_loop1218, label %merge1229

while_loop1218:                                   ; preds = %while1217
  %loadi1219 = load i32, i32* %i1216
  %addr1220 = load { i32, i32* }*, { i32, i32* }** %rangeptr1210
  %getcon1221 = getelementptr { i32, i32* }, { i32, i32* }* %addr1220, i32 0, i32 1
  %conaddr1222 = load i32*, i32** %getcon1221
  %access1223 = getelementptr i32, i32* %conaddr1222, i32 %loadi1219
  %calcval1224 = add i32 1, %loadi1219
  store i32 %calcval1224, i32* %access1223
  %i1225 = load i32, i32* %i1216
  %iplusone1226 = add i32 %i1225, 1
  store i32 %iplusone1226, i32* %i1216
  br label %while1217

merge1229:                                        ; preds = %while1217
  %eptr1230 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1206, { i32, i32* }** %eptr1230
  %getlen1231 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1206, i32 0, i32 0
  %size1232 = load i32, i32* %getlen1231
  %addr1233 = load { i32, i32* }*, { i32, i32* }** %eptr1230
  %getcon1234 = getelementptr { i32, i32* }, { i32, i32* }* %addr1233, i32 0, i32 1
  %conaddr1235 = load i32*, i32** %getcon1234
  %access1236 = getelementptr i32, i32* %conaddr1235, i32 0
  %current1237 = load i32, i32* %access1236
  %r = alloca i32
  store i32 %current1237, i32* %r
  %i1238 = alloca i32
  store i32 0, i32* %i1238
  br label %for1239

for1239:                                          ; preds = %merge1517, %merge1229
  %i1526 = load i32, i32* %i1238
  %forcomp1527 = icmp ne i32 %i1526, %size1232
  br i1 %forcomp1527, label %for_loop1240, label %merge1528

for_loop1240:                                     ; preds = %for1239
  br label %block1241

block1241:                                        ; preds = %for_loop1240
  %j1242 = load i32, i32* %j
  %players21243 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen1244 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players21243, i32 0, i32 0
  %arrlen1245 = load i32, i32* %getlen1244
  %sub1246 = sub i32 %arrlen1245, 1
  %error1247 = icmp sgt i32 %j1242, %sub1246
  br i1 %error1247, label %error1249, label %merge1248

merge1248:                                        ; preds = %block1241, %error1249
  %addr1251 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1252 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1251, i32 0, i32 1
  %conaddr1253 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1252
  %access1254 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1253, i32 %j1242
  %players21255 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1254
  %i1256 = load i32, i32* %i1125
  %players11257 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen1258 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11257, i32 0, i32 0
  %arrlen1259 = load i32, i32* %getlen1258
  %sub1260 = sub i32 %arrlen1259, 1
  %error1261 = icmp sgt i32 %i1256, %sub1260
  br i1 %error1261, label %error1263, label %merge1262

error1249:                                        ; preds = %block1241
  %printerror1250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.38, i32 0, i32 0), i32 %j1242, i32 %sub1246)
  br label %merge1248

merge1262:                                        ; preds = %merge1248, %error1263
  %addr1265 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1266 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1265, i32 0, i32 1
  %conaddr1267 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1266
  %access1268 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1267, i32 %i1256
  %players11269 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1268
  %rps = load { i32, i32, double* }*, { i32, i32, double* }** @rps
  %field1270 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %rps, i32 0, i32 0
  %nplayers1271 = load i32, i32* %field1270
  %field1272 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %rps, i32 0, i32 1
  %nmoves1273 = load i32, i32* %field1272
  %error1274 = icmp ne i32 2, %nplayers1271
  br i1 %error1274, label %error1276, label %merge1275

error1263:                                        ; preds = %merge1248
  %printerror1264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.39, i32 0, i32 0), i32 %i1256, i32 %sub1260)
  br label %merge1262

merge1275:                                        ; preds = %merge1262, %error1276
  %moves1278 = alloca { i32, i32* }*
  %newarray1279 = alloca { i32, i32* }
  %contents1280 = alloca i32, i32 2
  %ptrdest1281 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1279, i32 0, i32 0
  %ptrdest1282 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1279, i32 0, i32 1
  store i32 2, i32* %ptrdest1281
  store i32* %contents1280, i32** %ptrdest1282
  store { i32, i32* }* %newarray1279, { i32, i32* }** %moves1278
  %field1283 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21255, i32 0, i32 3
  %state1284 = load i32, i32* %field1283
  %field1285 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21255, i32 0, i32 0
  %strategy = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1285
  %field1286 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy, i32 0, i32 0
  %nplayers1287 = load i32, i32* %field1286
  %field1288 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy, i32 0, i32 1
  %nmoves1289 = load i32, i32* %field1288
  %sitofp1290 = sitofp i32 %nmoves1289 to double
  %sitofp1291 = sitofp i32 %nplayers1287 to double
  %exp1292 = call double (double, double, ...) @pow(double %sitofp1290, double %sitofp1291)
  %size1293 = fptoui double %exp1292 to i32
  %field1294 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy, i32 0, i32 3
  %transaddr1295 = load { i32, i32 }*, { i32, i32 }** %field1294
  %state1296 = mul i32 %size1293, %state1284
  %state1297 = add i32 0, %state1296
  %access1298 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr1295, i32 %state1297
  %field1299 = getelementptr { i32, i32 }, { i32, i32 }* %access1298, i32 0, i32 0
  %output = load i32, i32* %field1299
  %addr1300 = load { i32, i32* }*, { i32, i32* }** %moves1278
  %getcon1301 = getelementptr { i32, i32* }, { i32, i32* }* %addr1300, i32 0, i32 1
  %conaddr1302 = load i32*, i32** %getcon1301
  %access1303 = getelementptr i32, i32* %conaddr1302, i32 0
  store i32 %output, i32* %access1303
  %field1304 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11269, i32 0, i32 3
  %state1305 = load i32, i32* %field1304
  %field1306 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11269, i32 0, i32 0
  %strategy1307 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1306
  %field1308 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1307, i32 0, i32 0
  %nplayers1309 = load i32, i32* %field1308
  %field1310 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1307, i32 0, i32 1
  %nmoves1311 = load i32, i32* %field1310
  %sitofp1312 = sitofp i32 %nmoves1311 to double
  %sitofp1313 = sitofp i32 %nplayers1309 to double
  %exp1314 = call double (double, double, ...) @pow(double %sitofp1312, double %sitofp1313)
  %size1315 = fptoui double %exp1314 to i32
  %field1316 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1307, i32 0, i32 3
  %transaddr1317 = load { i32, i32 }*, { i32, i32 }** %field1316
  %state1318 = mul i32 %size1315, %state1305
  %state1319 = add i32 0, %state1318
  %access1320 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr1317, i32 %state1319
  %field1321 = getelementptr { i32, i32 }, { i32, i32 }* %access1320, i32 0, i32 0
  %output1322 = load i32, i32* %field1321
  %addr1323 = load { i32, i32* }*, { i32, i32* }** %moves1278
  %getcon1324 = getelementptr { i32, i32* }, { i32, i32* }* %addr1323, i32 0, i32 1
  %conaddr1325 = load i32*, i32** %getcon1324
  %access1326 = getelementptr i32, i32* %conaddr1325, i32 1
  store i32 %output1322, i32* %access1326
  %field1327 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21255, i32 0, i32 0
  %strategy1328 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1327
  %field1329 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1328, i32 0, i32 0
  %nplayers1330 = load i32, i32* %field1329
  %field1331 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1328, i32 0, i32 1
  %nmoves1332 = load i32, i32* %field1331
  %error1333 = icmp ne i32 %nplayers1330, %nplayers1271
  br i1 %error1333, label %error1335, label %merge1334

error1276:                                        ; preds = %merge1262
  %printerror1277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @error.40, i32 0, i32 0), i32 2, i32 %nplayers1271)
  br label %merge1275

merge1334:                                        ; preds = %merge1275, %error1335
  %error1337 = icmp ne i32 %nmoves1332, %nmoves1273
  br i1 %error1337, label %error1339, label %merge1338

error1335:                                        ; preds = %merge1275
  %printerror1336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @error.41, i32 0, i32 0), i32 %nplayers1330, i32 %nplayers1271)
  br label %merge1334

merge1338:                                        ; preds = %merge1334, %error1339
  %field1341 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %rps, i32 0, i32 0
  %nplayers1342 = load i32, i32* %field1341
  %field1343 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %rps, i32 0, i32 1
  %nmoves1344 = load i32, i32* %field1343
  %field1345 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %rps, i32 0, i32 2
  %payaddr1346 = load double*, double** %field1345
  %sitofp1347 = sitofp i32 %nmoves1344 to double
  %sitofp1348 = sitofp i32 %nplayers1342 to double
  %addr1349 = load { i32, i32* }*, { i32, i32* }** %moves1278
  %getcon1350 = getelementptr { i32, i32* }, { i32, i32* }* %addr1349, i32 0, i32 1
  %conaddr1351 = load i32*, i32** %getcon1350
  %access1352 = getelementptr i32, i32* %conaddr1351, i32 0
  %move1353 = load i32, i32* %access1352
  %sitofp1354 = sitofp i32 %move1353 to double
  %temp1355 = call double (double, double, ...) @pow(double %sitofp1347, double 0.000000e+00)
  %temp21356 = fmul double %temp1355, %sitofp1354
  %current1357 = fptoui double %temp21356 to i32
  %addr1358 = load { i32, i32* }*, { i32, i32* }** %moves1278
  %getcon1359 = getelementptr { i32, i32* }, { i32, i32* }* %addr1358, i32 0, i32 1
  %conaddr1360 = load i32*, i32** %getcon1359
  %access1361 = getelementptr i32, i32* %conaddr1360, i32 1
  %move1362 = load i32, i32* %access1361
  %sitofp1363 = sitofp i32 %move1362 to double
  %temp1364 = call double (double, double, ...) @pow(double %sitofp1347, double 1.000000e+00)
  %temp21365 = fmul double %temp1364, %sitofp1363
  %current1366 = fptoui double %temp21365 to i32
  %result1367 = add i32 %current1366, 0
  %result1368 = add i32 %current1357, %result1367
  %temp31369 = mul i32 %result1368, %nplayers1342
  %playerind1370 = add i32 0, %temp31369
  %access1371 = getelementptr double, double* %payaddr1346, i32 %playerind1370
  %game_payoff = load double, double* %access1371
  %field1372 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21255, i32 0, i32 1
  %delta = load double, double* %field1372
  %field1373 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21255, i32 0, i32 2
  %payoff = load double, double* %field1373
  %field1374 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21255, i32 0, i32 3
  %state1375 = load i32, i32* %field1374
  %field1376 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21255, i32 0, i32 4
  %rounds = load i32, i32* %field1376
  %sitofp1377 = sitofp i32 %rounds to double
  %pow = call double (double, double, ...) @pow(double %delta, double %sitofp1377)
  %tmp1378 = fmul double %game_payoff, %pow
  %newpayoff = fadd double %payoff, %tmp1378
  %field1379 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1328, i32 0, i32 0
  %nplayers1380 = load i32, i32* %field1379
  %field1381 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1328, i32 0, i32 1
  %nmoves1382 = load i32, i32* %field1381
  %sitofp1383 = sitofp i32 %nmoves1382 to double
  %sitofp1384 = sitofp i32 %nplayers1380 to double
  %exp1385 = call double (double, double, ...) @pow(double %sitofp1383, double %sitofp1384)
  %size1386 = fptoui double %exp1385 to i32
  %field1387 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1328, i32 0, i32 3
  %transaddr1388 = load { i32, i32 }*, { i32, i32 }** %field1387
  %start1389 = mul i32 %size1386, %state1375
  %sitofp1390 = sitofp i32 %nmoves1382 to double
  %sitofp1391 = sitofp i32 %nplayers1380 to double
  %addr1392 = load { i32, i32* }*, { i32, i32* }** %moves1278
  %getcon1393 = getelementptr { i32, i32* }, { i32, i32* }* %addr1392, i32 0, i32 1
  %conaddr1394 = load i32*, i32** %getcon1393
  %access1395 = getelementptr i32, i32* %conaddr1394, i32 0
  %move1396 = load i32, i32* %access1395
  %sitofp1397 = sitofp i32 %move1396 to double
  %temp1398 = call double (double, double, ...) @pow(double %sitofp1390, double 0.000000e+00)
  %temp21399 = fmul double %temp1398, %sitofp1397
  %current1400 = fptoui double %temp21399 to i32
  %addr1401 = load { i32, i32* }*, { i32, i32* }** %moves1278
  %getcon1402 = getelementptr { i32, i32* }, { i32, i32* }* %addr1401, i32 0, i32 1
  %conaddr1403 = load i32*, i32** %getcon1402
  %access1404 = getelementptr i32, i32* %conaddr1403, i32 1
  %move1405 = load i32, i32* %access1404
  %sitofp1406 = sitofp i32 %move1405 to double
  %temp1407 = call double (double, double, ...) @pow(double %sitofp1390, double 1.000000e+00)
  %temp21408 = fmul double %temp1407, %sitofp1406
  %current1409 = fptoui double %temp21408 to i32
  %result1410 = add i32 %current1409, 0
  %result1411 = add i32 %current1400, %result1410
  %index1412 = add i32 %start1389, %result1411
  %access1413 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr1388, i32 %index1412
  %field1414 = getelementptr { i32, i32 }, { i32, i32 }* %access1413, i32 0, i32 1
  %newstate = load i32, i32* %field1414
  %newrounds = add i32 1, %rounds
  %field1415 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21255, i32 0, i32 2
  %field1416 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21255, i32 0, i32 3
  %field1417 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21255, i32 0, i32 4
  store double %newpayoff, double* %field1415
  store i32 %newstate, i32* %field1416
  store i32 %newrounds, i32* %field1417
  %field1418 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11269, i32 0, i32 0
  %strategy1419 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1418
  %field1420 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1419, i32 0, i32 0
  %nplayers1421 = load i32, i32* %field1420
  %field1422 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1419, i32 0, i32 1
  %nmoves1423 = load i32, i32* %field1422
  %error1424 = icmp ne i32 %nplayers1421, %nplayers1271
  br i1 %error1424, label %error1426, label %merge1425

error1339:                                        ; preds = %merge1334
  %printerror1340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @error.42, i32 0, i32 0), i32 %nmoves1332, i32 %nmoves1273)
  br label %merge1338

merge1425:                                        ; preds = %merge1338, %error1426
  %error1428 = icmp ne i32 %nmoves1423, %nmoves1273
  br i1 %error1428, label %error1430, label %merge1429

error1426:                                        ; preds = %merge1338
  %printerror1427 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @error.43, i32 0, i32 0), i32 %nplayers1421, i32 %nplayers1271)
  br label %merge1425

merge1429:                                        ; preds = %merge1425, %error1430
  %field1432 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %rps, i32 0, i32 0
  %nplayers1433 = load i32, i32* %field1432
  %field1434 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %rps, i32 0, i32 1
  %nmoves1435 = load i32, i32* %field1434
  %field1436 = getelementptr { i32, i32, double* }, { i32, i32, double* }* %rps, i32 0, i32 2
  %payaddr1437 = load double*, double** %field1436
  %sitofp1438 = sitofp i32 %nmoves1435 to double
  %sitofp1439 = sitofp i32 %nplayers1433 to double
  %addr1440 = load { i32, i32* }*, { i32, i32* }** %moves1278
  %getcon1441 = getelementptr { i32, i32* }, { i32, i32* }* %addr1440, i32 0, i32 1
  %conaddr1442 = load i32*, i32** %getcon1441
  %access1443 = getelementptr i32, i32* %conaddr1442, i32 0
  %move1444 = load i32, i32* %access1443
  %sitofp1445 = sitofp i32 %move1444 to double
  %temp1446 = call double (double, double, ...) @pow(double %sitofp1438, double 0.000000e+00)
  %temp21447 = fmul double %temp1446, %sitofp1445
  %current1448 = fptoui double %temp21447 to i32
  %addr1449 = load { i32, i32* }*, { i32, i32* }** %moves1278
  %getcon1450 = getelementptr { i32, i32* }, { i32, i32* }* %addr1449, i32 0, i32 1
  %conaddr1451 = load i32*, i32** %getcon1450
  %access1452 = getelementptr i32, i32* %conaddr1451, i32 1
  %move1453 = load i32, i32* %access1452
  %sitofp1454 = sitofp i32 %move1453 to double
  %temp1455 = call double (double, double, ...) @pow(double %sitofp1438, double 1.000000e+00)
  %temp21456 = fmul double %temp1455, %sitofp1454
  %current1457 = fptoui double %temp21456 to i32
  %result1458 = add i32 %current1457, 0
  %result1459 = add i32 %current1448, %result1458
  %temp31460 = mul i32 %result1459, %nplayers1433
  %playerind1461 = add i32 1, %temp31460
  %access1462 = getelementptr double, double* %payaddr1437, i32 %playerind1461
  %game_payoff1463 = load double, double* %access1462
  %field1464 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11269, i32 0, i32 1
  %delta1465 = load double, double* %field1464
  %field1466 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11269, i32 0, i32 2
  %payoff1467 = load double, double* %field1466
  %field1468 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11269, i32 0, i32 3
  %state1469 = load i32, i32* %field1468
  %field1470 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11269, i32 0, i32 4
  %rounds1471 = load i32, i32* %field1470
  %sitofp1472 = sitofp i32 %rounds1471 to double
  %pow1473 = call double (double, double, ...) @pow(double %delta1465, double %sitofp1472)
  %tmp1474 = fmul double %game_payoff1463, %pow1473
  %newpayoff1475 = fadd double %payoff1467, %tmp1474
  %field1476 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1419, i32 0, i32 0
  %nplayers1477 = load i32, i32* %field1476
  %field1478 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1419, i32 0, i32 1
  %nmoves1479 = load i32, i32* %field1478
  %sitofp1480 = sitofp i32 %nmoves1479 to double
  %sitofp1481 = sitofp i32 %nplayers1477 to double
  %exp1482 = call double (double, double, ...) @pow(double %sitofp1480, double %sitofp1481)
  %size1483 = fptoui double %exp1482 to i32
  %field1484 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %strategy1419, i32 0, i32 3
  %transaddr1485 = load { i32, i32 }*, { i32, i32 }** %field1484
  %start1486 = mul i32 %size1483, %state1469
  %sitofp1487 = sitofp i32 %nmoves1479 to double
  %sitofp1488 = sitofp i32 %nplayers1477 to double
  %addr1489 = load { i32, i32* }*, { i32, i32* }** %moves1278
  %getcon1490 = getelementptr { i32, i32* }, { i32, i32* }* %addr1489, i32 0, i32 1
  %conaddr1491 = load i32*, i32** %getcon1490
  %access1492 = getelementptr i32, i32* %conaddr1491, i32 0
  %move1493 = load i32, i32* %access1492
  %sitofp1494 = sitofp i32 %move1493 to double
  %temp1495 = call double (double, double, ...) @pow(double %sitofp1487, double 0.000000e+00)
  %temp21496 = fmul double %temp1495, %sitofp1494
  %current1497 = fptoui double %temp21496 to i32
  %addr1498 = load { i32, i32* }*, { i32, i32* }** %moves1278
  %getcon1499 = getelementptr { i32, i32* }, { i32, i32* }* %addr1498, i32 0, i32 1
  %conaddr1500 = load i32*, i32** %getcon1499
  %access1501 = getelementptr i32, i32* %conaddr1500, i32 1
  %move1502 = load i32, i32* %access1501
  %sitofp1503 = sitofp i32 %move1502 to double
  %temp1504 = call double (double, double, ...) @pow(double %sitofp1487, double 1.000000e+00)
  %temp21505 = fmul double %temp1504, %sitofp1503
  %current1506 = fptoui double %temp21505 to i32
  %result1507 = add i32 %current1506, 0
  %result1508 = add i32 %current1497, %result1507
  %index1509 = add i32 %start1486, %result1508
  %access1510 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr1485, i32 %index1509
  %field1511 = getelementptr { i32, i32 }, { i32, i32 }* %access1510, i32 0, i32 1
  %newstate1512 = load i32, i32* %field1511
  %newrounds1513 = add i32 1, %rounds1471
  %field1514 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11269, i32 0, i32 2
  %field1515 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11269, i32 0, i32 3
  %field1516 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11269, i32 0, i32 4
  store double %newpayoff1475, double* %field1514
  store i32 %newstate1512, i32* %field1515
  store i32 %newrounds1513, i32* %field1516
  br label %merge1517

error1430:                                        ; preds = %merge1425
  %printerror1431 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @error.44, i32 0, i32 0), i32 %nmoves1423, i32 %nmoves1273)
  br label %merge1429

merge1517:                                        ; preds = %merge1429
  %i1518 = load i32, i32* %i1238
  %iplusone1519 = add i32 %i1518, 1
  store i32 %iplusone1519, i32* %i1238
  %loadi1520 = load i32, i32* %i1238
  %addr1521 = load { i32, i32* }*, { i32, i32* }** %eptr1230
  %getcon1522 = getelementptr { i32, i32* }, { i32, i32* }* %addr1521, i32 0, i32 1
  %conaddr1523 = load i32*, i32** %getcon1522
  %access1524 = getelementptr i32, i32* %conaddr1523, i32 %loadi1520
  %current1525 = load i32, i32* %access1524
  store i32 %current1525, i32* %r
  br label %for1239

merge1528:                                        ; preds = %for1239
  %i1529 = load i32, i32* %i1125
  %payoffs1 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getlen1530 = getelementptr { i32, double* }, { i32, double* }* %payoffs1, i32 0, i32 0
  %arrlen1531 = load i32, i32* %getlen1530
  %sub1532 = sub i32 %arrlen1531, 1
  %error1533 = icmp sgt i32 %i1529, %sub1532
  br i1 %error1533, label %error1535, label %merge1534

merge1534:                                        ; preds = %merge1528, %error1535
  %addr1537 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon1538 = getelementptr { i32, double* }, { i32, double* }* %addr1537, i32 0, i32 1
  %conaddr1539 = load double*, double** %getcon1538
  %access1540 = getelementptr double, double* %conaddr1539, i32 %i1529
  %payoffs11541 = load double, double* %access1540
  %i1542 = load i32, i32* %i1125
  %players11543 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen1544 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11543, i32 0, i32 0
  %arrlen1545 = load i32, i32* %getlen1544
  %sub1546 = sub i32 %arrlen1545, 1
  %error1547 = icmp sgt i32 %i1542, %sub1546
  br i1 %error1547, label %error1549, label %merge1548

error1535:                                        ; preds = %merge1528
  %printerror1536 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.45, i32 0, i32 0), i32 %i1529, i32 %sub1532)
  br label %merge1534

merge1548:                                        ; preds = %merge1534, %error1549
  %addr1551 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1552 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1551, i32 0, i32 1
  %conaddr1553 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1552
  %access1554 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1553, i32 %i1542
  %players11555 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1554
  %field1556 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11555, i32 0, i32 2
  %fieldtwo = load double, double* %field1556
  %tmp1557 = fadd double %payoffs11541, %fieldtwo
  %i1558 = load i32, i32* %i1125
  %addr1559 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon1560 = getelementptr { i32, double* }, { i32, double* }* %addr1559, i32 0, i32 1
  %conaddr1561 = load double*, double** %getcon1560
  %access1562 = getelementptr double, double* %conaddr1561, i32 %i1558
  store double %tmp1557, double* %access1562
  %j1563 = load i32, i32* %j
  %payoffs2 = load { i32, double* }*, { i32, double* }** @payoffs2
  %getlen1564 = getelementptr { i32, double* }, { i32, double* }* %payoffs2, i32 0, i32 0
  %arrlen1565 = load i32, i32* %getlen1564
  %sub1566 = sub i32 %arrlen1565, 1
  %error1567 = icmp sgt i32 %j1563, %sub1566
  br i1 %error1567, label %error1569, label %merge1568

error1549:                                        ; preds = %merge1534
  %printerror1550 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.46, i32 0, i32 0), i32 %i1542, i32 %sub1546)
  br label %merge1548

merge1568:                                        ; preds = %merge1548, %error1569
  %addr1571 = load { i32, double* }*, { i32, double* }** @payoffs2
  %getcon1572 = getelementptr { i32, double* }, { i32, double* }* %addr1571, i32 0, i32 1
  %conaddr1573 = load double*, double** %getcon1572
  %access1574 = getelementptr double, double* %conaddr1573, i32 %j1563
  %payoffs21575 = load double, double* %access1574
  %j1576 = load i32, i32* %j
  %players21577 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen1578 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players21577, i32 0, i32 0
  %arrlen1579 = load i32, i32* %getlen1578
  %sub1580 = sub i32 %arrlen1579, 1
  %error1581 = icmp sgt i32 %j1576, %sub1580
  br i1 %error1581, label %error1583, label %merge1582

error1569:                                        ; preds = %merge1548
  %printerror1570 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.47, i32 0, i32 0), i32 %j1563, i32 %sub1566)
  br label %merge1568

merge1582:                                        ; preds = %merge1568, %error1583
  %addr1585 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1586 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1585, i32 0, i32 1
  %conaddr1587 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1586
  %access1588 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1587, i32 %j1576
  %players21589 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1588
  %field1590 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21589, i32 0, i32 2
  %fieldtwo1591 = load double, double* %field1590
  %tmp1592 = fadd double %payoffs21575, %fieldtwo1591
  %j1593 = load i32, i32* %j
  %addr1594 = load { i32, double* }*, { i32, double* }** @payoffs2
  %getcon1595 = getelementptr { i32, double* }, { i32, double* }* %addr1594, i32 0, i32 1
  %conaddr1596 = load double*, double** %getcon1595
  %access1597 = getelementptr double, double* %conaddr1596, i32 %j1593
  store double %tmp1592, double* %access1597
  br label %merge1598

error1583:                                        ; preds = %merge1568
  %printerror1584 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.48, i32 0, i32 0), i32 %j1576, i32 %sub1580)
  br label %merge1582

merge1598:                                        ; preds = %merge1582
  %i1599 = load i32, i32* %i1162
  %iplusone1600 = add i32 %i1599, 1
  store i32 %iplusone1600, i32* %i1162
  %loadi1601 = load i32, i32* %i1162
  %addr1602 = load { i32, i32* }*, { i32, i32* }** %eptr1154
  %getcon1603 = getelementptr { i32, i32* }, { i32, i32* }* %addr1602, i32 0, i32 1
  %conaddr1604 = load i32*, i32** %getcon1603
  %access1605 = getelementptr i32, i32* %conaddr1604, i32 %loadi1601
  %current1606 = load i32, i32* %access1605
  store i32 %current1606, i32* %j
  br label %for1163

merge1609:                                        ; preds = %for1163
  br label %merge1610

merge1610:                                        ; preds = %merge1609
  %i1611 = load i32, i32* %i1126
  %iplusone1612 = add i32 %i1611, 1
  store i32 %iplusone1612, i32* %i1126
  %loadi1613 = load i32, i32* %i1126
  %addr1614 = load { i32, i32* }*, { i32, i32* }** %eptr1117
  %getcon1615 = getelementptr { i32, i32* }, { i32, i32* }* %addr1614, i32 0, i32 1
  %conaddr1616 = load i32*, i32** %getcon1615
  %access1617 = getelementptr i32, i32* %conaddr1616, i32 %loadi1613
  %current1618 = load i32, i32* %access1617
  store i32 %current1618, i32* %i1125
  br label %for1127

merge1621:                                        ; preds = %for1127
  %payoffs11622 = load { i32, double* }*, { i32, double* }** @payoffs1
  %players11623 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  call void ({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, double* }*, ...) @sort({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11623, { i32, double* }* %payoffs11622)
  %payoffs21624 = load { i32, double* }*, { i32, double* }** @payoffs2
  %players21625 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  call void ({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, double* }*, ...) @sort({ i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players21625, { i32, double* }* %payoffs21624)
  %newarray1626 = alloca { i32, i32* }
  %contents1627 = alloca i32, i32 2
  %ptrdest1628 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1626, i32 0, i32 0
  %ptrdest1629 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1626, i32 0, i32 1
  store i32 2, i32* %ptrdest1628
  store i32* %contents1627, i32** %ptrdest1629
  %rangeptr1630 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1626, { i32, i32* }** %rangeptr1630
  %addr1631 = load { i32, i32* }*, { i32, i32* }** %rangeptr1630
  %getcon1632 = getelementptr { i32, i32* }, { i32, i32* }* %addr1631, i32 0, i32 1
  %conaddr1633 = load i32*, i32** %getcon1632
  %access1634 = getelementptr i32, i32* %conaddr1633, i32 1
  br label %range1635

range1635:                                        ; preds = %merge1621
  %i1636 = alloca i32
  store i32 0, i32* %i1636
  br label %while1637

while1637:                                        ; preds = %while_loop1638, %range1635
  %lastentry1647 = load i32, i32* %access1634
  %rangecomp1648 = icmp ne i32 %lastentry1647, 1
  br i1 %rangecomp1648, label %while_loop1638, label %merge1649

while_loop1638:                                   ; preds = %while1637
  %loadi1639 = load i32, i32* %i1636
  %addr1640 = load { i32, i32* }*, { i32, i32* }** %rangeptr1630
  %getcon1641 = getelementptr { i32, i32* }, { i32, i32* }* %addr1640, i32 0, i32 1
  %conaddr1642 = load i32*, i32** %getcon1641
  %access1643 = getelementptr i32, i32* %conaddr1642, i32 %loadi1639
  %calcval1644 = add i32 0, %loadi1639
  store i32 %calcval1644, i32* %access1643
  %i1645 = load i32, i32* %i1636
  %iplusone1646 = add i32 %i1645, 1
  store i32 %iplusone1646, i32* %i1636
  br label %while1637

merge1649:                                        ; preds = %while1637
  %eptr1650 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray1626, { i32, i32* }** %eptr1650
  %getlen1651 = getelementptr { i32, i32* }, { i32, i32* }* %newarray1626, i32 0, i32 0
  %size1652 = load i32, i32* %getlen1651
  %addr1653 = load { i32, i32* }*, { i32, i32* }** %eptr1650
  %getcon1654 = getelementptr { i32, i32* }, { i32, i32* }* %addr1653, i32 0, i32 1
  %conaddr1655 = load i32*, i32** %getcon1654
  %access1656 = getelementptr i32, i32* %conaddr1655, i32 0
  %current1657 = load i32, i32* %access1656
  %i1658 = alloca i32
  store i32 %current1657, i32* %i1658
  %i1659 = alloca i32
  store i32 0, i32* %i1659
  br label %for1660

for1660:                                          ; preds = %merge3020, %merge1649
  %i3029 = load i32, i32* %i1659
  %forcomp3030 = icmp ne i32 %i3029, %size1652
  br i1 %forcomp3030, label %for_loop1661, label %merge3031

for_loop1661:                                     ; preds = %for1660
  br label %block1662

block1662:                                        ; preds = %for_loop1661
  %payoffs11663 = load { i32, double* }*, { i32, double* }** @payoffs1
  %randindex_result = call i32 ({ i32, double* }*, ...) @randindex({ i32, double* }* %payoffs11663)
  %m1 = alloca i32
  store i32 %randindex_result, i32* %m1
  %payoffs11664 = load { i32, double* }*, { i32, double* }** @payoffs1
  %randindex_result1665 = call i32 ({ i32, double* }*, ...) @randindex({ i32, double* }* %payoffs11664)
  %f1 = alloca i32
  store i32 %randindex_result1665, i32* %f1
  %m11666 = load i32, i32* %m1
  %f11667 = load i32, i32* %f1
  %tmp1668 = icmp eq i32 %m11666, %f11667
  br i1 %tmp1668, label %then1670, label %else1686

merge1669:                                        ; preds = %merge1688, %merge1685
  %payoffs21689 = load { i32, double* }*, { i32, double* }** @payoffs2
  %randindex_result1690 = call i32 ({ i32, double* }*, ...) @randindex({ i32, double* }* %payoffs21689)
  %m2 = alloca i32
  store i32 %randindex_result1690, i32* %m2
  %payoffs21691 = load { i32, double* }*, { i32, double* }** @payoffs2
  %randindex_result1692 = call i32 ({ i32, double* }*, ...) @randindex({ i32, double* }* %payoffs21691)
  %f2 = alloca i32
  store i32 %randindex_result1692, i32* %f2
  %m21693 = load i32, i32* %m2
  %f21694 = load i32, i32* %f2
  %tmp1695 = icmp eq i32 %m21693, %f21694
  br i1 %tmp1695, label %then1697, label %else1713

then1670:                                         ; preds = %block1662
  br label %block1671

block1671:                                        ; preds = %then1670
  %f11672 = load i32, i32* %f1
  %tmp1673 = icmp eq i32 %f11672, 9
  br i1 %tmp1673, label %then1675, label %else1680

merge1674:                                        ; preds = %merge1684, %merge1679
  br label %merge1685

then1675:                                         ; preds = %block1671
  br label %block1676

block1676:                                        ; preds = %then1675
  %m11677 = load i32, i32* %m1
  %tmp1678 = sub i32 %m11677, 1
  store i32 %tmp1678, i32* %m1
  br label %merge1679

merge1679:                                        ; preds = %block1676
  br label %merge1674

else1680:                                         ; preds = %block1671
  br label %block1681

block1681:                                        ; preds = %else1680
  %f11682 = load i32, i32* %f1
  %tmp1683 = add i32 %f11682, 1
  store i32 %tmp1683, i32* %f1
  br label %merge1684

merge1684:                                        ; preds = %block1681
  br label %merge1674

merge1685:                                        ; preds = %merge1674
  br label %merge1669

else1686:                                         ; preds = %block1662
  br label %block1687

block1687:                                        ; preds = %else1686
  br label %merge1688

merge1688:                                        ; preds = %block1687
  br label %merge1669

merge1696:                                        ; preds = %merge1715, %merge1712
  %m11716 = load i32, i32* %m1
  %players11717 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen1718 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11717, i32 0, i32 0
  %arrlen1719 = load i32, i32* %getlen1718
  %sub1720 = sub i32 %arrlen1719, 1
  %error1721 = icmp sgt i32 %m11716, %sub1720
  br i1 %error1721, label %error1723, label %merge1722

then1697:                                         ; preds = %merge1669
  br label %block1698

block1698:                                        ; preds = %then1697
  %f21699 = load i32, i32* %f2
  %tmp1700 = icmp eq i32 %f21699, 9
  br i1 %tmp1700, label %then1702, label %else1707

merge1701:                                        ; preds = %merge1711, %merge1706
  br label %merge1712

then1702:                                         ; preds = %block1698
  br label %block1703

block1703:                                        ; preds = %then1702
  %m21704 = load i32, i32* %m2
  %tmp1705 = sub i32 %m21704, 1
  store i32 %tmp1705, i32* %m2
  br label %merge1706

merge1706:                                        ; preds = %block1703
  br label %merge1701

else1707:                                         ; preds = %block1698
  br label %block1708

block1708:                                        ; preds = %else1707
  %f21709 = load i32, i32* %f2
  %tmp1710 = add i32 %f21709, 1
  store i32 %tmp1710, i32* %f2
  br label %merge1711

merge1711:                                        ; preds = %block1708
  br label %merge1701

merge1712:                                        ; preds = %merge1701
  br label %merge1696

else1713:                                         ; preds = %merge1669
  br label %block1714

block1714:                                        ; preds = %else1713
  br label %merge1715

merge1715:                                        ; preds = %block1714
  br label %merge1696

merge1722:                                        ; preds = %merge1696, %error1723
  %addr1725 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1726 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1725, i32 0, i32 1
  %conaddr1727 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1726
  %access1728 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1727, i32 %m11716
  %players11729 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1728
  %field1730 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11729, i32 0, i32 0
  %fieldzero = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1730
  %newplayer1731 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest1732 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1731, i32 0, i32 0
  %deltadest1733 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1731, i32 0, i32 1
  %payoffdest1734 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1731, i32 0, i32 2
  %statedest1735 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1731, i32 0, i32 3
  %roundsdest1736 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1731, i32 0, i32 4
  %field1737 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 0
  %nplayers1738 = load i32, i32* %field1737
  %field1739 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 1
  %nmoves1740 = load i32, i32* %field1739
  %field1741 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 2
  %nstates1742 = load i32, i32* %field1741
  %newstrategy1743 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp1744 = sitofp i32 %nmoves1740 to double
  %sitofp1745 = sitofp i32 %nplayers1738 to double
  %exp1746 = call double (double, double, ...) @pow(double %sitofp1744, double %sitofp1745)
  %size1747 = fptoui double %exp1746 to i32
  %size1748 = mul i32 %size1747, %nstates1742
  %trans1749 = alloca { i32, i32 }, i32 %size1748
  %nplayersdest1750 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1743, i32 0, i32 0
  %nmovesdest1751 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1743, i32 0, i32 1
  %nstatesdest1752 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1743, i32 0, i32 2
  %ptrdest1753 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1743, i32 0, i32 3
  store i32 %nplayers1738, i32* %nplayersdest1750
  store i32 %nmoves1740, i32* %nmovesdest1751
  store i32 %nstates1742, i32* %nstatesdest1752
  store { i32, i32 }* %trans1749, { i32, i32 }** %ptrdest1753
  %field1754 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 0
  %nplayers1755 = load i32, i32* %field1754
  %field1756 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 1
  %nmoves1757 = load i32, i32* %field1756
  %field1758 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 2
  %nstates1759 = load i32, i32* %field1758
  %sitofp1760 = sitofp i32 %nmoves1757 to double
  %sitofp1761 = sitofp i32 %nplayers1755 to double
  %exp1762 = call double (double, double, ...) @pow(double %sitofp1760, double %sitofp1761)
  %size1763 = fptoui double %exp1762 to i32
  %size1764 = mul i32 %size1763, %nstates1759
  %sitofp1765 = sitofp i32 %size1764 to double
  %sitofp1766 = sitofp i32 %nmoves1757 to double
  %sitofp1767 = sitofp i32 %nstates1759 to double
  %fcopy_size1768 = fmul double %sitofp1765, 1.000000e+00
  %copy_size1769 = fptoui double %fcopy_size1768 to i32
  %transi1770 = alloca i32
  store i32 0, i32* %transi1770
  br label %copycond1771

error1723:                                        ; preds = %merge1696
  %printerror1724 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.49, i32 0, i32 0), i32 %m11716, i32 %sub1720)
  br label %merge1722

copycond1771:                                     ; preds = %merge1805, %merge1722
  %transi1815 = load i32, i32* %transi1770
  %statecomp1816 = icmp slt i32 %transi1815, %copy_size1769
  br i1 %statecomp1816, label %copyloop1772, label %merge1817

copyloop1772:                                     ; preds = %copycond1771
  %load1773 = load i32, i32* %transi1770
  %field1774 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero, i32 0, i32 3
  %sourceaddr1775 = load { i32, i32 }*, { i32, i32 }** %field1774
  %field1776 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1743, i32 0, i32 3
  %destaddr1777 = load { i32, i32 }*, { i32, i32 }** %field1776
  %source1778 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr1775, i32 %load1773
  %dest1779 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr1777, i32 %load1773
  %field1780 = getelementptr { i32, i32 }, { i32, i32 }* %source1778, i32 0, i32 0
  %source_output1781 = load i32, i32* %field1780
  %field1782 = getelementptr { i32, i32 }, { i32, i32 }* %dest1779, i32 0, i32 0
  %field1783 = getelementptr { i32, i32 }, { i32, i32 }* %source1778, i32 0, i32 1
  %source_nextstate1784 = load i32, i32* %field1783
  %field1785 = getelementptr { i32, i32 }, { i32, i32 }* %dest1779, i32 0, i32 1
  %rand1786 = call i32 (...) @rand()
  %randint1787 = urem i32 %rand1786, 32767
  %sitofp1788 = sitofp i32 %randint1787 to double
  %randfloat1789 = fdiv double %sitofp1788, 3.276700e+04
  %randcomp1790 = fcmp olt double %randfloat1789, 0.000000e+00
  br i1 %randcomp1790, label %then1792, label %else1799

merge1791:                                        ; preds = %else1799, %then1792
  %rand1800 = call i32 (...) @rand()
  %randint1801 = urem i32 %rand1800, 32767
  %sitofp1802 = sitofp i32 %randint1801 to double
  %randfloat1803 = fdiv double %sitofp1802, 3.276700e+04
  %randcomp1804 = fcmp olt double %randfloat1803, 0.000000e+00
  br i1 %randcomp1804, label %then1806, label %else1813

then1792:                                         ; preds = %copyloop1772
  %rand1793 = call i32 (...) @rand()
  %randint1794 = urem i32 %rand1793, 32767
  %sitofp1795 = sitofp i32 %randint1794 to double
  %randfloat1796 = fdiv double %sitofp1795, 3.276700e+04
  %frandmove1797 = fmul double %randfloat1796, %sitofp1766
  %randmove1798 = fptoui double %frandmove1797 to i32
  store i32 %randmove1798, i32* %field1782
  br label %merge1791

else1799:                                         ; preds = %copyloop1772
  store i32 %source_output1781, i32* %field1782
  br label %merge1791

merge1805:                                        ; preds = %else1813, %then1806
  %inc1814 = add i32 %load1773, 1
  store i32 %inc1814, i32* %transi1770
  br label %copycond1771

then1806:                                         ; preds = %merge1791
  %rand1807 = call i32 (...) @rand()
  %randint1808 = urem i32 %rand1807, 32767
  %sitofp1809 = sitofp i32 %randint1808 to double
  %randfloat1810 = fdiv double %sitofp1809, 3.276700e+04
  %frandstate1811 = fmul double %randfloat1810, %sitofp1767
  %randstate1812 = fptoui double %frandstate1811 to i32
  store i32 %randstate1812, i32* %field1785
  br label %merge1805

else1813:                                         ; preds = %merge1791
  store i32 %source_nextstate1784, i32* %field1785
  br label %merge1805

merge1817:                                        ; preds = %copycond1771
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy1743, { i32, i32, i32, { i32, i32 }* }** %strategydest1732
  store double 1.000000e+00, double* %deltadest1733
  store double 0.000000e+00, double* %payoffdest1734
  store i32 0, i32* %statedest1735
  store i32 0, i32* %roundsdest1736
  %i1818 = load i32, i32* %i1658
  %tmp1819 = mul i32 2, %i1818
  %tmp1820 = add i32 6, %tmp1819
  %addr1821 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1822 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1821, i32 0, i32 1
  %conaddr1823 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1822
  %access1824 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1823, i32 %tmp1820
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1731, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1824
  %f11825 = load i32, i32* %f1
  %players11826 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen1827 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players11826, i32 0, i32 0
  %arrlen1828 = load i32, i32* %getlen1827
  %sub1829 = sub i32 %arrlen1828, 1
  %error1830 = icmp sgt i32 %f11825, %sub1829
  br i1 %error1830, label %error1832, label %merge1831

merge1831:                                        ; preds = %merge1817, %error1832
  %addr1834 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1835 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1834, i32 0, i32 1
  %conaddr1836 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1835
  %access1837 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1836, i32 %f11825
  %players11838 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1837
  %field1839 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players11838, i32 0, i32 0
  %fieldzero1840 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1839
  %newplayer1841 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest1842 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1841, i32 0, i32 0
  %deltadest1843 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1841, i32 0, i32 1
  %payoffdest1844 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1841, i32 0, i32 2
  %statedest1845 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1841, i32 0, i32 3
  %roundsdest1846 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1841, i32 0, i32 4
  %field1847 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1840, i32 0, i32 0
  %nplayers1848 = load i32, i32* %field1847
  %field1849 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1840, i32 0, i32 1
  %nmoves1850 = load i32, i32* %field1849
  %field1851 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1840, i32 0, i32 2
  %nstates1852 = load i32, i32* %field1851
  %newstrategy1853 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp1854 = sitofp i32 %nmoves1850 to double
  %sitofp1855 = sitofp i32 %nplayers1848 to double
  %exp1856 = call double (double, double, ...) @pow(double %sitofp1854, double %sitofp1855)
  %size1857 = fptoui double %exp1856 to i32
  %size1858 = mul i32 %size1857, %nstates1852
  %trans1859 = alloca { i32, i32 }, i32 %size1858
  %nplayersdest1860 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1853, i32 0, i32 0
  %nmovesdest1861 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1853, i32 0, i32 1
  %nstatesdest1862 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1853, i32 0, i32 2
  %ptrdest1863 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1853, i32 0, i32 3
  store i32 %nplayers1848, i32* %nplayersdest1860
  store i32 %nmoves1850, i32* %nmovesdest1861
  store i32 %nstates1852, i32* %nstatesdest1862
  store { i32, i32 }* %trans1859, { i32, i32 }** %ptrdest1863
  %field1864 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1840, i32 0, i32 0
  %nplayers1865 = load i32, i32* %field1864
  %field1866 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1840, i32 0, i32 1
  %nmoves1867 = load i32, i32* %field1866
  %field1868 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1840, i32 0, i32 2
  %nstates1869 = load i32, i32* %field1868
  %sitofp1870 = sitofp i32 %nmoves1867 to double
  %sitofp1871 = sitofp i32 %nplayers1865 to double
  %exp1872 = call double (double, double, ...) @pow(double %sitofp1870, double %sitofp1871)
  %size1873 = fptoui double %exp1872 to i32
  %size1874 = mul i32 %size1873, %nstates1869
  %sitofp1875 = sitofp i32 %size1874 to double
  %sitofp1876 = sitofp i32 %nmoves1867 to double
  %sitofp1877 = sitofp i32 %nstates1869 to double
  %fcopy_size1878 = fmul double %sitofp1875, 1.000000e+00
  %copy_size1879 = fptoui double %fcopy_size1878 to i32
  %transi1880 = alloca i32
  store i32 0, i32* %transi1880
  br label %copycond1881

error1832:                                        ; preds = %merge1817
  %printerror1833 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.50, i32 0, i32 0), i32 %f11825, i32 %sub1829)
  br label %merge1831

copycond1881:                                     ; preds = %merge1915, %merge1831
  %transi1925 = load i32, i32* %transi1880
  %statecomp1926 = icmp slt i32 %transi1925, %copy_size1879
  br i1 %statecomp1926, label %copyloop1882, label %merge1927

copyloop1882:                                     ; preds = %copycond1881
  %load1883 = load i32, i32* %transi1880
  %field1884 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1840, i32 0, i32 3
  %sourceaddr1885 = load { i32, i32 }*, { i32, i32 }** %field1884
  %field1886 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1853, i32 0, i32 3
  %destaddr1887 = load { i32, i32 }*, { i32, i32 }** %field1886
  %source1888 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr1885, i32 %load1883
  %dest1889 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr1887, i32 %load1883
  %field1890 = getelementptr { i32, i32 }, { i32, i32 }* %source1888, i32 0, i32 0
  %source_output1891 = load i32, i32* %field1890
  %field1892 = getelementptr { i32, i32 }, { i32, i32 }* %dest1889, i32 0, i32 0
  %field1893 = getelementptr { i32, i32 }, { i32, i32 }* %source1888, i32 0, i32 1
  %source_nextstate1894 = load i32, i32* %field1893
  %field1895 = getelementptr { i32, i32 }, { i32, i32 }* %dest1889, i32 0, i32 1
  %rand1896 = call i32 (...) @rand()
  %randint1897 = urem i32 %rand1896, 32767
  %sitofp1898 = sitofp i32 %randint1897 to double
  %randfloat1899 = fdiv double %sitofp1898, 3.276700e+04
  %randcomp1900 = fcmp olt double %randfloat1899, 0.000000e+00
  br i1 %randcomp1900, label %then1902, label %else1909

merge1901:                                        ; preds = %else1909, %then1902
  %rand1910 = call i32 (...) @rand()
  %randint1911 = urem i32 %rand1910, 32767
  %sitofp1912 = sitofp i32 %randint1911 to double
  %randfloat1913 = fdiv double %sitofp1912, 3.276700e+04
  %randcomp1914 = fcmp olt double %randfloat1913, 0.000000e+00
  br i1 %randcomp1914, label %then1916, label %else1923

then1902:                                         ; preds = %copyloop1882
  %rand1903 = call i32 (...) @rand()
  %randint1904 = urem i32 %rand1903, 32767
  %sitofp1905 = sitofp i32 %randint1904 to double
  %randfloat1906 = fdiv double %sitofp1905, 3.276700e+04
  %frandmove1907 = fmul double %randfloat1906, %sitofp1876
  %randmove1908 = fptoui double %frandmove1907 to i32
  store i32 %randmove1908, i32* %field1892
  br label %merge1901

else1909:                                         ; preds = %copyloop1882
  store i32 %source_output1891, i32* %field1892
  br label %merge1901

merge1915:                                        ; preds = %else1923, %then1916
  %inc1924 = add i32 %load1883, 1
  store i32 %inc1924, i32* %transi1880
  br label %copycond1881

then1916:                                         ; preds = %merge1901
  %rand1917 = call i32 (...) @rand()
  %randint1918 = urem i32 %rand1917, 32767
  %sitofp1919 = sitofp i32 %randint1918 to double
  %randfloat1920 = fdiv double %sitofp1919, 3.276700e+04
  %frandstate1921 = fmul double %randfloat1920, %sitofp1877
  %randstate1922 = fptoui double %frandstate1921 to i32
  store i32 %randstate1922, i32* %field1895
  br label %merge1915

else1923:                                         ; preds = %merge1901
  store i32 %source_nextstate1894, i32* %field1895
  br label %merge1915

merge1927:                                        ; preds = %copycond1881
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy1853, { i32, i32, i32, { i32, i32 }* }** %strategydest1842
  store double 1.000000e+00, double* %deltadest1843
  store double 0.000000e+00, double* %payoffdest1844
  store i32 0, i32* %statedest1845
  store i32 0, i32* %roundsdest1846
  %i1928 = load i32, i32* %i1658
  %tmp1929 = mul i32 2, %i1928
  %tmp1930 = add i32 6, %tmp1929
  %tmp1931 = add i32 %tmp1930, 1
  %addr1932 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon1933 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1932, i32 0, i32 1
  %conaddr1934 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1933
  %access1935 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1934, i32 %tmp1931
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1841, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1935
  %m21936 = load i32, i32* %m2
  %players21937 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen1938 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players21937, i32 0, i32 0
  %arrlen1939 = load i32, i32* %getlen1938
  %sub1940 = sub i32 %arrlen1939, 1
  %error1941 = icmp sgt i32 %m21936, %sub1940
  br i1 %error1941, label %error1943, label %merge1942

merge1942:                                        ; preds = %merge1927, %error1943
  %addr1945 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon1946 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr1945, i32 0, i32 1
  %conaddr1947 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon1946
  %access1948 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr1947, i32 %m21936
  %players21949 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access1948
  %field1950 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players21949, i32 0, i32 0
  %fieldzero1951 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field1950
  %newplayer1952 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest1953 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1952, i32 0, i32 0
  %deltadest1954 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1952, i32 0, i32 1
  %payoffdest1955 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1952, i32 0, i32 2
  %statedest1956 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1952, i32 0, i32 3
  %roundsdest1957 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1952, i32 0, i32 4
  %field1958 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1951, i32 0, i32 0
  %nplayers1959 = load i32, i32* %field1958
  %field1960 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1951, i32 0, i32 1
  %nmoves1961 = load i32, i32* %field1960
  %field1962 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1951, i32 0, i32 2
  %nstates1963 = load i32, i32* %field1962
  %newstrategy1964 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp1965 = sitofp i32 %nmoves1961 to double
  %sitofp1966 = sitofp i32 %nplayers1959 to double
  %exp1967 = call double (double, double, ...) @pow(double %sitofp1965, double %sitofp1966)
  %size1968 = fptoui double %exp1967 to i32
  %size1969 = mul i32 %size1968, %nstates1963
  %trans1970 = alloca { i32, i32 }, i32 %size1969
  %nplayersdest1971 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1964, i32 0, i32 0
  %nmovesdest1972 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1964, i32 0, i32 1
  %nstatesdest1973 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1964, i32 0, i32 2
  %ptrdest1974 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1964, i32 0, i32 3
  store i32 %nplayers1959, i32* %nplayersdest1971
  store i32 %nmoves1961, i32* %nmovesdest1972
  store i32 %nstates1963, i32* %nstatesdest1973
  store { i32, i32 }* %trans1970, { i32, i32 }** %ptrdest1974
  %field1975 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1951, i32 0, i32 0
  %nplayers1976 = load i32, i32* %field1975
  %field1977 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1951, i32 0, i32 1
  %nmoves1978 = load i32, i32* %field1977
  %field1979 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1951, i32 0, i32 2
  %nstates1980 = load i32, i32* %field1979
  %sitofp1981 = sitofp i32 %nmoves1978 to double
  %sitofp1982 = sitofp i32 %nplayers1976 to double
  %exp1983 = call double (double, double, ...) @pow(double %sitofp1981, double %sitofp1982)
  %size1984 = fptoui double %exp1983 to i32
  %size1985 = mul i32 %size1984, %nstates1980
  %sitofp1986 = sitofp i32 %size1985 to double
  %sitofp1987 = sitofp i32 %nmoves1978 to double
  %sitofp1988 = sitofp i32 %nstates1980 to double
  %fcopy_size1989 = fmul double %sitofp1986, 1.000000e+00
  %copy_size1990 = fptoui double %fcopy_size1989 to i32
  %transi1991 = alloca i32
  store i32 0, i32* %transi1991
  br label %copycond1992

error1943:                                        ; preds = %merge1927
  %printerror1944 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.51, i32 0, i32 0), i32 %m21936, i32 %sub1940)
  br label %merge1942

copycond1992:                                     ; preds = %merge2026, %merge1942
  %transi2036 = load i32, i32* %transi1991
  %statecomp2037 = icmp slt i32 %transi2036, %copy_size1990
  br i1 %statecomp2037, label %copyloop1993, label %merge2038

copyloop1993:                                     ; preds = %copycond1992
  %load1994 = load i32, i32* %transi1991
  %field1995 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero1951, i32 0, i32 3
  %sourceaddr1996 = load { i32, i32 }*, { i32, i32 }** %field1995
  %field1997 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy1964, i32 0, i32 3
  %destaddr1998 = load { i32, i32 }*, { i32, i32 }** %field1997
  %source1999 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr1996, i32 %load1994
  %dest2000 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr1998, i32 %load1994
  %field2001 = getelementptr { i32, i32 }, { i32, i32 }* %source1999, i32 0, i32 0
  %source_output2002 = load i32, i32* %field2001
  %field2003 = getelementptr { i32, i32 }, { i32, i32 }* %dest2000, i32 0, i32 0
  %field2004 = getelementptr { i32, i32 }, { i32, i32 }* %source1999, i32 0, i32 1
  %source_nextstate2005 = load i32, i32* %field2004
  %field2006 = getelementptr { i32, i32 }, { i32, i32 }* %dest2000, i32 0, i32 1
  %rand2007 = call i32 (...) @rand()
  %randint2008 = urem i32 %rand2007, 32767
  %sitofp2009 = sitofp i32 %randint2008 to double
  %randfloat2010 = fdiv double %sitofp2009, 3.276700e+04
  %randcomp2011 = fcmp olt double %randfloat2010, 0.000000e+00
  br i1 %randcomp2011, label %then2013, label %else2020

merge2012:                                        ; preds = %else2020, %then2013
  %rand2021 = call i32 (...) @rand()
  %randint2022 = urem i32 %rand2021, 32767
  %sitofp2023 = sitofp i32 %randint2022 to double
  %randfloat2024 = fdiv double %sitofp2023, 3.276700e+04
  %randcomp2025 = fcmp olt double %randfloat2024, 0.000000e+00
  br i1 %randcomp2025, label %then2027, label %else2034

then2013:                                         ; preds = %copyloop1993
  %rand2014 = call i32 (...) @rand()
  %randint2015 = urem i32 %rand2014, 32767
  %sitofp2016 = sitofp i32 %randint2015 to double
  %randfloat2017 = fdiv double %sitofp2016, 3.276700e+04
  %frandmove2018 = fmul double %randfloat2017, %sitofp1987
  %randmove2019 = fptoui double %frandmove2018 to i32
  store i32 %randmove2019, i32* %field2003
  br label %merge2012

else2020:                                         ; preds = %copyloop1993
  store i32 %source_output2002, i32* %field2003
  br label %merge2012

merge2026:                                        ; preds = %else2034, %then2027
  %inc2035 = add i32 %load1994, 1
  store i32 %inc2035, i32* %transi1991
  br label %copycond1992

then2027:                                         ; preds = %merge2012
  %rand2028 = call i32 (...) @rand()
  %randint2029 = urem i32 %rand2028, 32767
  %sitofp2030 = sitofp i32 %randint2029 to double
  %randfloat2031 = fdiv double %sitofp2030, 3.276700e+04
  %frandstate2032 = fmul double %randfloat2031, %sitofp1988
  %randstate2033 = fptoui double %frandstate2032 to i32
  store i32 %randstate2033, i32* %field2006
  br label %merge2026

else2034:                                         ; preds = %merge2012
  store i32 %source_nextstate2005, i32* %field2006
  br label %merge2026

merge2038:                                        ; preds = %copycond1992
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy1964, { i32, i32, i32, { i32, i32 }* }** %strategydest1953
  store double 1.000000e+00, double* %deltadest1954
  store double 0.000000e+00, double* %payoffdest1955
  store i32 0, i32* %statedest1956
  store i32 0, i32* %roundsdest1957
  %i2039 = load i32, i32* %i1658
  %tmp2040 = mul i32 2, %i2039
  %tmp2041 = add i32 6, %tmp2040
  %addr2042 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2043 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2042, i32 0, i32 1
  %conaddr2044 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2043
  %access2045 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2044, i32 %tmp2041
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer1952, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2045
  %f22046 = load i32, i32* %f2
  %players22047 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen2048 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players22047, i32 0, i32 0
  %arrlen2049 = load i32, i32* %getlen2048
  %sub2050 = sub i32 %arrlen2049, 1
  %error2051 = icmp sgt i32 %f22046, %sub2050
  br i1 %error2051, label %error2053, label %merge2052

merge2052:                                        ; preds = %merge2038, %error2053
  %addr2055 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2056 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2055, i32 0, i32 1
  %conaddr2057 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2056
  %access2058 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2057, i32 %f22046
  %players22059 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2058
  %field2060 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players22059, i32 0, i32 0
  %fieldzero2061 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2060
  %newplayer2062 = alloca { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }
  %strategydest2063 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer2062, i32 0, i32 0
  %deltadest2064 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer2062, i32 0, i32 1
  %payoffdest2065 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer2062, i32 0, i32 2
  %statedest2066 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer2062, i32 0, i32 3
  %roundsdest2067 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer2062, i32 0, i32 4
  %field2068 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero2061, i32 0, i32 0
  %nplayers2069 = load i32, i32* %field2068
  %field2070 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero2061, i32 0, i32 1
  %nmoves2071 = load i32, i32* %field2070
  %field2072 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero2061, i32 0, i32 2
  %nstates2073 = load i32, i32* %field2072
  %newstrategy2074 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp2075 = sitofp i32 %nmoves2071 to double
  %sitofp2076 = sitofp i32 %nplayers2069 to double
  %exp2077 = call double (double, double, ...) @pow(double %sitofp2075, double %sitofp2076)
  %size2078 = fptoui double %exp2077 to i32
  %size2079 = mul i32 %size2078, %nstates2073
  %trans2080 = alloca { i32, i32 }, i32 %size2079
  %nplayersdest2081 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2074, i32 0, i32 0
  %nmovesdest2082 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2074, i32 0, i32 1
  %nstatesdest2083 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2074, i32 0, i32 2
  %ptrdest2084 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2074, i32 0, i32 3
  store i32 %nplayers2069, i32* %nplayersdest2081
  store i32 %nmoves2071, i32* %nmovesdest2082
  store i32 %nstates2073, i32* %nstatesdest2083
  store { i32, i32 }* %trans2080, { i32, i32 }** %ptrdest2084
  %field2085 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero2061, i32 0, i32 0
  %nplayers2086 = load i32, i32* %field2085
  %field2087 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero2061, i32 0, i32 1
  %nmoves2088 = load i32, i32* %field2087
  %field2089 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero2061, i32 0, i32 2
  %nstates2090 = load i32, i32* %field2089
  %sitofp2091 = sitofp i32 %nmoves2088 to double
  %sitofp2092 = sitofp i32 %nplayers2086 to double
  %exp2093 = call double (double, double, ...) @pow(double %sitofp2091, double %sitofp2092)
  %size2094 = fptoui double %exp2093 to i32
  %size2095 = mul i32 %size2094, %nstates2090
  %sitofp2096 = sitofp i32 %size2095 to double
  %sitofp2097 = sitofp i32 %nmoves2088 to double
  %sitofp2098 = sitofp i32 %nstates2090 to double
  %fcopy_size2099 = fmul double %sitofp2096, 1.000000e+00
  %copy_size2100 = fptoui double %fcopy_size2099 to i32
  %transi2101 = alloca i32
  store i32 0, i32* %transi2101
  br label %copycond2102

error2053:                                        ; preds = %merge2038
  %printerror2054 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.52, i32 0, i32 0), i32 %f22046, i32 %sub2050)
  br label %merge2052

copycond2102:                                     ; preds = %merge2136, %merge2052
  %transi2146 = load i32, i32* %transi2101
  %statecomp2147 = icmp slt i32 %transi2146, %copy_size2100
  br i1 %statecomp2147, label %copyloop2103, label %merge2148

copyloop2103:                                     ; preds = %copycond2102
  %load2104 = load i32, i32* %transi2101
  %field2105 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero2061, i32 0, i32 3
  %sourceaddr2106 = load { i32, i32 }*, { i32, i32 }** %field2105
  %field2107 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2074, i32 0, i32 3
  %destaddr2108 = load { i32, i32 }*, { i32, i32 }** %field2107
  %source2109 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2106, i32 %load2104
  %dest2110 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2108, i32 %load2104
  %field2111 = getelementptr { i32, i32 }, { i32, i32 }* %source2109, i32 0, i32 0
  %source_output2112 = load i32, i32* %field2111
  %field2113 = getelementptr { i32, i32 }, { i32, i32 }* %dest2110, i32 0, i32 0
  %field2114 = getelementptr { i32, i32 }, { i32, i32 }* %source2109, i32 0, i32 1
  %source_nextstate2115 = load i32, i32* %field2114
  %field2116 = getelementptr { i32, i32 }, { i32, i32 }* %dest2110, i32 0, i32 1
  %rand2117 = call i32 (...) @rand()
  %randint2118 = urem i32 %rand2117, 32767
  %sitofp2119 = sitofp i32 %randint2118 to double
  %randfloat2120 = fdiv double %sitofp2119, 3.276700e+04
  %randcomp2121 = fcmp olt double %randfloat2120, 0.000000e+00
  br i1 %randcomp2121, label %then2123, label %else2130

merge2122:                                        ; preds = %else2130, %then2123
  %rand2131 = call i32 (...) @rand()
  %randint2132 = urem i32 %rand2131, 32767
  %sitofp2133 = sitofp i32 %randint2132 to double
  %randfloat2134 = fdiv double %sitofp2133, 3.276700e+04
  %randcomp2135 = fcmp olt double %randfloat2134, 0.000000e+00
  br i1 %randcomp2135, label %then2137, label %else2144

then2123:                                         ; preds = %copyloop2103
  %rand2124 = call i32 (...) @rand()
  %randint2125 = urem i32 %rand2124, 32767
  %sitofp2126 = sitofp i32 %randint2125 to double
  %randfloat2127 = fdiv double %sitofp2126, 3.276700e+04
  %frandmove2128 = fmul double %randfloat2127, %sitofp2097
  %randmove2129 = fptoui double %frandmove2128 to i32
  store i32 %randmove2129, i32* %field2113
  br label %merge2122

else2130:                                         ; preds = %copyloop2103
  store i32 %source_output2112, i32* %field2113
  br label %merge2122

merge2136:                                        ; preds = %else2144, %then2137
  %inc2145 = add i32 %load2104, 1
  store i32 %inc2145, i32* %transi2101
  br label %copycond2102

then2137:                                         ; preds = %merge2122
  %rand2138 = call i32 (...) @rand()
  %randint2139 = urem i32 %rand2138, 32767
  %sitofp2140 = sitofp i32 %randint2139 to double
  %randfloat2141 = fdiv double %sitofp2140, 3.276700e+04
  %frandstate2142 = fmul double %randfloat2141, %sitofp2098
  %randstate2143 = fptoui double %frandstate2142 to i32
  store i32 %randstate2143, i32* %field2116
  br label %merge2136

else2144:                                         ; preds = %merge2122
  store i32 %source_nextstate2115, i32* %field2116
  br label %merge2136

merge2148:                                        ; preds = %copycond2102
  store { i32, i32, i32, { i32, i32 }* }* %newstrategy2074, { i32, i32, i32, { i32, i32 }* }** %strategydest2063
  store double 1.000000e+00, double* %deltadest2064
  store double 0.000000e+00, double* %payoffdest2065
  store i32 0, i32* %statedest2066
  store i32 0, i32* %roundsdest2067
  %i2149 = load i32, i32* %i1658
  %tmp2150 = mul i32 2, %i2149
  %tmp2151 = add i32 6, %tmp2150
  %tmp2152 = add i32 %tmp2151, 1
  %addr2153 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2154 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2153, i32 0, i32 1
  %conaddr2155 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2154
  %access2156 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2155, i32 %tmp2152
  store { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %newplayer2062, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2156
  %i2157 = load i32, i32* %i1658
  %tmp2158 = mul i32 2, %i2157
  %tmp2159 = add i32 6, %tmp2158
  %players12160 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen2161 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players12160, i32 0, i32 0
  %arrlen2162 = load i32, i32* %getlen2161
  %sub2163 = sub i32 %arrlen2162, 1
  %error2164 = icmp sgt i32 %tmp2159, %sub2163
  br i1 %error2164, label %error2166, label %merge2165

merge2165:                                        ; preds = %merge2148, %error2166
  %addr2168 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon2169 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2168, i32 0, i32 1
  %conaddr2170 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2169
  %access2171 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2170, i32 %tmp2159
  %players12172 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2171
  %i2173 = load i32, i32* %i1658
  %tmp2174 = mul i32 2, %i2173
  %tmp2175 = add i32 6, %tmp2174
  %tmp2176 = add i32 %tmp2175, 1
  %players12177 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen2178 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players12177, i32 0, i32 0
  %arrlen2179 = load i32, i32* %getlen2178
  %sub2180 = sub i32 %arrlen2179, 1
  %error2181 = icmp sgt i32 %tmp2176, %sub2180
  br i1 %error2181, label %error2183, label %merge2182

error2166:                                        ; preds = %merge2148
  %printerror2167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.53, i32 0, i32 0), i32 %tmp2159, i32 %sub2163)
  br label %merge2165

merge2182:                                        ; preds = %merge2165, %error2183
  %addr2185 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon2186 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2185, i32 0, i32 1
  %conaddr2187 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2186
  %access2188 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2187, i32 %tmp2176
  %players12189 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2188
  %rand2190 = call i32 (...) @rand()
  %randint2191 = urem i32 %rand2190, 32767
  %sitofp2192 = sitofp i32 %randint2191 to double
  %randfloat2193 = fdiv double %sitofp2192, 3.276700e+04
  %field2194 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players12172, i32 0, i32 0
  %cross1 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2194
  %field2195 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players12189, i32 0, i32 0
  %cross2 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2195
  %field2196 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 0
  %nplayers2197 = load i32, i32* %field2196
  %field2198 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 0
  %nplayers2199 = load i32, i32* %field2198
  %field2200 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 1
  %nmoves2201 = load i32, i32* %field2200
  %field2202 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 1
  %nmoves2203 = load i32, i32* %field2202
  %field2204 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 2
  %nstates2205 = load i32, i32* %field2204
  %field2206 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 2
  %nstates2207 = load i32, i32* %field2206
  %error2208 = icmp ne i32 %nplayers2197, %nplayers2199
  br i1 %error2208, label %error2210, label %merge2209

error2183:                                        ; preds = %merge2165
  %printerror2184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.54, i32 0, i32 0), i32 %tmp2176, i32 %sub2180)
  br label %merge2182

merge2209:                                        ; preds = %merge2182, %error2210
  %error2212 = icmp ne i32 %nmoves2201, %nmoves2203
  br i1 %error2212, label %error2214, label %merge2213

error2210:                                        ; preds = %merge2182
  %printerror2211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @error.55, i32 0, i32 0), i32 %nplayers2197, i32 %nplayers2199)
  br label %merge2209

merge2213:                                        ; preds = %merge2209, %error2214
  %error2216 = icmp ne i32 %nstates2205, %nstates2207
  br i1 %error2216, label %error2218, label %merge2217

error2214:                                        ; preds = %merge2209
  %printerror2215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @error.56, i32 0, i32 0), i32 %nmoves2201, i32 %nmoves2203)
  br label %merge2213

merge2217:                                        ; preds = %merge2213, %error2218
  %newstrategy2220 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp2221 = sitofp i32 %nplayers2197 to double
  %sitofp2222 = sitofp i32 %nmoves2201 to double
  %exp2223 = call double (double, double, ...) @pow(double %sitofp2221, double %sitofp2222)
  %size2224 = fptoui double %exp2223 to i32
  %size2225 = mul i32 %size2224, %nstates2205
  %trans2226 = alloca { i32, i32 }, i32 %size2225
  %nplayersdest2227 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2220, i32 0, i32 0
  %nmovesdest2228 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2220, i32 0, i32 1
  %nstatesdest2229 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2220, i32 0, i32 2
  %ptrdest2230 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2220, i32 0, i32 3
  store i32 %nmoves2201, i32* %nplayersdest2227
  store i32 %nplayers2197, i32* %nmovesdest2228
  store i32 %nstates2205, i32* %nstatesdest2229
  store { i32, i32 }* %trans2226, { i32, i32 }** %ptrdest2230
  %field2231 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 0
  %nplayers2232 = load i32, i32* %field2231
  %field2233 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 1
  %nmoves2234 = load i32, i32* %field2233
  %field2235 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 2
  %nstates2236 = load i32, i32* %field2235
  %sitofp2237 = sitofp i32 %nmoves2234 to double
  %sitofp2238 = sitofp i32 %nplayers2232 to double
  %exp2239 = call double (double, double, ...) @pow(double %sitofp2237, double %sitofp2238)
  %size2240 = fptoui double %exp2239 to i32
  %size2241 = mul i32 %size2240, %nstates2236
  %sitofp2242 = sitofp i32 %size2241 to double
  %sitofp2243 = sitofp i32 %nmoves2234 to double
  %sitofp2244 = sitofp i32 %nstates2236 to double
  %fcopy_size2245 = fmul double %sitofp2242, %randfloat2193
  %copy_size2246 = fptoui double %fcopy_size2245 to i32
  %transi2247 = alloca i32
  store i32 0, i32* %transi2247
  br label %copycond2248

error2218:                                        ; preds = %merge2213
  %printerror2219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @error.57, i32 0, i32 0), i32 %nstates2205, i32 %nstates2207)
  br label %merge2217

copycond2248:                                     ; preds = %merge2282, %merge2217
  %transi2292 = load i32, i32* %transi2247
  %statecomp2293 = icmp slt i32 %transi2292, %copy_size2246
  br i1 %statecomp2293, label %copyloop2249, label %merge2294

copyloop2249:                                     ; preds = %copycond2248
  %load2250 = load i32, i32* %transi2247
  %field2251 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 3
  %sourceaddr2252 = load { i32, i32 }*, { i32, i32 }** %field2251
  %field2253 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2220, i32 0, i32 3
  %destaddr2254 = load { i32, i32 }*, { i32, i32 }** %field2253
  %source2255 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2252, i32 %load2250
  %dest2256 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2254, i32 %load2250
  %field2257 = getelementptr { i32, i32 }, { i32, i32 }* %source2255, i32 0, i32 0
  %source_output2258 = load i32, i32* %field2257
  %field2259 = getelementptr { i32, i32 }, { i32, i32 }* %dest2256, i32 0, i32 0
  %field2260 = getelementptr { i32, i32 }, { i32, i32 }* %source2255, i32 0, i32 1
  %source_nextstate2261 = load i32, i32* %field2260
  %field2262 = getelementptr { i32, i32 }, { i32, i32 }* %dest2256, i32 0, i32 1
  %rand2263 = call i32 (...) @rand()
  %randint2264 = urem i32 %rand2263, 32767
  %sitofp2265 = sitofp i32 %randint2264 to double
  %randfloat2266 = fdiv double %sitofp2265, 3.276700e+04
  %randcomp2267 = fcmp olt double %randfloat2266, 0.000000e+00
  br i1 %randcomp2267, label %then2269, label %else2276

merge2268:                                        ; preds = %else2276, %then2269
  %rand2277 = call i32 (...) @rand()
  %randint2278 = urem i32 %rand2277, 32767
  %sitofp2279 = sitofp i32 %randint2278 to double
  %randfloat2280 = fdiv double %sitofp2279, 3.276700e+04
  %randcomp2281 = fcmp olt double %randfloat2280, 0.000000e+00
  br i1 %randcomp2281, label %then2283, label %else2290

then2269:                                         ; preds = %copyloop2249
  %rand2270 = call i32 (...) @rand()
  %randint2271 = urem i32 %rand2270, 32767
  %sitofp2272 = sitofp i32 %randint2271 to double
  %randfloat2273 = fdiv double %sitofp2272, 3.276700e+04
  %frandmove2274 = fmul double %randfloat2273, %sitofp2243
  %randmove2275 = fptoui double %frandmove2274 to i32
  store i32 %randmove2275, i32* %field2259
  br label %merge2268

else2276:                                         ; preds = %copyloop2249
  store i32 %source_output2258, i32* %field2259
  br label %merge2268

merge2282:                                        ; preds = %else2290, %then2283
  %inc2291 = add i32 %load2250, 1
  store i32 %inc2291, i32* %transi2247
  br label %copycond2248

then2283:                                         ; preds = %merge2268
  %rand2284 = call i32 (...) @rand()
  %randint2285 = urem i32 %rand2284, 32767
  %sitofp2286 = sitofp i32 %randint2285 to double
  %randfloat2287 = fdiv double %sitofp2286, 3.276700e+04
  %frandstate2288 = fmul double %randfloat2287, %sitofp2244
  %randstate2289 = fptoui double %frandstate2288 to i32
  store i32 %randstate2289, i32* %field2262
  br label %merge2282

else2290:                                         ; preds = %merge2268
  store i32 %source_nextstate2261, i32* %field2262
  br label %merge2282

merge2294:                                        ; preds = %copycond2248
  %field2295 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 0
  %nplayers2296 = load i32, i32* %field2295
  %field2297 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 1
  %nmoves2298 = load i32, i32* %field2297
  %field2299 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 2
  %nstates2300 = load i32, i32* %field2299
  %sitofp2301 = sitofp i32 %nmoves2298 to double
  %sitofp2302 = sitofp i32 %nplayers2296 to double
  %exp2303 = call double (double, double, ...) @pow(double %sitofp2301, double %sitofp2302)
  %size2304 = fptoui double %exp2303 to i32
  %size2305 = mul i32 %size2304, %nstates2300
  %sitofp2306 = sitofp i32 %size2305 to double
  %sitofp2307 = sitofp i32 %nmoves2298 to double
  %sitofp2308 = sitofp i32 %nstates2300 to double
  %fcopy_size2309 = fmul double %sitofp2306, %randfloat2193
  %copy_size2310 = fptoui double %fcopy_size2309 to i32
  %transi2311 = alloca i32
  store i32 0, i32* %transi2311
  br label %copycond2312

copycond2312:                                     ; preds = %merge2346, %merge2294
  %transi2356 = load i32, i32* %transi2311
  %statecomp2357 = icmp slt i32 %transi2356, %copy_size2310
  br i1 %statecomp2357, label %copyloop2313, label %merge2358

copyloop2313:                                     ; preds = %copycond2312
  %load2314 = load i32, i32* %transi2311
  %field2315 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 3
  %sourceaddr2316 = load { i32, i32 }*, { i32, i32 }** %field2315
  %field2317 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross1, i32 0, i32 3
  %destaddr2318 = load { i32, i32 }*, { i32, i32 }** %field2317
  %source2319 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2316, i32 %load2314
  %dest2320 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2318, i32 %load2314
  %field2321 = getelementptr { i32, i32 }, { i32, i32 }* %source2319, i32 0, i32 0
  %source_output2322 = load i32, i32* %field2321
  %field2323 = getelementptr { i32, i32 }, { i32, i32 }* %dest2320, i32 0, i32 0
  %field2324 = getelementptr { i32, i32 }, { i32, i32 }* %source2319, i32 0, i32 1
  %source_nextstate2325 = load i32, i32* %field2324
  %field2326 = getelementptr { i32, i32 }, { i32, i32 }* %dest2320, i32 0, i32 1
  %rand2327 = call i32 (...) @rand()
  %randint2328 = urem i32 %rand2327, 32767
  %sitofp2329 = sitofp i32 %randint2328 to double
  %randfloat2330 = fdiv double %sitofp2329, 3.276700e+04
  %randcomp2331 = fcmp olt double %randfloat2330, 0.000000e+00
  br i1 %randcomp2331, label %then2333, label %else2340

merge2332:                                        ; preds = %else2340, %then2333
  %rand2341 = call i32 (...) @rand()
  %randint2342 = urem i32 %rand2341, 32767
  %sitofp2343 = sitofp i32 %randint2342 to double
  %randfloat2344 = fdiv double %sitofp2343, 3.276700e+04
  %randcomp2345 = fcmp olt double %randfloat2344, 0.000000e+00
  br i1 %randcomp2345, label %then2347, label %else2354

then2333:                                         ; preds = %copyloop2313
  %rand2334 = call i32 (...) @rand()
  %randint2335 = urem i32 %rand2334, 32767
  %sitofp2336 = sitofp i32 %randint2335 to double
  %randfloat2337 = fdiv double %sitofp2336, 3.276700e+04
  %frandmove2338 = fmul double %randfloat2337, %sitofp2307
  %randmove2339 = fptoui double %frandmove2338 to i32
  store i32 %randmove2339, i32* %field2323
  br label %merge2332

else2340:                                         ; preds = %copyloop2313
  store i32 %source_output2322, i32* %field2323
  br label %merge2332

merge2346:                                        ; preds = %else2354, %then2347
  %inc2355 = add i32 %load2314, 1
  store i32 %inc2355, i32* %transi2311
  br label %copycond2312

then2347:                                         ; preds = %merge2332
  %rand2348 = call i32 (...) @rand()
  %randint2349 = urem i32 %rand2348, 32767
  %sitofp2350 = sitofp i32 %randint2349 to double
  %randfloat2351 = fdiv double %sitofp2350, 3.276700e+04
  %frandstate2352 = fmul double %randfloat2351, %sitofp2308
  %randstate2353 = fptoui double %frandstate2352 to i32
  store i32 %randstate2353, i32* %field2326
  br label %merge2346

else2354:                                         ; preds = %merge2332
  store i32 %source_nextstate2325, i32* %field2326
  br label %merge2346

merge2358:                                        ; preds = %copycond2312
  %field2359 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2220, i32 0, i32 0
  %nplayers2360 = load i32, i32* %field2359
  %field2361 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2220, i32 0, i32 1
  %nmoves2362 = load i32, i32* %field2361
  %field2363 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2220, i32 0, i32 2
  %nstates2364 = load i32, i32* %field2363
  %sitofp2365 = sitofp i32 %nmoves2362 to double
  %sitofp2366 = sitofp i32 %nplayers2360 to double
  %exp2367 = call double (double, double, ...) @pow(double %sitofp2365, double %sitofp2366)
  %size2368 = fptoui double %exp2367 to i32
  %size2369 = mul i32 %size2368, %nstates2364
  %sitofp2370 = sitofp i32 %size2369 to double
  %sitofp2371 = sitofp i32 %nmoves2362 to double
  %sitofp2372 = sitofp i32 %nstates2364 to double
  %fcopy_size2373 = fmul double %sitofp2370, %randfloat2193
  %copy_size2374 = fptoui double %fcopy_size2373 to i32
  %transi2375 = alloca i32
  store i32 0, i32* %transi2375
  br label %copycond2376

copycond2376:                                     ; preds = %merge2410, %merge2358
  %transi2420 = load i32, i32* %transi2375
  %statecomp2421 = icmp slt i32 %transi2420, %copy_size2374
  br i1 %statecomp2421, label %copyloop2377, label %merge2422

copyloop2377:                                     ; preds = %copycond2376
  %load2378 = load i32, i32* %transi2375
  %field2379 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2220, i32 0, i32 3
  %sourceaddr2380 = load { i32, i32 }*, { i32, i32 }** %field2379
  %field2381 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross2, i32 0, i32 3
  %destaddr2382 = load { i32, i32 }*, { i32, i32 }** %field2381
  %source2383 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2380, i32 %load2378
  %dest2384 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2382, i32 %load2378
  %field2385 = getelementptr { i32, i32 }, { i32, i32 }* %source2383, i32 0, i32 0
  %source_output2386 = load i32, i32* %field2385
  %field2387 = getelementptr { i32, i32 }, { i32, i32 }* %dest2384, i32 0, i32 0
  %field2388 = getelementptr { i32, i32 }, { i32, i32 }* %source2383, i32 0, i32 1
  %source_nextstate2389 = load i32, i32* %field2388
  %field2390 = getelementptr { i32, i32 }, { i32, i32 }* %dest2384, i32 0, i32 1
  %rand2391 = call i32 (...) @rand()
  %randint2392 = urem i32 %rand2391, 32767
  %sitofp2393 = sitofp i32 %randint2392 to double
  %randfloat2394 = fdiv double %sitofp2393, 3.276700e+04
  %randcomp2395 = fcmp olt double %randfloat2394, 0.000000e+00
  br i1 %randcomp2395, label %then2397, label %else2404

merge2396:                                        ; preds = %else2404, %then2397
  %rand2405 = call i32 (...) @rand()
  %randint2406 = urem i32 %rand2405, 32767
  %sitofp2407 = sitofp i32 %randint2406 to double
  %randfloat2408 = fdiv double %sitofp2407, 3.276700e+04
  %randcomp2409 = fcmp olt double %randfloat2408, 0.000000e+00
  br i1 %randcomp2409, label %then2411, label %else2418

then2397:                                         ; preds = %copyloop2377
  %rand2398 = call i32 (...) @rand()
  %randint2399 = urem i32 %rand2398, 32767
  %sitofp2400 = sitofp i32 %randint2399 to double
  %randfloat2401 = fdiv double %sitofp2400, 3.276700e+04
  %frandmove2402 = fmul double %randfloat2401, %sitofp2371
  %randmove2403 = fptoui double %frandmove2402 to i32
  store i32 %randmove2403, i32* %field2387
  br label %merge2396

else2404:                                         ; preds = %copyloop2377
  store i32 %source_output2386, i32* %field2387
  br label %merge2396

merge2410:                                        ; preds = %else2418, %then2411
  %inc2419 = add i32 %load2378, 1
  store i32 %inc2419, i32* %transi2375
  br label %copycond2376

then2411:                                         ; preds = %merge2396
  %rand2412 = call i32 (...) @rand()
  %randint2413 = urem i32 %rand2412, 32767
  %sitofp2414 = sitofp i32 %randint2413 to double
  %randfloat2415 = fdiv double %sitofp2414, 3.276700e+04
  %frandstate2416 = fmul double %randfloat2415, %sitofp2372
  %randstate2417 = fptoui double %frandstate2416 to i32
  store i32 %randstate2417, i32* %field2390
  br label %merge2410

else2418:                                         ; preds = %merge2396
  store i32 %source_nextstate2389, i32* %field2390
  br label %merge2410

merge2422:                                        ; preds = %copycond2376
  %i2423 = load i32, i32* %i1658
  %tmp2424 = mul i32 2, %i2423
  %tmp2425 = add i32 6, %tmp2424
  %players22426 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen2427 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players22426, i32 0, i32 0
  %arrlen2428 = load i32, i32* %getlen2427
  %sub2429 = sub i32 %arrlen2428, 1
  %error2430 = icmp sgt i32 %tmp2425, %sub2429
  br i1 %error2430, label %error2432, label %merge2431

merge2431:                                        ; preds = %merge2422, %error2432
  %addr2434 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2435 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2434, i32 0, i32 1
  %conaddr2436 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2435
  %access2437 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2436, i32 %tmp2425
  %players22438 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2437
  %i2439 = load i32, i32* %i1658
  %tmp2440 = mul i32 2, %i2439
  %tmp2441 = add i32 6, %tmp2440
  %tmp2442 = add i32 %tmp2441, 1
  %players22443 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen2444 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players22443, i32 0, i32 0
  %arrlen2445 = load i32, i32* %getlen2444
  %sub2446 = sub i32 %arrlen2445, 1
  %error2447 = icmp sgt i32 %tmp2442, %sub2446
  br i1 %error2447, label %error2449, label %merge2448

error2432:                                        ; preds = %merge2422
  %printerror2433 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.58, i32 0, i32 0), i32 %tmp2425, i32 %sub2429)
  br label %merge2431

merge2448:                                        ; preds = %merge2431, %error2449
  %addr2451 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2452 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2451, i32 0, i32 1
  %conaddr2453 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2452
  %access2454 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2453, i32 %tmp2442
  %players22455 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2454
  %rand2456 = call i32 (...) @rand()
  %randint2457 = urem i32 %rand2456, 32767
  %sitofp2458 = sitofp i32 %randint2457 to double
  %randfloat2459 = fdiv double %sitofp2458, 3.276700e+04
  %field2460 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players22438, i32 0, i32 0
  %cross12461 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2460
  %field2462 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players22455, i32 0, i32 0
  %cross22463 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2462
  %field2464 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12461, i32 0, i32 0
  %nplayers2465 = load i32, i32* %field2464
  %field2466 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22463, i32 0, i32 0
  %nplayers2467 = load i32, i32* %field2466
  %field2468 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12461, i32 0, i32 1
  %nmoves2469 = load i32, i32* %field2468
  %field2470 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22463, i32 0, i32 1
  %nmoves2471 = load i32, i32* %field2470
  %field2472 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12461, i32 0, i32 2
  %nstates2473 = load i32, i32* %field2472
  %field2474 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22463, i32 0, i32 2
  %nstates2475 = load i32, i32* %field2474
  %error2476 = icmp ne i32 %nplayers2465, %nplayers2467
  br i1 %error2476, label %error2478, label %merge2477

error2449:                                        ; preds = %merge2431
  %printerror2450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.59, i32 0, i32 0), i32 %tmp2442, i32 %sub2446)
  br label %merge2448

merge2477:                                        ; preds = %merge2448, %error2478
  %error2480 = icmp ne i32 %nmoves2469, %nmoves2471
  br i1 %error2480, label %error2482, label %merge2481

error2478:                                        ; preds = %merge2448
  %printerror2479 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @error.60, i32 0, i32 0), i32 %nplayers2465, i32 %nplayers2467)
  br label %merge2477

merge2481:                                        ; preds = %merge2477, %error2482
  %error2484 = icmp ne i32 %nstates2473, %nstates2475
  br i1 %error2484, label %error2486, label %merge2485

error2482:                                        ; preds = %merge2477
  %printerror2483 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @error.61, i32 0, i32 0), i32 %nmoves2469, i32 %nmoves2471)
  br label %merge2481

merge2485:                                        ; preds = %merge2481, %error2486
  %newstrategy2488 = alloca { i32, i32, i32, { i32, i32 }* }
  %sitofp2489 = sitofp i32 %nplayers2465 to double
  %sitofp2490 = sitofp i32 %nmoves2469 to double
  %exp2491 = call double (double, double, ...) @pow(double %sitofp2489, double %sitofp2490)
  %size2492 = fptoui double %exp2491 to i32
  %size2493 = mul i32 %size2492, %nstates2473
  %trans2494 = alloca { i32, i32 }, i32 %size2493
  %nplayersdest2495 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2488, i32 0, i32 0
  %nmovesdest2496 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2488, i32 0, i32 1
  %nstatesdest2497 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2488, i32 0, i32 2
  %ptrdest2498 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2488, i32 0, i32 3
  store i32 %nmoves2469, i32* %nplayersdest2495
  store i32 %nplayers2465, i32* %nmovesdest2496
  store i32 %nstates2473, i32* %nstatesdest2497
  store { i32, i32 }* %trans2494, { i32, i32 }** %ptrdest2498
  %field2499 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12461, i32 0, i32 0
  %nplayers2500 = load i32, i32* %field2499
  %field2501 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12461, i32 0, i32 1
  %nmoves2502 = load i32, i32* %field2501
  %field2503 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12461, i32 0, i32 2
  %nstates2504 = load i32, i32* %field2503
  %sitofp2505 = sitofp i32 %nmoves2502 to double
  %sitofp2506 = sitofp i32 %nplayers2500 to double
  %exp2507 = call double (double, double, ...) @pow(double %sitofp2505, double %sitofp2506)
  %size2508 = fptoui double %exp2507 to i32
  %size2509 = mul i32 %size2508, %nstates2504
  %sitofp2510 = sitofp i32 %size2509 to double
  %sitofp2511 = sitofp i32 %nmoves2502 to double
  %sitofp2512 = sitofp i32 %nstates2504 to double
  %fcopy_size2513 = fmul double %sitofp2510, %randfloat2459
  %copy_size2514 = fptoui double %fcopy_size2513 to i32
  %transi2515 = alloca i32
  store i32 0, i32* %transi2515
  br label %copycond2516

error2486:                                        ; preds = %merge2481
  %printerror2487 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @error.62, i32 0, i32 0), i32 %nstates2473, i32 %nstates2475)
  br label %merge2485

copycond2516:                                     ; preds = %merge2550, %merge2485
  %transi2560 = load i32, i32* %transi2515
  %statecomp2561 = icmp slt i32 %transi2560, %copy_size2514
  br i1 %statecomp2561, label %copyloop2517, label %merge2562

copyloop2517:                                     ; preds = %copycond2516
  %load2518 = load i32, i32* %transi2515
  %field2519 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12461, i32 0, i32 3
  %sourceaddr2520 = load { i32, i32 }*, { i32, i32 }** %field2519
  %field2521 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2488, i32 0, i32 3
  %destaddr2522 = load { i32, i32 }*, { i32, i32 }** %field2521
  %source2523 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2520, i32 %load2518
  %dest2524 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2522, i32 %load2518
  %field2525 = getelementptr { i32, i32 }, { i32, i32 }* %source2523, i32 0, i32 0
  %source_output2526 = load i32, i32* %field2525
  %field2527 = getelementptr { i32, i32 }, { i32, i32 }* %dest2524, i32 0, i32 0
  %field2528 = getelementptr { i32, i32 }, { i32, i32 }* %source2523, i32 0, i32 1
  %source_nextstate2529 = load i32, i32* %field2528
  %field2530 = getelementptr { i32, i32 }, { i32, i32 }* %dest2524, i32 0, i32 1
  %rand2531 = call i32 (...) @rand()
  %randint2532 = urem i32 %rand2531, 32767
  %sitofp2533 = sitofp i32 %randint2532 to double
  %randfloat2534 = fdiv double %sitofp2533, 3.276700e+04
  %randcomp2535 = fcmp olt double %randfloat2534, 0.000000e+00
  br i1 %randcomp2535, label %then2537, label %else2544

merge2536:                                        ; preds = %else2544, %then2537
  %rand2545 = call i32 (...) @rand()
  %randint2546 = urem i32 %rand2545, 32767
  %sitofp2547 = sitofp i32 %randint2546 to double
  %randfloat2548 = fdiv double %sitofp2547, 3.276700e+04
  %randcomp2549 = fcmp olt double %randfloat2548, 0.000000e+00
  br i1 %randcomp2549, label %then2551, label %else2558

then2537:                                         ; preds = %copyloop2517
  %rand2538 = call i32 (...) @rand()
  %randint2539 = urem i32 %rand2538, 32767
  %sitofp2540 = sitofp i32 %randint2539 to double
  %randfloat2541 = fdiv double %sitofp2540, 3.276700e+04
  %frandmove2542 = fmul double %randfloat2541, %sitofp2511
  %randmove2543 = fptoui double %frandmove2542 to i32
  store i32 %randmove2543, i32* %field2527
  br label %merge2536

else2544:                                         ; preds = %copyloop2517
  store i32 %source_output2526, i32* %field2527
  br label %merge2536

merge2550:                                        ; preds = %else2558, %then2551
  %inc2559 = add i32 %load2518, 1
  store i32 %inc2559, i32* %transi2515
  br label %copycond2516

then2551:                                         ; preds = %merge2536
  %rand2552 = call i32 (...) @rand()
  %randint2553 = urem i32 %rand2552, 32767
  %sitofp2554 = sitofp i32 %randint2553 to double
  %randfloat2555 = fdiv double %sitofp2554, 3.276700e+04
  %frandstate2556 = fmul double %randfloat2555, %sitofp2512
  %randstate2557 = fptoui double %frandstate2556 to i32
  store i32 %randstate2557, i32* %field2530
  br label %merge2550

else2558:                                         ; preds = %merge2536
  store i32 %source_nextstate2529, i32* %field2530
  br label %merge2550

merge2562:                                        ; preds = %copycond2516
  %field2563 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22463, i32 0, i32 0
  %nplayers2564 = load i32, i32* %field2563
  %field2565 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22463, i32 0, i32 1
  %nmoves2566 = load i32, i32* %field2565
  %field2567 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22463, i32 0, i32 2
  %nstates2568 = load i32, i32* %field2567
  %sitofp2569 = sitofp i32 %nmoves2566 to double
  %sitofp2570 = sitofp i32 %nplayers2564 to double
  %exp2571 = call double (double, double, ...) @pow(double %sitofp2569, double %sitofp2570)
  %size2572 = fptoui double %exp2571 to i32
  %size2573 = mul i32 %size2572, %nstates2568
  %sitofp2574 = sitofp i32 %size2573 to double
  %sitofp2575 = sitofp i32 %nmoves2566 to double
  %sitofp2576 = sitofp i32 %nstates2568 to double
  %fcopy_size2577 = fmul double %sitofp2574, %randfloat2459
  %copy_size2578 = fptoui double %fcopy_size2577 to i32
  %transi2579 = alloca i32
  store i32 0, i32* %transi2579
  br label %copycond2580

copycond2580:                                     ; preds = %merge2614, %merge2562
  %transi2624 = load i32, i32* %transi2579
  %statecomp2625 = icmp slt i32 %transi2624, %copy_size2578
  br i1 %statecomp2625, label %copyloop2581, label %merge2626

copyloop2581:                                     ; preds = %copycond2580
  %load2582 = load i32, i32* %transi2579
  %field2583 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22463, i32 0, i32 3
  %sourceaddr2584 = load { i32, i32 }*, { i32, i32 }** %field2583
  %field2585 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross12461, i32 0, i32 3
  %destaddr2586 = load { i32, i32 }*, { i32, i32 }** %field2585
  %source2587 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2584, i32 %load2582
  %dest2588 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2586, i32 %load2582
  %field2589 = getelementptr { i32, i32 }, { i32, i32 }* %source2587, i32 0, i32 0
  %source_output2590 = load i32, i32* %field2589
  %field2591 = getelementptr { i32, i32 }, { i32, i32 }* %dest2588, i32 0, i32 0
  %field2592 = getelementptr { i32, i32 }, { i32, i32 }* %source2587, i32 0, i32 1
  %source_nextstate2593 = load i32, i32* %field2592
  %field2594 = getelementptr { i32, i32 }, { i32, i32 }* %dest2588, i32 0, i32 1
  %rand2595 = call i32 (...) @rand()
  %randint2596 = urem i32 %rand2595, 32767
  %sitofp2597 = sitofp i32 %randint2596 to double
  %randfloat2598 = fdiv double %sitofp2597, 3.276700e+04
  %randcomp2599 = fcmp olt double %randfloat2598, 0.000000e+00
  br i1 %randcomp2599, label %then2601, label %else2608

merge2600:                                        ; preds = %else2608, %then2601
  %rand2609 = call i32 (...) @rand()
  %randint2610 = urem i32 %rand2609, 32767
  %sitofp2611 = sitofp i32 %randint2610 to double
  %randfloat2612 = fdiv double %sitofp2611, 3.276700e+04
  %randcomp2613 = fcmp olt double %randfloat2612, 0.000000e+00
  br i1 %randcomp2613, label %then2615, label %else2622

then2601:                                         ; preds = %copyloop2581
  %rand2602 = call i32 (...) @rand()
  %randint2603 = urem i32 %rand2602, 32767
  %sitofp2604 = sitofp i32 %randint2603 to double
  %randfloat2605 = fdiv double %sitofp2604, 3.276700e+04
  %frandmove2606 = fmul double %randfloat2605, %sitofp2575
  %randmove2607 = fptoui double %frandmove2606 to i32
  store i32 %randmove2607, i32* %field2591
  br label %merge2600

else2608:                                         ; preds = %copyloop2581
  store i32 %source_output2590, i32* %field2591
  br label %merge2600

merge2614:                                        ; preds = %else2622, %then2615
  %inc2623 = add i32 %load2582, 1
  store i32 %inc2623, i32* %transi2579
  br label %copycond2580

then2615:                                         ; preds = %merge2600
  %rand2616 = call i32 (...) @rand()
  %randint2617 = urem i32 %rand2616, 32767
  %sitofp2618 = sitofp i32 %randint2617 to double
  %randfloat2619 = fdiv double %sitofp2618, 3.276700e+04
  %frandstate2620 = fmul double %randfloat2619, %sitofp2576
  %randstate2621 = fptoui double %frandstate2620 to i32
  store i32 %randstate2621, i32* %field2594
  br label %merge2614

else2622:                                         ; preds = %merge2600
  store i32 %source_nextstate2593, i32* %field2594
  br label %merge2614

merge2626:                                        ; preds = %copycond2580
  %field2627 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2488, i32 0, i32 0
  %nplayers2628 = load i32, i32* %field2627
  %field2629 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2488, i32 0, i32 1
  %nmoves2630 = load i32, i32* %field2629
  %field2631 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2488, i32 0, i32 2
  %nstates2632 = load i32, i32* %field2631
  %sitofp2633 = sitofp i32 %nmoves2630 to double
  %sitofp2634 = sitofp i32 %nplayers2628 to double
  %exp2635 = call double (double, double, ...) @pow(double %sitofp2633, double %sitofp2634)
  %size2636 = fptoui double %exp2635 to i32
  %size2637 = mul i32 %size2636, %nstates2632
  %sitofp2638 = sitofp i32 %size2637 to double
  %sitofp2639 = sitofp i32 %nmoves2630 to double
  %sitofp2640 = sitofp i32 %nstates2632 to double
  %fcopy_size2641 = fmul double %sitofp2638, %randfloat2459
  %copy_size2642 = fptoui double %fcopy_size2641 to i32
  %transi2643 = alloca i32
  store i32 0, i32* %transi2643
  br label %copycond2644

copycond2644:                                     ; preds = %merge2678, %merge2626
  %transi2688 = load i32, i32* %transi2643
  %statecomp2689 = icmp slt i32 %transi2688, %copy_size2642
  br i1 %statecomp2689, label %copyloop2645, label %merge2690

copyloop2645:                                     ; preds = %copycond2644
  %load2646 = load i32, i32* %transi2643
  %field2647 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %newstrategy2488, i32 0, i32 3
  %sourceaddr2648 = load { i32, i32 }*, { i32, i32 }** %field2647
  %field2649 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %cross22463, i32 0, i32 3
  %destaddr2650 = load { i32, i32 }*, { i32, i32 }** %field2649
  %source2651 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2648, i32 %load2646
  %dest2652 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2650, i32 %load2646
  %field2653 = getelementptr { i32, i32 }, { i32, i32 }* %source2651, i32 0, i32 0
  %source_output2654 = load i32, i32* %field2653
  %field2655 = getelementptr { i32, i32 }, { i32, i32 }* %dest2652, i32 0, i32 0
  %field2656 = getelementptr { i32, i32 }, { i32, i32 }* %source2651, i32 0, i32 1
  %source_nextstate2657 = load i32, i32* %field2656
  %field2658 = getelementptr { i32, i32 }, { i32, i32 }* %dest2652, i32 0, i32 1
  %rand2659 = call i32 (...) @rand()
  %randint2660 = urem i32 %rand2659, 32767
  %sitofp2661 = sitofp i32 %randint2660 to double
  %randfloat2662 = fdiv double %sitofp2661, 3.276700e+04
  %randcomp2663 = fcmp olt double %randfloat2662, 0.000000e+00
  br i1 %randcomp2663, label %then2665, label %else2672

merge2664:                                        ; preds = %else2672, %then2665
  %rand2673 = call i32 (...) @rand()
  %randint2674 = urem i32 %rand2673, 32767
  %sitofp2675 = sitofp i32 %randint2674 to double
  %randfloat2676 = fdiv double %sitofp2675, 3.276700e+04
  %randcomp2677 = fcmp olt double %randfloat2676, 0.000000e+00
  br i1 %randcomp2677, label %then2679, label %else2686

then2665:                                         ; preds = %copyloop2645
  %rand2666 = call i32 (...) @rand()
  %randint2667 = urem i32 %rand2666, 32767
  %sitofp2668 = sitofp i32 %randint2667 to double
  %randfloat2669 = fdiv double %sitofp2668, 3.276700e+04
  %frandmove2670 = fmul double %randfloat2669, %sitofp2639
  %randmove2671 = fptoui double %frandmove2670 to i32
  store i32 %randmove2671, i32* %field2655
  br label %merge2664

else2672:                                         ; preds = %copyloop2645
  store i32 %source_output2654, i32* %field2655
  br label %merge2664

merge2678:                                        ; preds = %else2686, %then2679
  %inc2687 = add i32 %load2646, 1
  store i32 %inc2687, i32* %transi2643
  br label %copycond2644

then2679:                                         ; preds = %merge2664
  %rand2680 = call i32 (...) @rand()
  %randint2681 = urem i32 %rand2680, 32767
  %sitofp2682 = sitofp i32 %randint2681 to double
  %randfloat2683 = fdiv double %sitofp2682, 3.276700e+04
  %frandstate2684 = fmul double %randfloat2683, %sitofp2640
  %randstate2685 = fptoui double %frandstate2684 to i32
  store i32 %randstate2685, i32* %field2658
  br label %merge2678

else2686:                                         ; preds = %merge2664
  store i32 %source_nextstate2657, i32* %field2658
  br label %merge2678

merge2690:                                        ; preds = %copycond2644
  %i2691 = load i32, i32* %i1658
  %tmp2692 = mul i32 2, %i2691
  %tmp2693 = add i32 6, %tmp2692
  %players12694 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen2695 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players12694, i32 0, i32 0
  %arrlen2696 = load i32, i32* %getlen2695
  %sub2697 = sub i32 %arrlen2696, 1
  %error2698 = icmp sgt i32 %tmp2693, %sub2697
  br i1 %error2698, label %error2700, label %merge2699

merge2699:                                        ; preds = %merge2690, %error2700
  %addr2702 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon2703 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2702, i32 0, i32 1
  %conaddr2704 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2703
  %access2705 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2704, i32 %tmp2693
  %players12706 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2705
  %field2707 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players12706, i32 0, i32 0
  %mutate = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2707
  %field2708 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate, i32 0, i32 0
  %nplayers2709 = load i32, i32* %field2708
  %field2710 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate, i32 0, i32 1
  %nmoves2711 = load i32, i32* %field2710
  %field2712 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate, i32 0, i32 2
  %nstates2713 = load i32, i32* %field2712
  %sitofp2714 = sitofp i32 %nmoves2711 to double
  %sitofp2715 = sitofp i32 %nplayers2709 to double
  %exp2716 = call double (double, double, ...) @pow(double %sitofp2714, double %sitofp2715)
  %size2717 = fptoui double %exp2716 to i32
  %size2718 = mul i32 %size2717, %nstates2713
  %sitofp2719 = sitofp i32 %size2718 to double
  %sitofp2720 = sitofp i32 %nmoves2711 to double
  %sitofp2721 = sitofp i32 %nstates2713 to double
  %fcopy_size2722 = fmul double %sitofp2719, 1.000000e+00
  %copy_size2723 = fptoui double %fcopy_size2722 to i32
  %transi2724 = alloca i32
  store i32 0, i32* %transi2724
  br label %copycond2725

error2700:                                        ; preds = %merge2690
  %printerror2701 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.63, i32 0, i32 0), i32 %tmp2693, i32 %sub2697)
  br label %merge2699

copycond2725:                                     ; preds = %merge2759, %merge2699
  %transi2769 = load i32, i32* %transi2724
  %statecomp2770 = icmp slt i32 %transi2769, %copy_size2723
  br i1 %statecomp2770, label %copyloop2726, label %merge2771

copyloop2726:                                     ; preds = %copycond2725
  %load2727 = load i32, i32* %transi2724
  %field2728 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate, i32 0, i32 3
  %sourceaddr2729 = load { i32, i32 }*, { i32, i32 }** %field2728
  %field2730 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate, i32 0, i32 3
  %destaddr2731 = load { i32, i32 }*, { i32, i32 }** %field2730
  %source2732 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2729, i32 %load2727
  %dest2733 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2731, i32 %load2727
  %field2734 = getelementptr { i32, i32 }, { i32, i32 }* %source2732, i32 0, i32 0
  %source_output2735 = load i32, i32* %field2734
  %field2736 = getelementptr { i32, i32 }, { i32, i32 }* %dest2733, i32 0, i32 0
  %field2737 = getelementptr { i32, i32 }, { i32, i32 }* %source2732, i32 0, i32 1
  %source_nextstate2738 = load i32, i32* %field2737
  %field2739 = getelementptr { i32, i32 }, { i32, i32 }* %dest2733, i32 0, i32 1
  %rand2740 = call i32 (...) @rand()
  %randint2741 = urem i32 %rand2740, 32767
  %sitofp2742 = sitofp i32 %randint2741 to double
  %randfloat2743 = fdiv double %sitofp2742, 3.276700e+04
  %randcomp2744 = fcmp olt double %randfloat2743, 2.000000e-01
  br i1 %randcomp2744, label %then2746, label %else2753

merge2745:                                        ; preds = %else2753, %then2746
  %rand2754 = call i32 (...) @rand()
  %randint2755 = urem i32 %rand2754, 32767
  %sitofp2756 = sitofp i32 %randint2755 to double
  %randfloat2757 = fdiv double %sitofp2756, 3.276700e+04
  %randcomp2758 = fcmp olt double %randfloat2757, 2.000000e-01
  br i1 %randcomp2758, label %then2760, label %else2767

then2746:                                         ; preds = %copyloop2726
  %rand2747 = call i32 (...) @rand()
  %randint2748 = urem i32 %rand2747, 32767
  %sitofp2749 = sitofp i32 %randint2748 to double
  %randfloat2750 = fdiv double %sitofp2749, 3.276700e+04
  %frandmove2751 = fmul double %randfloat2750, %sitofp2720
  %randmove2752 = fptoui double %frandmove2751 to i32
  store i32 %randmove2752, i32* %field2736
  br label %merge2745

else2753:                                         ; preds = %copyloop2726
  store i32 %source_output2735, i32* %field2736
  br label %merge2745

merge2759:                                        ; preds = %else2767, %then2760
  %inc2768 = add i32 %load2727, 1
  store i32 %inc2768, i32* %transi2724
  br label %copycond2725

then2760:                                         ; preds = %merge2745
  %rand2761 = call i32 (...) @rand()
  %randint2762 = urem i32 %rand2761, 32767
  %sitofp2763 = sitofp i32 %randint2762 to double
  %randfloat2764 = fdiv double %sitofp2763, 3.276700e+04
  %frandstate2765 = fmul double %randfloat2764, %sitofp2721
  %randstate2766 = fptoui double %frandstate2765 to i32
  store i32 %randstate2766, i32* %field2739
  br label %merge2759

else2767:                                         ; preds = %merge2745
  store i32 %source_nextstate2738, i32* %field2739
  br label %merge2759

merge2771:                                        ; preds = %copycond2725
  %i2772 = load i32, i32* %i1658
  %tmp2773 = mul i32 2, %i2772
  %tmp2774 = add i32 6, %tmp2773
  %players22775 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen2776 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players22775, i32 0, i32 0
  %arrlen2777 = load i32, i32* %getlen2776
  %sub2778 = sub i32 %arrlen2777, 1
  %error2779 = icmp sgt i32 %tmp2774, %sub2778
  br i1 %error2779, label %error2781, label %merge2780

merge2780:                                        ; preds = %merge2771, %error2781
  %addr2783 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2784 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2783, i32 0, i32 1
  %conaddr2785 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2784
  %access2786 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2785, i32 %tmp2774
  %players22787 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2786
  %field2788 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players22787, i32 0, i32 0
  %mutate2789 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2788
  %field2790 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2789, i32 0, i32 0
  %nplayers2791 = load i32, i32* %field2790
  %field2792 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2789, i32 0, i32 1
  %nmoves2793 = load i32, i32* %field2792
  %field2794 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2789, i32 0, i32 2
  %nstates2795 = load i32, i32* %field2794
  %sitofp2796 = sitofp i32 %nmoves2793 to double
  %sitofp2797 = sitofp i32 %nplayers2791 to double
  %exp2798 = call double (double, double, ...) @pow(double %sitofp2796, double %sitofp2797)
  %size2799 = fptoui double %exp2798 to i32
  %size2800 = mul i32 %size2799, %nstates2795
  %sitofp2801 = sitofp i32 %size2800 to double
  %sitofp2802 = sitofp i32 %nmoves2793 to double
  %sitofp2803 = sitofp i32 %nstates2795 to double
  %fcopy_size2804 = fmul double %sitofp2801, 1.000000e+00
  %copy_size2805 = fptoui double %fcopy_size2804 to i32
  %transi2806 = alloca i32
  store i32 0, i32* %transi2806
  br label %copycond2807

error2781:                                        ; preds = %merge2771
  %printerror2782 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.64, i32 0, i32 0), i32 %tmp2774, i32 %sub2778)
  br label %merge2780

copycond2807:                                     ; preds = %merge2841, %merge2780
  %transi2851 = load i32, i32* %transi2806
  %statecomp2852 = icmp slt i32 %transi2851, %copy_size2805
  br i1 %statecomp2852, label %copyloop2808, label %merge2853

copyloop2808:                                     ; preds = %copycond2807
  %load2809 = load i32, i32* %transi2806
  %field2810 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2789, i32 0, i32 3
  %sourceaddr2811 = load { i32, i32 }*, { i32, i32 }** %field2810
  %field2812 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2789, i32 0, i32 3
  %destaddr2813 = load { i32, i32 }*, { i32, i32 }** %field2812
  %source2814 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2811, i32 %load2809
  %dest2815 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2813, i32 %load2809
  %field2816 = getelementptr { i32, i32 }, { i32, i32 }* %source2814, i32 0, i32 0
  %source_output2817 = load i32, i32* %field2816
  %field2818 = getelementptr { i32, i32 }, { i32, i32 }* %dest2815, i32 0, i32 0
  %field2819 = getelementptr { i32, i32 }, { i32, i32 }* %source2814, i32 0, i32 1
  %source_nextstate2820 = load i32, i32* %field2819
  %field2821 = getelementptr { i32, i32 }, { i32, i32 }* %dest2815, i32 0, i32 1
  %rand2822 = call i32 (...) @rand()
  %randint2823 = urem i32 %rand2822, 32767
  %sitofp2824 = sitofp i32 %randint2823 to double
  %randfloat2825 = fdiv double %sitofp2824, 3.276700e+04
  %randcomp2826 = fcmp olt double %randfloat2825, 2.000000e-01
  br i1 %randcomp2826, label %then2828, label %else2835

merge2827:                                        ; preds = %else2835, %then2828
  %rand2836 = call i32 (...) @rand()
  %randint2837 = urem i32 %rand2836, 32767
  %sitofp2838 = sitofp i32 %randint2837 to double
  %randfloat2839 = fdiv double %sitofp2838, 3.276700e+04
  %randcomp2840 = fcmp olt double %randfloat2839, 2.000000e-01
  br i1 %randcomp2840, label %then2842, label %else2849

then2828:                                         ; preds = %copyloop2808
  %rand2829 = call i32 (...) @rand()
  %randint2830 = urem i32 %rand2829, 32767
  %sitofp2831 = sitofp i32 %randint2830 to double
  %randfloat2832 = fdiv double %sitofp2831, 3.276700e+04
  %frandmove2833 = fmul double %randfloat2832, %sitofp2802
  %randmove2834 = fptoui double %frandmove2833 to i32
  store i32 %randmove2834, i32* %field2818
  br label %merge2827

else2835:                                         ; preds = %copyloop2808
  store i32 %source_output2817, i32* %field2818
  br label %merge2827

merge2841:                                        ; preds = %else2849, %then2842
  %inc2850 = add i32 %load2809, 1
  store i32 %inc2850, i32* %transi2806
  br label %copycond2807

then2842:                                         ; preds = %merge2827
  %rand2843 = call i32 (...) @rand()
  %randint2844 = urem i32 %rand2843, 32767
  %sitofp2845 = sitofp i32 %randint2844 to double
  %randfloat2846 = fdiv double %sitofp2845, 3.276700e+04
  %frandstate2847 = fmul double %randfloat2846, %sitofp2803
  %randstate2848 = fptoui double %frandstate2847 to i32
  store i32 %randstate2848, i32* %field2821
  br label %merge2841

else2849:                                         ; preds = %merge2827
  store i32 %source_nextstate2820, i32* %field2821
  br label %merge2841

merge2853:                                        ; preds = %copycond2807
  %i2854 = load i32, i32* %i1658
  %tmp2855 = mul i32 2, %i2854
  %tmp2856 = add i32 6, %tmp2855
  %tmp2857 = add i32 %tmp2856, 1
  %players12858 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen2859 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players12858, i32 0, i32 0
  %arrlen2860 = load i32, i32* %getlen2859
  %sub2861 = sub i32 %arrlen2860, 1
  %error2862 = icmp sgt i32 %tmp2857, %sub2861
  br i1 %error2862, label %error2864, label %merge2863

merge2863:                                        ; preds = %merge2853, %error2864
  %addr2866 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon2867 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2866, i32 0, i32 1
  %conaddr2868 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2867
  %access2869 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2868, i32 %tmp2857
  %players12870 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2869
  %field2871 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players12870, i32 0, i32 0
  %mutate2872 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2871
  %field2873 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2872, i32 0, i32 0
  %nplayers2874 = load i32, i32* %field2873
  %field2875 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2872, i32 0, i32 1
  %nmoves2876 = load i32, i32* %field2875
  %field2877 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2872, i32 0, i32 2
  %nstates2878 = load i32, i32* %field2877
  %sitofp2879 = sitofp i32 %nmoves2876 to double
  %sitofp2880 = sitofp i32 %nplayers2874 to double
  %exp2881 = call double (double, double, ...) @pow(double %sitofp2879, double %sitofp2880)
  %size2882 = fptoui double %exp2881 to i32
  %size2883 = mul i32 %size2882, %nstates2878
  %sitofp2884 = sitofp i32 %size2883 to double
  %sitofp2885 = sitofp i32 %nmoves2876 to double
  %sitofp2886 = sitofp i32 %nstates2878 to double
  %fcopy_size2887 = fmul double %sitofp2884, 1.000000e+00
  %copy_size2888 = fptoui double %fcopy_size2887 to i32
  %transi2889 = alloca i32
  store i32 0, i32* %transi2889
  br label %copycond2890

error2864:                                        ; preds = %merge2853
  %printerror2865 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.65, i32 0, i32 0), i32 %tmp2857, i32 %sub2861)
  br label %merge2863

copycond2890:                                     ; preds = %merge2924, %merge2863
  %transi2934 = load i32, i32* %transi2889
  %statecomp2935 = icmp slt i32 %transi2934, %copy_size2888
  br i1 %statecomp2935, label %copyloop2891, label %merge2936

copyloop2891:                                     ; preds = %copycond2890
  %load2892 = load i32, i32* %transi2889
  %field2893 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2872, i32 0, i32 3
  %sourceaddr2894 = load { i32, i32 }*, { i32, i32 }** %field2893
  %field2895 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2872, i32 0, i32 3
  %destaddr2896 = load { i32, i32 }*, { i32, i32 }** %field2895
  %source2897 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2894, i32 %load2892
  %dest2898 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2896, i32 %load2892
  %field2899 = getelementptr { i32, i32 }, { i32, i32 }* %source2897, i32 0, i32 0
  %source_output2900 = load i32, i32* %field2899
  %field2901 = getelementptr { i32, i32 }, { i32, i32 }* %dest2898, i32 0, i32 0
  %field2902 = getelementptr { i32, i32 }, { i32, i32 }* %source2897, i32 0, i32 1
  %source_nextstate2903 = load i32, i32* %field2902
  %field2904 = getelementptr { i32, i32 }, { i32, i32 }* %dest2898, i32 0, i32 1
  %rand2905 = call i32 (...) @rand()
  %randint2906 = urem i32 %rand2905, 32767
  %sitofp2907 = sitofp i32 %randint2906 to double
  %randfloat2908 = fdiv double %sitofp2907, 3.276700e+04
  %randcomp2909 = fcmp olt double %randfloat2908, 2.000000e-01
  br i1 %randcomp2909, label %then2911, label %else2918

merge2910:                                        ; preds = %else2918, %then2911
  %rand2919 = call i32 (...) @rand()
  %randint2920 = urem i32 %rand2919, 32767
  %sitofp2921 = sitofp i32 %randint2920 to double
  %randfloat2922 = fdiv double %sitofp2921, 3.276700e+04
  %randcomp2923 = fcmp olt double %randfloat2922, 2.000000e-01
  br i1 %randcomp2923, label %then2925, label %else2932

then2911:                                         ; preds = %copyloop2891
  %rand2912 = call i32 (...) @rand()
  %randint2913 = urem i32 %rand2912, 32767
  %sitofp2914 = sitofp i32 %randint2913 to double
  %randfloat2915 = fdiv double %sitofp2914, 3.276700e+04
  %frandmove2916 = fmul double %randfloat2915, %sitofp2885
  %randmove2917 = fptoui double %frandmove2916 to i32
  store i32 %randmove2917, i32* %field2901
  br label %merge2910

else2918:                                         ; preds = %copyloop2891
  store i32 %source_output2900, i32* %field2901
  br label %merge2910

merge2924:                                        ; preds = %else2932, %then2925
  %inc2933 = add i32 %load2892, 1
  store i32 %inc2933, i32* %transi2889
  br label %copycond2890

then2925:                                         ; preds = %merge2910
  %rand2926 = call i32 (...) @rand()
  %randint2927 = urem i32 %rand2926, 32767
  %sitofp2928 = sitofp i32 %randint2927 to double
  %randfloat2929 = fdiv double %sitofp2928, 3.276700e+04
  %frandstate2930 = fmul double %randfloat2929, %sitofp2886
  %randstate2931 = fptoui double %frandstate2930 to i32
  store i32 %randstate2931, i32* %field2904
  br label %merge2924

else2932:                                         ; preds = %merge2910
  store i32 %source_nextstate2903, i32* %field2904
  br label %merge2924

merge2936:                                        ; preds = %copycond2890
  %i2937 = load i32, i32* %i1658
  %tmp2938 = mul i32 2, %i2937
  %tmp2939 = add i32 6, %tmp2938
  %tmp2940 = add i32 %tmp2939, 1
  %players22941 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getlen2942 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players22941, i32 0, i32 0
  %arrlen2943 = load i32, i32* %getlen2942
  %sub2944 = sub i32 %arrlen2943, 1
  %error2945 = icmp sgt i32 %tmp2940, %sub2944
  br i1 %error2945, label %error2947, label %merge2946

merge2946:                                        ; preds = %merge2936, %error2947
  %addr2949 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players2
  %getcon2950 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr2949, i32 0, i32 1
  %conaddr2951 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon2950
  %access2952 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr2951, i32 %tmp2940
  %players22953 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access2952
  %field2954 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players22953, i32 0, i32 0
  %mutate2955 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field2954
  %field2956 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2955, i32 0, i32 0
  %nplayers2957 = load i32, i32* %field2956
  %field2958 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2955, i32 0, i32 1
  %nmoves2959 = load i32, i32* %field2958
  %field2960 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2955, i32 0, i32 2
  %nstates2961 = load i32, i32* %field2960
  %sitofp2962 = sitofp i32 %nmoves2959 to double
  %sitofp2963 = sitofp i32 %nplayers2957 to double
  %exp2964 = call double (double, double, ...) @pow(double %sitofp2962, double %sitofp2963)
  %size2965 = fptoui double %exp2964 to i32
  %size2966 = mul i32 %size2965, %nstates2961
  %sitofp2967 = sitofp i32 %size2966 to double
  %sitofp2968 = sitofp i32 %nmoves2959 to double
  %sitofp2969 = sitofp i32 %nstates2961 to double
  %fcopy_size2970 = fmul double %sitofp2967, 1.000000e+00
  %copy_size2971 = fptoui double %fcopy_size2970 to i32
  %transi2972 = alloca i32
  store i32 0, i32* %transi2972
  br label %copycond2973

error2947:                                        ; preds = %merge2936
  %printerror2948 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.66, i32 0, i32 0), i32 %tmp2940, i32 %sub2944)
  br label %merge2946

copycond2973:                                     ; preds = %merge3007, %merge2946
  %transi3017 = load i32, i32* %transi2972
  %statecomp3018 = icmp slt i32 %transi3017, %copy_size2971
  br i1 %statecomp3018, label %copyloop2974, label %merge3019

copyloop2974:                                     ; preds = %copycond2973
  %load2975 = load i32, i32* %transi2972
  %field2976 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2955, i32 0, i32 3
  %sourceaddr2977 = load { i32, i32 }*, { i32, i32 }** %field2976
  %field2978 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %mutate2955, i32 0, i32 3
  %destaddr2979 = load { i32, i32 }*, { i32, i32 }** %field2978
  %source2980 = getelementptr { i32, i32 }, { i32, i32 }* %sourceaddr2977, i32 %load2975
  %dest2981 = getelementptr { i32, i32 }, { i32, i32 }* %destaddr2979, i32 %load2975
  %field2982 = getelementptr { i32, i32 }, { i32, i32 }* %source2980, i32 0, i32 0
  %source_output2983 = load i32, i32* %field2982
  %field2984 = getelementptr { i32, i32 }, { i32, i32 }* %dest2981, i32 0, i32 0
  %field2985 = getelementptr { i32, i32 }, { i32, i32 }* %source2980, i32 0, i32 1
  %source_nextstate2986 = load i32, i32* %field2985
  %field2987 = getelementptr { i32, i32 }, { i32, i32 }* %dest2981, i32 0, i32 1
  %rand2988 = call i32 (...) @rand()
  %randint2989 = urem i32 %rand2988, 32767
  %sitofp2990 = sitofp i32 %randint2989 to double
  %randfloat2991 = fdiv double %sitofp2990, 3.276700e+04
  %randcomp2992 = fcmp olt double %randfloat2991, 2.000000e-01
  br i1 %randcomp2992, label %then2994, label %else3001

merge2993:                                        ; preds = %else3001, %then2994
  %rand3002 = call i32 (...) @rand()
  %randint3003 = urem i32 %rand3002, 32767
  %sitofp3004 = sitofp i32 %randint3003 to double
  %randfloat3005 = fdiv double %sitofp3004, 3.276700e+04
  %randcomp3006 = fcmp olt double %randfloat3005, 2.000000e-01
  br i1 %randcomp3006, label %then3008, label %else3015

then2994:                                         ; preds = %copyloop2974
  %rand2995 = call i32 (...) @rand()
  %randint2996 = urem i32 %rand2995, 32767
  %sitofp2997 = sitofp i32 %randint2996 to double
  %randfloat2998 = fdiv double %sitofp2997, 3.276700e+04
  %frandmove2999 = fmul double %randfloat2998, %sitofp2968
  %randmove3000 = fptoui double %frandmove2999 to i32
  store i32 %randmove3000, i32* %field2984
  br label %merge2993

else3001:                                         ; preds = %copyloop2974
  store i32 %source_output2983, i32* %field2984
  br label %merge2993

merge3007:                                        ; preds = %else3015, %then3008
  %inc3016 = add i32 %load2975, 1
  store i32 %inc3016, i32* %transi2972
  br label %copycond2973

then3008:                                         ; preds = %merge2993
  %rand3009 = call i32 (...) @rand()
  %randint3010 = urem i32 %rand3009, 32767
  %sitofp3011 = sitofp i32 %randint3010 to double
  %randfloat3012 = fdiv double %sitofp3011, 3.276700e+04
  %frandstate3013 = fmul double %randfloat3012, %sitofp2969
  %randstate3014 = fptoui double %frandstate3013 to i32
  store i32 %randstate3014, i32* %field2987
  br label %merge3007

else3015:                                         ; preds = %merge2993
  store i32 %source_nextstate2986, i32* %field2987
  br label %merge3007

merge3019:                                        ; preds = %copycond2973
  br label %merge3020

merge3020:                                        ; preds = %merge3019
  %i3021 = load i32, i32* %i1659
  %iplusone3022 = add i32 %i3021, 1
  store i32 %iplusone3022, i32* %i1659
  %loadi3023 = load i32, i32* %i1659
  %addr3024 = load { i32, i32* }*, { i32, i32* }** %eptr1650
  %getcon3025 = getelementptr { i32, i32* }, { i32, i32* }* %addr3024, i32 0, i32 1
  %conaddr3026 = load i32*, i32** %getcon3025
  %access3027 = getelementptr i32, i32* %conaddr3026, i32 %loadi3023
  %current3028 = load i32, i32* %access3027
  store i32 %current3028, i32* %i1658
  br label %for1660

merge3031:                                        ; preds = %for1660
  %strlen = call i32 (i8*, ...) @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i32 0, i32 0))
  %payoffs13032 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getlen3033 = getelementptr { i32, double* }, { i32, double* }* %payoffs13032, i32 0, i32 0
  %arrlen3034 = load i32, i32* %getlen3033
  %sub3035 = sub i32 %arrlen3034, 1
  %error3036 = icmp sgt i32 0, %sub3035
  br i1 %error3036, label %error3038, label %merge3037

merge3037:                                        ; preds = %merge3031, %error3038
  %addr3040 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon3041 = getelementptr { i32, double* }, { i32, double* }* %addr3040, i32 0, i32 1
  %conaddr3042 = load double*, double** %getcon3041
  %access3043 = getelementptr double, double* %conaddr3042, i32 0
  %payoffs13044 = load double, double* %access3043
  %strofnum3045 = alloca i8, i32 32
  %sprintf3046 = call i32 (i8*, i8*, ...) @sprintf(i8* %strofnum3045, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmtf.30, i32 0, i32 0), double %payoffs13044)
  %strlen3047 = call i32 (i8*, ...) @strlen(i8* %strofnum3045)
  %size3048 = add i32 %strlen, %strlen3047
  %result3049 = alloca i8, i32 %size3048
  %strcpy = call i8* (i8*, i8*, ...) @strcpy(i8* %result3049, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i32 0, i32 0))
  %strcat = call i8* (i8*, i8*, ...) @strcat(i8* %result3049, i8* %strofnum3045)
  %printf3050 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln.28, i32 0, i32 0), i8* %result3049)
  %strlen3051 = call i32 (i8*, ...) @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.68, i32 0, i32 0))
  %payoffs13052 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getlen3053 = getelementptr { i32, double* }, { i32, double* }* %payoffs13052, i32 0, i32 0
  %arrlen3054 = load i32, i32* %getlen3053
  %sub3055 = sub i32 %arrlen3054, 1
  %error3056 = icmp sgt i32 9, %sub3055
  br i1 %error3056, label %error3058, label %merge3057

error3038:                                        ; preds = %merge3031
  %printerror3039 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.67, i32 0, i32 0), i32 0, i32 %sub3035)
  br label %merge3037

merge3057:                                        ; preds = %merge3037, %error3058
  %addr3060 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon3061 = getelementptr { i32, double* }, { i32, double* }* %addr3060, i32 0, i32 1
  %conaddr3062 = load double*, double** %getcon3061
  %access3063 = getelementptr double, double* %conaddr3062, i32 9
  %payoffs13064 = load double, double* %access3063
  %strofnum3065 = alloca i8, i32 32
  %sprintf3066 = call i32 (i8*, i8*, ...) @sprintf(i8* %strofnum3065, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmtf.30, i32 0, i32 0), double %payoffs13064)
  %strlen3067 = call i32 (i8*, ...) @strlen(i8* %strofnum3065)
  %size3068 = add i32 %strlen3051, %strlen3067
  %result3069 = alloca i8, i32 %size3068
  %strcpy3070 = call i8* (i8*, i8*, ...) @strcpy(i8* %result3069, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.68, i32 0, i32 0))
  %strcat3071 = call i8* (i8*, i8*, ...) @strcat(i8* %result3069, i8* %strofnum3065)
  %printf3072 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln.28, i32 0, i32 0), i8* %result3069)
  %newarray3073 = alloca { i32, i32* }
  %contents3074 = alloca i32, i32 10
  %ptrdest3075 = getelementptr { i32, i32* }, { i32, i32* }* %newarray3073, i32 0, i32 0
  %ptrdest3076 = getelementptr { i32, i32* }, { i32, i32* }* %newarray3073, i32 0, i32 1
  store i32 10, i32* %ptrdest3075
  store i32* %contents3074, i32** %ptrdest3076
  %rangeptr3077 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray3073, { i32, i32* }** %rangeptr3077
  %addr3078 = load { i32, i32* }*, { i32, i32* }** %rangeptr3077
  %getcon3079 = getelementptr { i32, i32* }, { i32, i32* }* %addr3078, i32 0, i32 1
  %conaddr3080 = load i32*, i32** %getcon3079
  %access3081 = getelementptr i32, i32* %conaddr3080, i32 9
  br label %range3082

error3058:                                        ; preds = %merge3037
  %printerror3059 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.69, i32 0, i32 0), i32 9, i32 %sub3055)
  br label %merge3057

range3082:                                        ; preds = %merge3057
  %i3083 = alloca i32
  store i32 0, i32* %i3083
  br label %while3084

while3084:                                        ; preds = %while_loop3085, %range3082
  %lastentry3094 = load i32, i32* %access3081
  %rangecomp3095 = icmp ne i32 %lastentry3094, 9
  br i1 %rangecomp3095, label %while_loop3085, label %merge3096

while_loop3085:                                   ; preds = %while3084
  %loadi3086 = load i32, i32* %i3083
  %addr3087 = load { i32, i32* }*, { i32, i32* }** %rangeptr3077
  %getcon3088 = getelementptr { i32, i32* }, { i32, i32* }* %addr3087, i32 0, i32 1
  %conaddr3089 = load i32*, i32** %getcon3088
  %access3090 = getelementptr i32, i32* %conaddr3089, i32 %loadi3086
  %calcval3091 = add i32 0, %loadi3086
  store i32 %calcval3091, i32* %access3090
  %i3092 = load i32, i32* %i3083
  %iplusone3093 = add i32 %i3092, 1
  store i32 %iplusone3093, i32* %i3083
  br label %while3084

merge3096:                                        ; preds = %while3084
  %eptr3097 = alloca { i32, i32* }*
  store { i32, i32* }* %newarray3073, { i32, i32* }** %eptr3097
  %getlen3098 = getelementptr { i32, i32* }, { i32, i32* }* %newarray3073, i32 0, i32 0
  %size3099 = load i32, i32* %getlen3098
  %addr3100 = load { i32, i32* }*, { i32, i32* }** %eptr3097
  %getcon3101 = getelementptr { i32, i32* }, { i32, i32* }* %addr3100, i32 0, i32 1
  %conaddr3102 = load i32*, i32** %getcon3101
  %access3103 = getelementptr i32, i32* %conaddr3102, i32 0
  %current3104 = load i32, i32* %access3103
  %i3105 = alloca i32
  store i32 %current3104, i32* %i3105
  %i3106 = alloca i32
  store i32 0, i32* %i3106
  br label %for3107

for3107:                                          ; preds = %merge3120, %merge3096
  %i3129 = load i32, i32* %i3106
  %forcomp3130 = icmp ne i32 %i3129, %size3099
  br i1 %forcomp3130, label %for_loop3108, label %merge3131

for_loop3108:                                     ; preds = %for3107
  br label %block3109

block3109:                                        ; preds = %for_loop3108
  %i3110 = load i32, i32* %i3105
  %addr3111 = load { i32, double* }*, { i32, double* }** @payoffs1
  %getcon3112 = getelementptr { i32, double* }, { i32, double* }* %addr3111, i32 0, i32 1
  %conaddr3113 = load double*, double** %getcon3112
  %access3114 = getelementptr double, double* %conaddr3113, i32 %i3110
  store double 0.000000e+00, double* %access3114
  %i3115 = load i32, i32* %i3105
  %addr3116 = load { i32, double* }*, { i32, double* }** @payoffs2
  %getcon3117 = getelementptr { i32, double* }, { i32, double* }* %addr3116, i32 0, i32 1
  %conaddr3118 = load double*, double** %getcon3117
  %access3119 = getelementptr double, double* %conaddr3118, i32 %i3115
  store double 0.000000e+00, double* %access3119
  br label %merge3120

merge3120:                                        ; preds = %block3109
  %i3121 = load i32, i32* %i3106
  %iplusone3122 = add i32 %i3121, 1
  store i32 %iplusone3122, i32* %i3106
  %loadi3123 = load i32, i32* %i3106
  %addr3124 = load { i32, i32* }*, { i32, i32* }** %eptr3097
  %getcon3125 = getelementptr { i32, i32* }, { i32, i32* }* %addr3124, i32 0, i32 1
  %conaddr3126 = load i32*, i32** %getcon3125
  %access3127 = getelementptr i32, i32* %conaddr3126, i32 %loadi3123
  %current3128 = load i32, i32* %access3127
  store i32 %current3128, i32* %i3105
  br label %for3107

merge3131:                                        ; preds = %for3107
  br label %merge3132

merge3132:                                        ; preds = %merge3131
  %i3133 = load i32, i32* %i1088
  %iplusone3134 = add i32 %i3133, 1
  store i32 %iplusone3134, i32* %i1088
  %loadi3135 = load i32, i32* %i1088
  %addr3136 = load { i32, i32* }*, { i32, i32* }** %eptr1080
  %getcon3137 = getelementptr { i32, i32* }, { i32, i32* }* %addr3136, i32 0, i32 1
  %conaddr3138 = load i32*, i32** %getcon3137
  %access3139 = getelementptr i32, i32* %conaddr3138, i32 %loadi3135
  %current3140 = load i32, i32* %access3139
  store i32 %current3140, i32* %t
  br label %for1089

merge3143:                                        ; preds = %for1089
  %players13144 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getlen3145 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %players13144, i32 0, i32 0
  %arrlen3146 = load i32, i32* %getlen3145
  %sub3147 = sub i32 %arrlen3146, 1
  %error3148 = icmp sgt i32 0, %sub3147
  br i1 %error3148, label %error3150, label %merge3149

merge3149:                                        ; preds = %merge3143, %error3150
  %addr3152 = load { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }*, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }** @players1
  %getcon3153 = getelementptr { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }, { i32, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** }* %addr3152, i32 0, i32 1
  %conaddr3154 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }**, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*** %getcon3153
  %access3155 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %conaddr3154, i32 0
  %players13156 = load { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }*, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }** %access3155
  %field3157 = getelementptr { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }, { { i32, i32, i32, { i32, i32 }* }*, double, double, i32, i32 }* %players13156, i32 0, i32 0
  %fieldzero3158 = load { i32, i32, i32, { i32, i32 }* }*, { i32, i32, i32, { i32, i32 }* }** %field3157
  %strofnum3159 = alloca i8, i32 32
  %field3160 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero3158, i32 0, i32 0
  %nplayers3161 = load i32, i32* %field3160
  %field3162 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero3158, i32 0, i32 1
  %nmoves3163 = load i32, i32* %field3162
  %field3164 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero3158, i32 0, i32 2
  %nstates3165 = load i32, i32* %field3164
  %move_size = mul i32 %nplayers3161, 2
  %moves_size = add i32 %move_size, 15
  %sitofp3166 = sitofp i32 %nmoves3163 to double
  %sitofp3167 = sitofp i32 %nplayers3161 to double
  %exp3168 = call double (double, double, ...) @pow(double %sitofp3166, double %sitofp3167)
  %size3169 = fptoui double %exp3168 to i32
  %temp1 = mul i32 %size3169, %moves_size
  %state_size = add i32 %temp1, 16
  %strat_str_size = mul i32 %state_size, %nstates3165
  %stralloca = alloca i8, i32 %strat_str_size
  %sprintf3170 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr.34, i32 0, i32 0))
  %statei3171 = alloca i32
  %transi3172 = alloca i32
  %movei = alloca i32
  store i32 0, i32* %statei3171
  br label %whileone

error3150:                                        ; preds = %merge3143
  %printerror3151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fmte.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @error.70, i32 0, i32 0), i32 0, i32 %sub3147)
  br label %merge3149

whileone:                                         ; preds = %merge3217, %merge3149
  %load3220 = load i32, i32* %statei3171
  %slt3221 = icmp slt i32 %load3220, %nstates3165
  br i1 %slt3221, label %whileone_loop, label %merge3222

whileone_loop:                                    ; preds = %whileone
  store i32 0, i32* %transi3172
  %load3173 = load i32, i32* %statei3171
  %load3174 = load i32, i32* %transi3172
  %field3175 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero3158, i32 0, i32 3
  %transaddr3176 = load { i32, i32 }*, { i32, i32 }** %field3175
  %state3177 = mul i32 %size3169, %load3173
  %state3178 = add i32 %load3174, %state3177
  %access3179 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr3176, i32 %state3178
  %field3180 = getelementptr { i32, i32 }, { i32, i32 }* %access3179, i32 0, i32 0
  %current_output = load i32, i32* %field3180
  %stralloca3181 = alloca i8, i32 16
  %sprintf3182 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3181, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr.34, i32 0, i32 0))
  %sprintf3183 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @fmts.33, i32 0, i32 0), i32 %load3173, i32 %current_output)
  %strcat3184 = call i8* (i8*, i8*, ...) @strcat(i8* %stralloca, i8* %stralloca3181)
  br label %whiletwo

whiletwo:                                         ; preds = %merge3203, %whileone_loop
  %load3216 = load i32, i32* %transi3172
  %slt = icmp slt i32 %load3216, %size3169
  br i1 %slt, label %whiletwo_loop, label %merge3217

whiletwo_loop:                                    ; preds = %whiletwo
  %mul = mul i32 %nmoves3163, 2
  %add = add i32 %mul, 15
  %stralloca3185 = alloca i8, i32 %mul
  %sprintf3186 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3185, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr.34, i32 0, i32 0))
  %stralloca3187 = alloca i8, i32 %add
  %sprintf3188 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3187, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fmtclr.34, i32 0, i32 0))
  store i32 %nplayers3161, i32* %movei
  br label %whilethree

whilethree:                                       ; preds = %whilethree_loop, %whiletwo_loop
  %load3202 = load i32, i32* %movei
  %sgt = icmp sgt i32 %load3202, 0
  br i1 %sgt, label %whilethree_loop, label %merge3203

whilethree_loop:                                  ; preds = %whilethree
  %load3189 = load i32, i32* %movei
  %load3190 = load i32, i32* %transi3172
  %decmovei = sub i32 %load3189, 1
  %sitofp3191 = sitofp i32 %nmoves3163 to double
  %sitofp3192 = sitofp i32 %load3189 to double
  %pow3193 = call double (double, double, ...) @pow(double %sitofp3191, double %sitofp3192)
  %sitofp3194 = sitofp i32 %nmoves3163 to double
  %sitofp3195 = sitofp i32 %decmovei to double
  %pow3196 = call double (double, double, ...) @pow(double %sitofp3194, double %sitofp3195)
  %fptoui = fptoui double %pow3193 to i32
  %fptoui3197 = fptoui double %pow3196 to i32
  %urem = urem i32 %load3190, %fptoui
  %div = sdiv i32 %urem, %fptoui3197
  %stralloca3198 = alloca i8, i32 2
  %sprintf3199 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtm.31, i32 0, i32 0), i32 %div)
  %strcat3200 = call i8* (i8*, i8*, ...) @strcat(i8* %stralloca3185, i8* %stralloca3198)
  %sub3201 = sub i32 %load3189, 1
  store i32 %sub3201, i32* %movei
  br label %whilethree

merge3203:                                        ; preds = %whilethree
  %load3204 = load i32, i32* %statei3171
  %load3205 = load i32, i32* %transi3172
  %field3206 = getelementptr { i32, i32, i32, { i32, i32 }* }, { i32, i32, i32, { i32, i32 }* }* %fieldzero3158, i32 0, i32 3
  %transaddr3207 = load { i32, i32 }*, { i32, i32 }** %field3206
  %state3208 = mul i32 %size3169, %load3204
  %state3209 = add i32 %load3205, %state3208
  %access3210 = getelementptr { i32, i32 }, { i32, i32 }* %transaddr3207, i32 %state3209
  %field3211 = getelementptr { i32, i32 }, { i32, i32 }* %access3210, i32 0, i32 1
  %current_nextstate = load i32, i32* %field3211
  %sprintf3212 = call i32 (i8*, i8*, ...) @sprintf(i8* %stralloca3187, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @fmtt.32, i32 0, i32 0), i8* %stralloca3185, i32 %current_nextstate)
  %strcat3213 = call i8* (i8*, i8*, ...) @strcat(i8* %stralloca, i8* %stralloca3187)
  %load3214 = load i32, i32* %transi3172
  %add3215 = add i32 %load3214, 1
  store i32 %add3215, i32* %transi3172
  br label %whiletwo

merge3217:                                        ; preds = %whiletwo
  %load3218 = load i32, i32* %statei3171
  %add3219 = add i32 %load3218, 1
  store i32 %add3219, i32* %statei3171
  br label %whileone

merge3222:                                        ; preds = %whileone
  %printf3223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmtln.28, i32 0, i32 0), i8* %stralloca)
  ret i32 0

merge3224:                                        ; No predecessors!
  ret i32 0
}
