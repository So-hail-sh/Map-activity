.class Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 301
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 306
    const-string v0, "unable to setProgress"

    const-string v1, "SplineSet"

    instance-of v2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_13

    .line 307
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;->get(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_4b

    .line 309
    :cond_13
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;->mNoMethod:Z

    if-eqz v2, :cond_18

    .line 310
    return-void

    .line 312
    :cond_18
    const/4 v2, 0x0

    .line 314
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setProgress"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_2b} :catch_2d

    move-object v2, v5

    .line 317
    goto :goto_30

    .line 315
    :catch_2d
    move-exception v5

    .line 316
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;->mNoMethod:Z

    .line 318
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :goto_30
    if-eqz v2, :cond_4b

    .line 320
    :try_start_32
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;->get(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_41} :catch_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_41} :catch_42

    goto :goto_4b

    .line 323
    :catch_42
    move-exception v3

    .line 324
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 321
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_47
    move-exception v3

    .line 322
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_4b
    :goto_4b
    return-void
.end method
