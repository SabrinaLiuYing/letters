; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type opaque

@.str = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"/u1/dtompkins/.seashell/projects/_Final/q4-letters/read-dicts.c\00", align 1
@__PRETTY_FUNCTION__.read_dicts = private unnamed_addr constant [44 x i8] c"struct dictionary **read_dicts(int *, char)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"invalid count\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid dictionary id\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"invalid key\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"invalid val\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"UNEXPECTED ERROR: invalid input for read_dicts: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.dictionary** @read_dicts(i32* %count, i8 signext %delim) #0 {
entry:
  %count.addr = alloca i32*, align 8
  %delim.addr = alloca i8, align 1
  %aod = alloca %struct.dictionary**, align 8
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %key = alloca i8*, align 8
  %val = alloca i8*, align 8
  store i32* %count, i32** %count.addr, align 8
  store i8 %delim, i8* %delim.addr, align 1
  %0 = load i32*, i32** %count.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.read_dicts, i64 0, i64 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32*, i32** %count.addr, align 8
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %cmp = icmp ne i32 %call, 1
  %conv = zext i1 %cmp to i32
  call void @check_abort(i32 %conv, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %2 = load i32*, i32** %count.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp1 = icmp slt i32 %3, 1
  %conv2 = zext i1 %cmp1 to i32
  call void @check_abort(i32 %conv2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %4 = load i32*, i32** %count.addr, align 8
  %5 = load i32, i32* %4, align 4
  %conv3 = sext i32 %5 to i64
  %mul = mul i64 %conv3, 8
  %call4 = call noalias i8* @malloc(i64 %mul) #5
  %6 = bitcast i8* %call4 to %struct.dictionary**
  store %struct.dictionary** %6, %struct.dictionary*** %aod, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32*, i32** %count.addr, align 8
  %9 = load i32, i32* %8, align 4
  %cmp5 = icmp slt i32 %7, %9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call7 = call %struct.dictionary* @dict_create()
  %10 = load %struct.dictionary**, %struct.dictionary*** %aod, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.dictionary*, %struct.dictionary** %10, i64 %idxprom
  store %struct.dictionary* %call7, %struct.dictionary** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.body

while.body:                                       ; preds = %for.end, %lor.end
  store i32 -1, i32* %d, align 4
  %call8 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %d)
  %cmp9 = icmp ne i32 %call8, 1
  %conv10 = zext i1 %cmp9 to i32
  call void @check_abort(i32 %conv10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32, i32* %d, align 4
  %cmp11 = icmp eq i32 %13, -1
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body
  br label %while.end

if.end14:                                         ; preds = %while.body
  %14 = load i32, i32* %d, align 4
  %cmp15 = icmp slt i32 %14, 0
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end14
  %15 = load i32, i32* %d, align 4
  %16 = load i32*, i32** %count.addr, align 8
  %17 = load i32, i32* %16, align 4
  %cmp17 = icmp sge i32 %15, %17
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end14
  %18 = phi i1 [ true, %if.end14 ], [ %cmp17, %lor.rhs ]
  %lor.ext = zext i1 %18 to i32
  call void @check_abort(i32 %lor.ext, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i8, i8* %delim.addr, align 1
  %call19 = call i8* @read_delim(i8 signext %19)
  store i8* %call19, i8** %key, align 8
  %20 = load i8*, i8** %key, align 8
  %cmp20 = icmp eq i8* %20, null
  %conv21 = zext i1 %cmp20 to i32
  call void @check_abort(i32 %conv21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %21 = load i8, i8* %delim.addr, align 1
  %call22 = call i8* @read_delim(i8 signext %21)
  store i8* %call22, i8** %val, align 8
  %22 = load i8*, i8** %val, align 8
  %cmp23 = icmp eq i8* %22, null
  %conv24 = zext i1 %cmp23 to i32
  call void @check_abort(i32 %conv24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i8*, i8** %key, align 8
  %24 = load i8*, i8** %val, align 8
  %25 = load %struct.dictionary**, %struct.dictionary*** %aod, align 8
  %26 = load i32, i32* %d, align 4
  %idxprom25 = sext i32 %26 to i64
  %arrayidx26 = getelementptr inbounds %struct.dictionary*, %struct.dictionary** %25, i64 %idxprom25
  %27 = load %struct.dictionary*, %struct.dictionary** %arrayidx26, align 8
  call void @dict_insert(i8* %23, i8* %24, %struct.dictionary* %27)
  %28 = load i8*, i8** %key, align 8
  call void @free(i8* %28) #5
  %29 = load i8*, i8** %val, align 8
  call void @free(i8* %29) #5
  br label %while.body

while.end:                                        ; preds = %if.then13
  call void @gobble_to_newline()
  %30 = load %struct.dictionary**, %struct.dictionary*** %aod, align 8
  ret %struct.dictionary** %30
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

declare i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define internal void @check_abort(i32 %fail, i8* %s) #0 {
entry:
  %fail.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i32 %fail, i32* %fail.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i32, i32* %fail.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8* %1)
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare %struct.dictionary* @dict_create() #2

; Function Attrs: noinline nounwind optnone
define internal i8* @read_delim(i8 signext %delim) #0 {
entry:
  %retval = alloca i8*, align 8
  %delim.addr = alloca i8, align 1
  %c = alloca i8, align 1
  %len = alloca i32, align 4
  %maxlen = alloca i32, align 4
  %str = alloca i8*, align 8
  store i8 %delim, i8* %delim.addr, align 1
  store i8 0, i8* %c, align 1
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %c)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, i8* %delim.addr, align 1
  %conv1 = sext i8 %1 to i32
  %cmp2 = icmp ne i32 %conv, %conv1
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %len, align 4
  store i32 1, i32* %maxlen, align 4
  %2 = load i32, i32* %maxlen, align 4
  %conv6 = sext i32 %2 to i64
  %mul = mul i64 %conv6, 1
  %call7 = call noalias i8* @malloc(i64 %mul) #5
  store i8* %call7, i8** %str, align 8
  br label %while.body

while.body:                                       ; preds = %if.end5, %if.end26
  %call8 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %c)
  %cmp9 = icmp ne i32 %call8, 1
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body
  %3 = load i8*, i8** %str, align 8
  call void @free(i8* %3) #5
  store i8* null, i8** %retval, align 8
  br label %return

if.end12:                                         ; preds = %while.body
  %4 = load i8, i8* %c, align 1
  %conv13 = sext i8 %4 to i32
  %5 = load i8, i8* %delim.addr, align 1
  %conv14 = sext i8 %5 to i32
  %cmp15 = icmp eq i32 %conv13, %conv14
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  br label %while.end

if.end18:                                         ; preds = %if.end12
  %6 = load i32, i32* %len, align 4
  %7 = load i32, i32* %maxlen, align 4
  %cmp19 = icmp eq i32 %6, %7
  br i1 %cmp19, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end18
  %8 = load i32, i32* %maxlen, align 4
  %mul22 = mul nsw i32 %8, 2
  store i32 %mul22, i32* %maxlen, align 4
  %9 = load i8*, i8** %str, align 8
  %10 = load i32, i32* %maxlen, align 4
  %conv23 = sext i32 %10 to i64
  %mul24 = mul i64 %conv23, 1
  %call25 = call i8* @realloc(i8* %9, i64 %mul24) #5
  store i8* %call25, i8** %str, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end18
  %11 = load i8, i8* %c, align 1
  %12 = load i8*, i8** %str, align 8
  %13 = load i32, i32* %len, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 %11, i8* %arrayidx, align 1
  %14 = load i32, i32* %len, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %len, align 4
  br label %while.body

while.end:                                        ; preds = %if.then17
  %15 = load i32, i32* %len, align 4
  %cmp27 = icmp eq i32 %15, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  %16 = load i8*, i8** %str, align 8
  call void @free(i8* %16) #5
  store i8* null, i8** %retval, align 8
  br label %return

if.end30:                                         ; preds = %while.end
  %17 = load i8*, i8** %str, align 8
  %18 = load i32, i32* %len, align 4
  %add = add nsw i32 %18, 1
  %conv31 = sext i32 %add to i64
  %mul32 = mul i64 %conv31, 1
  %call33 = call i8* @realloc(i8* %17, i64 %mul32) #5
  store i8* %call33, i8** %str, align 8
  %19 = load i8*, i8** %str, align 8
  %20 = load i32, i32* %len, align 4
  %idxprom34 = sext i32 %20 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %19, i64 %idxprom34
  store i8 0, i8* %arrayidx35, align 1
  %21 = load i8*, i8** %str, align 8
  store i8* %21, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end30, %if.then29, %if.then11, %if.then4, %if.then
  %22 = load i8*, i8** %retval, align 8
  ret i8* %22
}

declare void @dict_insert(i8*, i8*, %struct.dictionary*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone
define internal void @gobble_to_newline() #0 {
entry:
  %c = alloca i8, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end4
  store i8 0, i8* %c, align 1
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %c)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp1 = icmp eq i32 %conv, 10
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %while.end

if.end4:                                          ; preds = %if.end
  br label %while.body

while.end:                                        ; preds = %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1 = !{i32 1, !"wchar_size", i32 4}
