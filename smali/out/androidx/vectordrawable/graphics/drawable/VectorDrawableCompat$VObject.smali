.class abstract Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VObject"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$1;)V
    .registers 2
    .param p1, "x0"    # Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$1;

    .line 1423
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;-><init>()V

    return-void
.end method


# virtual methods
.method public isStateful()Z
    .registers 2

    .line 1430
    const/4 v0, 0x0

    return v0
.end method

.method public onStateChanged([I)Z
    .registers 3
    .param p1, "stateSet"    # [I

    .line 1438
    const/4 v0, 0x0

    return v0
.end method
