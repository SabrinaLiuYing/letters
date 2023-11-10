; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { %struct.bstnode* }
%struct.bstnode = type { i8*, i8*, %struct.bstnode*, %struct.bstnode* }

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"/u1/dtompkins/.seashell/projects/_Final/q4-letters/dictionary.c\00", align 1
@__PRETTY_FUNCTION__.dict_insert = private unnamed_addr constant [66 x i8] c"void dict_insert(const char *, const char *, struct dictionary *)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@__PRETTY_FUNCTION__.my_strdup = private unnamed_addr constant [30 x i8] c"char *my_strdup(const char *)\00", align 1
@__PRETTY_FUNCTION__.dict_lookup = private unnamed_addr constant [65 x i8] c"const char *dict_lookup(const char *, const struct dictionary *)\00", align 1
@__PRETTY_FUNCTION__.dict_destroy = private unnamed_addr constant [39 x i8] c"void dict_destroy(struct dictionary *)\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.dictionary* @dict_create() #0 {
entry:
  %d = alloca %struct.dictionary*, align 8
  %call = call noalias i8* @malloc(i64 8) #4
  %0 = bitcast i8* %call to %struct.dictionary*
  store %struct.dictionary* %0, %struct.dictionary** %d, align 8
  %1 = load %struct.dictionary*, %struct.dictionary** %d, align 8
  %root = getelementptr inbounds %struct.dictionary, %struct.dictionary* %1, i32 0, i32 0
  store %struct.bstnode* null, %struct.bstnode** %root, align 8
  %2 = load %struct.dictionary*, %struct.dictionary** %d, align 8
  ret %struct.dictionary* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone
define void @dict_insert(i8* %key, i8* %val, %struct.dictionary* %d) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  %d.addr = alloca %struct.dictionary*, align 8
  %node = alloca %struct.bstnode*, align 8
  %parent = alloca %struct.bstnode*, align 8
  %cmp = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  store %struct.dictionary* %d, %struct.dictionary** %d.addr, align 8
  %0 = load %struct.dictionary*, %struct.dictionary** %d.addr, align 8
  %tobool = icmp ne %struct.dictionary* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 53, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.dict_insert, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %key.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 54, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.dict_insert, i64 0, i64 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load i8*, i8** %val.addr, align 8
  %tobool5 = icmp ne i8* %2, null
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.dict_insert, i64 0, i64 0)) #5
  unreachable

if.end8:                                          ; preds = %if.then6
  %3 = load %struct.dictionary*, %struct.dictionary** %d.addr, align 8
  %root = getelementptr inbounds %struct.dictionary, %struct.dictionary* %3, i32 0, i32 0
  %4 = load %struct.bstnode*, %struct.bstnode** %root, align 8
  store %struct.bstnode* %4, %struct.bstnode** %node, align 8
  store %struct.bstnode* null, %struct.bstnode** %parent, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end8
  %5 = load %struct.bstnode*, %struct.bstnode** %node, align 8
  %tobool9 = icmp ne %struct.bstnode* %5, null
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %key.addr, align 8
  %7 = load %struct.bstnode*, %struct.bstnode** %node, align 8
  %item = getelementptr inbounds %struct.bstnode, %struct.bstnode* %7, i32 0, i32 0
  %8 = load i8*, i8** %item, align 8
  %call = call i32 @strcmp(i8* %6, i8* %8) #6
  store i32 %call, i32* %cmp, align 4
  %9 = load i32, i32* %cmp, align 4
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body
  br label %if.end32

if.end12:                                         ; preds = %while.body
  %10 = load %struct.bstnode*, %struct.bstnode** %node, align 8
  store %struct.bstnode* %10, %struct.bstnode** %parent, align 8
  %11 = load i32, i32* %cmp, align 4
  %cmp13 = icmp slt i32 %11, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.end12
  %12 = load %struct.bstnode*, %struct.bstnode** %node, align 8
  %left = getelementptr inbounds %struct.bstnode, %struct.bstnode* %12, i32 0, i32 2
  %13 = load %struct.bstnode*, %struct.bstnode** %left, align 8
  store %struct.bstnode* %13, %struct.bstnode** %node, align 8
  br label %if.end16

if.else15:                                        ; preds = %if.end12
  %14 = load %struct.bstnode*, %struct.bstnode** %node, align 8
  %right = getelementptr inbounds %struct.bstnode, %struct.bstnode* %14, i32 0, i32 3
  %15 = load %struct.bstnode*, %struct.bstnode** %right, align 8
  store %struct.bstnode* %15, %struct.bstnode** %node, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.bstnode*, %struct.bstnode** %parent, align 8
  %cmp17 = icmp eq %struct.bstnode* %16, null
  br i1 %cmp17, label %if.then18, label %if.else21

if.then18:                                        ; preds = %while.end
  %17 = load i8*, i8** %key.addr, align 8
  %18 = load i8*, i8** %val.addr, align 8
  %call19 = call %struct.bstnode* @new_leaf(i8* %17, i8* %18)
  %19 = load %struct.dictionary*, %struct.dictionary** %d.addr, align 8
  %root20 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %19, i32 0, i32 0
  store %struct.bstnode* %call19, %struct.bstnode** %root20, align 8
  br label %if.end32

if.else21:                                        ; preds = %while.end
  %20 = load i8*, i8** %key.addr, align 8
  %21 = load %struct.bstnode*, %struct.bstnode** %parent, align 8
  %item22 = getelementptr inbounds %struct.bstnode, %struct.bstnode* %21, i32 0, i32 0
  %22 = load i8*, i8** %item22, align 8
  %call23 = call i32 @strcmp(i8* %20, i8* %22) #6
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else21
  %23 = load i8*, i8** %key.addr, align 8
  %24 = load i8*, i8** %val.addr, align 8
  %call26 = call %struct.bstnode* @new_leaf(i8* %23, i8* %24)
  %25 = load %struct.bstnode*, %struct.bstnode** %parent, align 8
  %left27 = getelementptr inbounds %struct.bstnode, %struct.bstnode* %25, i32 0, i32 2
  store %struct.bstnode* %call26, %struct.bstnode** %left27, align 8
  br label %if.end31

if.else28:                                        ; preds = %if.else21
  %26 = load i8*, i8** %key.addr, align 8
  %27 = load i8*, i8** %val.addr, align 8
  %call29 = call %struct.bstnode* @new_leaf(i8* %26, i8* %27)
  %28 = load %struct.bstnode*, %struct.bstnode** %parent, align 8
  %right30 = getelementptr inbounds %struct.bstnode, %struct.bstnode* %28, i32 0, i32 3
  store %struct.bstnode* %call29, %struct.bstnode** %right30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then25
  br label %if.end32

if.end32:                                         ; preds = %if.then11, %if.end31, %if.then18
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone
define internal %struct.bstnode* @new_leaf(i8* %key, i8* %val) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  %leaf = alloca %struct.bstnode*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.bstnode*
  store %struct.bstnode* %0, %struct.bstnode** %leaf, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call1 = call i8* @my_strdup(i8* %1)
  %2 = load %struct.bstnode*, %struct.bstnode** %leaf, align 8
  %item = getelementptr inbounds %struct.bstnode, %struct.bstnode* %2, i32 0, i32 0
  store i8* %call1, i8** %item, align 8
  %3 = load i8*, i8** %val.addr, align 8
  %call2 = call i8* @my_strdup(i8* %3)
  %4 = load %struct.bstnode*, %struct.bstnode** %leaf, align 8
  %value = getelementptr inbounds %struct.bstnode, %struct.bstnode* %4, i32 0, i32 1
  store i8* %call2, i8** %value, align 8
  %5 = load %struct.bstnode*, %struct.bstnode** %leaf, align 8
  %left = getelementptr inbounds %struct.bstnode, %struct.bstnode* %5, i32 0, i32 2
  store %struct.bstnode* null, %struct.bstnode** %left, align 8
  %6 = load %struct.bstnode*, %struct.bstnode** %leaf, align 8
  %right = getelementptr inbounds %struct.bstnode, %struct.bstnode* %6, i32 0, i32 3
  store %struct.bstnode* null, %struct.bstnode** %right, align 8
  %7 = load %struct.bstnode*, %struct.bstnode** %leaf, align 8
  ret %struct.bstnode* %7
}

; Function Attrs: noinline nounwind optnone
define internal i8* @my_strdup(i8* %src) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dup = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.my_strdup, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %src.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %mul = mul i64 %call, 1
  %add = add i64 %mul, 1
  %call1 = call noalias i8* @malloc(i64 %add) #4
  store i8* %call1, i8** %dup, align 8
  %2 = load i8*, i8** %dup, align 8
  %3 = load i8*, i8** %src.addr, align 8
  %call2 = call i8* @strcpy(i8* %2, i8* %3) #4
  %4 = load i8*, i8** %dup, align 8
  ret i8* %4
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone
define i8* @dict_lookup(i8* %key, %struct.dictionary* %d) #0 {
entry:
  %retval = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %d.addr = alloca %struct.dictionary*, align 8
  %node = alloca %struct.bstnode*, align 8
  %cmp = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store %struct.dictionary* %d, %struct.dictionary** %d.addr, align 8
  %0 = load %struct.dictionary*, %struct.dictionary** %d.addr, align 8
  %tobool = icmp ne %struct.dictionary* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 81, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.dict_lookup, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %key.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.dict_lookup, i64 0, i64 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.dictionary*, %struct.dictionary** %d.addr, align 8
  %root = getelementptr inbounds %struct.dictionary, %struct.dictionary* %2, i32 0, i32 0
  %3 = load %struct.bstnode*, %struct.bstnode** %root, align 8
  store %struct.bstnode* %3, %struct.bstnode** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %if.end4
  %4 = load %struct.bstnode*, %struct.bstnode** %node, align 8
  %tobool5 = icmp ne %struct.bstnode* %4, null
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %key.addr, align 8
  %6 = load %struct.bstnode*, %struct.bstnode** %node, align 8
  %item = getelementptr inbounds %struct.bstnode, %struct.bstnode* %6, i32 0, i32 0
  %7 = load i8*, i8** %item, align 8
  %call = call i32 @strcmp(i8* %5, i8* %7) #6
  store i32 %call, i32* %cmp, align 4
  %8 = load i32, i32* %cmp, align 4
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  %9 = load %struct.bstnode*, %struct.bstnode** %node, align 8
  %value = getelementptr inbounds %struct.bstnode, %struct.bstnode* %9, i32 0, i32 1
  %10 = load i8*, i8** %value, align 8
  store i8* %10, i8** %retval, align 8
  br label %return

if.end8:                                          ; preds = %while.body
  %11 = load i32, i32* %cmp, align 4
  %cmp9 = icmp slt i32 %11, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end8
  %12 = load %struct.bstnode*, %struct.bstnode** %node, align 8
  %left = getelementptr inbounds %struct.bstnode, %struct.bstnode* %12, i32 0, i32 2
  %13 = load %struct.bstnode*, %struct.bstnode** %left, align 8
  store %struct.bstnode* %13, %struct.bstnode** %node, align 8
  br label %if.end12

if.else11:                                        ; preds = %if.end8
  %14 = load %struct.bstnode*, %struct.bstnode** %node, align 8
  %right = getelementptr inbounds %struct.bstnode, %struct.bstnode* %14, i32 0, i32 3
  %15 = load %struct.bstnode*, %struct.bstnode** %right, align 8
  store %struct.bstnode* %15, %struct.bstnode** %node, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then7
  %16 = load i8*, i8** %retval, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind optnone
define void @dict_destroy(%struct.dictionary* %d) #0 {
entry:
  %d.addr = alloca %struct.dictionary*, align 8
  store %struct.dictionary* %d, %struct.dictionary** %d.addr, align 8
  %0 = load %struct.dictionary*, %struct.dictionary** %d.addr, align 8
  %tobool = icmp ne %struct.dictionary* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.dict_destroy, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.dictionary*, %struct.dictionary** %d.addr, align 8
  %root = getelementptr inbounds %struct.dictionary, %struct.dictionary* %1, i32 0, i32 0
  %2 = load %struct.bstnode*, %struct.bstnode** %root, align 8
  call void @free_bstnode(%struct.bstnode* %2)
  %3 = load %struct.dictionary*, %struct.dictionary** %d.addr, align 8
  %4 = bitcast %struct.dictionary* %3 to i8*
  call void @free(i8* %4) #4
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @free_bstnode(%struct.bstnode* %node) #0 {
entry:
  %node.addr = alloca %struct.bstnode*, align 8
  store %struct.bstnode* %node, %struct.bstnode** %node.addr, align 8
  %0 = load %struct.bstnode*, %struct.bstnode** %node.addr, align 8
  %tobool = icmp ne %struct.bstnode* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bstnode*, %struct.bstnode** %node.addr, align 8
  %left = getelementptr inbounds %struct.bstnode, %struct.bstnode* %1, i32 0, i32 2
  %2 = load %struct.bstnode*, %struct.bstnode** %left, align 8
  call void @free_bstnode(%struct.bstnode* %2)
  %3 = load %struct.bstnode*, %struct.bstnode** %node.addr, align 8
  %right = getelementptr inbounds %struct.bstnode, %struct.bstnode* %3, i32 0, i32 3
  %4 = load %struct.bstnode*, %struct.bstnode** %right, align 8
  call void @free_bstnode(%struct.bstnode* %4)
  %5 = load %struct.bstnode*, %struct.bstnode** %node.addr, align 8
  %item = getelementptr inbounds %struct.bstnode, %struct.bstnode* %5, i32 0, i32 0
  %6 = load i8*, i8** %item, align 8
  call void @free(i8* %6) #4
  %7 = load %struct.bstnode*, %struct.bstnode** %node.addr, align 8
  %value = getelementptr inbounds %struct.bstnode, %struct.bstnode* %7, i32 0, i32 1
  %8 = load i8*, i8** %value, align 8
  call void @free(i8* %8) #4
  %9 = load %struct.bstnode*, %struct.bstnode** %node.addr, align 8
  %10 = bitcast %struct.bstnode* %9 to i8*
  call void @free(i8* %10) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1 = !{i32 1, !"wchar_size", i32 4}
