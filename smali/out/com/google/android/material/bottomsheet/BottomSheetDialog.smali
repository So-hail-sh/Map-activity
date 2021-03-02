.class public Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "BottomSheetDialog.java"


# instance fields
.field private behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field cancelable:Z

.field private canceledOnTouchOutside:Z

.field private canceledOnTouchOutsideSet:Z

.field private container:Landroid/widget/FrameLayout;

.field dismissWithAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 60
    invoke-static {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 52
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 291
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 52
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 291
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    .line 70
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 71
    return-void
.end method

.method private ensureContainerAndBehavior()Landroid/widget/FrameLayout;
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2e

    .line 187
    nop

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->design_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    .line 190
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 191
    .local v0, "bottomSheet":Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 192
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 193
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 195
    .end local v0    # "bottomSheet":Landroid/widget/FrameLayout;
    :cond_2e
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeId"    # I

    .line 274
    if-nez p1, :cond_19

    .line 276
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 277
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$attr;->bottomSheetDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 278
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_19

    .line 281
    :cond_17
    sget p1, Lcom/google/android/material/R$style;->Theme_Design_Light_BottomSheetDialog:I

    .line 284
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_19
    :goto_19
    return p1
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .registers 8
    .param p1, "layoutResId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 200
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    .line 201
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    sget v1, Lcom/google/android/material/R$id;->coordinator:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 202
    .local v0, "coordinator":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    if-eqz p1, :cond_1a

    if-nez p2, :cond_1a

    .line 203
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 206
    :cond_1a
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    sget v2, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 207
    .local v1, "bottomSheet":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 208
    if-nez p3, :cond_2d

    .line 209
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    .line 211
    :cond_2d
    invoke-virtual {v1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    :goto_30
    sget v2, Lcom/google/android/material/R$id;->touch_outside:I

    .line 215
    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;

    invoke-direct {v3, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    .line 216
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$2;

    invoke-direct {v2, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 250
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;

    invoke-direct {v2, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    return-object v2
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 138
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    .line 140
    .local v0, "behavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<Landroid/widget/FrameLayout;>;"
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismissWithAnimation:Z

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    goto :goto_14

    .line 143
    :cond_10
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_17

    .line 141
    :cond_14
    :goto_14
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->cancel()V

    .line 145
    :goto_17
    return-void
.end method

.method public getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_7

    .line 161
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0
.end method

.method public getDismissWithAnimation()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismissWithAnimation:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 80
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 82
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1d

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_19

    .line 84
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 85
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 87
    :cond_19
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 89
    :cond_1d
    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 114
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStart()V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 116
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 118
    :cond_14
    return-void
.end method

.method removeDefaultCallback()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 289
    return-void
.end method

.method public setCancelable(Z)V
    .registers 3
    .param p1, "cancelable"    # Z

    .line 103
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCancelable(Z)V

    .line 104
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    if-eq v0, p1, :cond_10

    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 106
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_10

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 110
    :cond_10
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 4
    .param p1, "cancel"    # Z

    .line 149
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    const/4 v0, 0x1

    if-eqz p1, :cond_c

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    if-nez v1, :cond_c

    .line 151
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    .line 153
    :cond_c
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 154
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 155
    return-void
.end method

.method public setContentView(I)V
    .registers 3
    .param p1, "layoutResId"    # I

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public setDismissWithAnimation(Z)V
    .registers 2
    .param p1, "dismissWithAnimation"    # Z

    .line 173
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismissWithAnimation:Z

    .line 174
    return-void
.end method

.method shouldWindowCloseOnTouchOutside()Z
    .registers 6

    .line 262
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    if-nez v0, :cond_21

    .line 263
    nop

    .line 264
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x101035b

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 265
    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 267
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 270
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_21
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    return v0
.end method
