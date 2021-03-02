.class public final Landroidx/core/app/NotificationCompat$Action$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private final mIntent:Landroid/app/PendingIntent;

.field private mIsContextual:Z

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private mSemanticAction:I

.field private mShowsUserInterface:Z

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 15
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 3477
    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_a

    :cond_4
    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_a
    move-object v2, v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZ)V

    .line 3485
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Action;)V
    .registers 12
    .param p1, "action"    # Landroidx/core/app/NotificationCompat$Action;

    .line 3493
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v4, Landroid/os/Bundle;

    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3495
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v6

    .line 3496
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v7

    iget-boolean v8, p1, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 3497
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v9

    .line 3493
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZ)V

    .line 3498
    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 14
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 3466
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZ)V

    .line 3468
    return-void
.end method

.method private constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZ)V
    .registers 12
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroidx/core/app/RemoteInput;
    .param p6, "allowGeneratedReplies"    # Z
    .param p7, "semanticAction"    # I
    .param p8, "showsUserInterface"    # Z
    .param p9, "isContextual"    # Z

    .line 3504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 3452
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 3505
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 3506
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 3507
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    .line 3508
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    .line 3509
    if-nez p5, :cond_18

    const/4 v0, 0x0

    goto :goto_21

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    .line 3510
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_21
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 3511
    iput-boolean p6, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 3512
    iput p7, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    .line 3513
    iput-boolean p8, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 3514
    iput-boolean p9, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    .line 3515
    return-void
.end method

.method private checkContextualActionNullFields()V
    .registers 3

    .line 3620
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    if-nez v0, :cond_5

    return-void

    .line 3622
    :cond_5
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    .line 3626
    return-void

    .line 3623
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Contextual Actions must contain a valid PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3525
    if-eqz p1, :cond_7

    .line 3526
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3528
    :cond_7
    return-object p0
.end method

.method public addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 3
    .param p1, "remoteInput"    # Landroidx/core/app/RemoteInput;

    .line 3548
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 3549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 3551
    :cond_b
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3552
    return-object p0
.end method

.method public build()Landroidx/core/app/NotificationCompat$Action;
    .registers 16

    .line 3636
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Action$Builder;->checkContextualActionNullFields()V

    .line 3638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3639
    .local v0, "dataOnlyInputs":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/RemoteInput;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3640
    .local v1, "textInputs":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/RemoteInput;>;"
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v2, :cond_2f

    .line 3641
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/RemoteInput;

    .line 3642
    .local v3, "input":Landroidx/core/app/RemoteInput;
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->isDataOnly()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3643
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 3645
    :cond_2b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3647
    .end local v3    # "input":Landroidx/core/app/RemoteInput;
    :goto_2e
    goto :goto_15

    .line 3649
    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_38

    .line 3650
    move-object v10, v3

    goto :goto_45

    :cond_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/core/app/RemoteInput;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/core/app/RemoteInput;

    move-object v10, v2

    .line 3651
    .local v10, "dataOnlyInputsArr":[Landroidx/core/app/RemoteInput;
    :goto_45
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3652
    goto :goto_59

    :cond_4c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/core/app/RemoteInput;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Landroidx/core/app/RemoteInput;

    :goto_59
    move-object v9, v3

    .line 3653
    .local v9, "textInputsArr":[Landroidx/core/app/RemoteInput;
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v6, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v11, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    iget v12, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    iget-boolean v13, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    iget-boolean v14, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    move-object v4, v2

    invoke-direct/range {v4 .. v14}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZ)V

    return-object v2
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Action$Extender;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2
    .param p1, "extender"    # Landroidx/core/app/NotificationCompat$Action$Extender;

    .line 3611
    invoke-interface {p1, p0}, Landroidx/core/app/NotificationCompat$Action$Extender;->extend(Landroidx/core/app/NotificationCompat$Action$Builder;)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 3612
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 3537
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2
    .param p1, "allowGeneratedReplies"    # Z

    .line 3565
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 3566
    return-object p0
.end method

.method public setContextual(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2
    .param p1, "isContextual"    # Z

    .line 3589
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    .line 3590
    return-object p0
.end method

.method public setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2
    .param p1, "semanticAction"    # I

    .line 3578
    iput p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    .line 3579
    return-object p0
.end method

.method public setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2
    .param p1, "showsUserInterface"    # Z

    .line 3602
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 3603
    return-object p0
.end method
