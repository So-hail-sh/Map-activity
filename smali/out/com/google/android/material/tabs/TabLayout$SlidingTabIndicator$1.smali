.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final synthetic val$finalTargetLeft:I

.field final synthetic val$finalTargetRight:I


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;II)V
    .registers 4
    .param p1, "this$1"    # Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 3072
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 3075
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 3076
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 3077
    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->access$1200(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;)I

    move-result v2

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    invoke-static {v2, v3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 3078
    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->access$1300(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    invoke-static {v3, v4, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v3

    .line 3076
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    .line 3079
    return-void
.end method
