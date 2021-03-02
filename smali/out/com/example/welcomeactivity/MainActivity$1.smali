.class Lcom/example/welcomeactivity/MainActivity$1;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/welcomeactivity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/welcomeactivity/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/welcomeactivity/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/welcomeactivity/MainActivity;

    .line 24
    iput-object p1, p0, Lcom/example/welcomeactivity/MainActivity$1;->this$0:Lcom/example/welcomeactivity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 28
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Lcom/example/welcomeactivity/MainActivity$1;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_16
    .catchall {:try_start_2 .. :try_end_5} :catchall_14

    .line 32
    iget-object v0, p0, Lcom/example/welcomeactivity/MainActivity$1;->this$0:Lcom/example/welcomeactivity/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/welcomeactivity/MainActivity$1;->this$0:Lcom/example/welcomeactivity/MainActivity;

    const-class v3, Lcom/example/welcomeactivity/MapsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_10
    invoke-virtual {v0, v1}, Lcom/example/welcomeactivity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    goto :goto_26

    .line 32
    :catchall_14
    move-exception v0

    goto :goto_27

    .line 29
    :catch_16
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/example/welcomeactivity/MainActivity$1;->this$0:Lcom/example/welcomeactivity/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/welcomeactivity/MainActivity$1;->this$0:Lcom/example/welcomeactivity/MainActivity;

    const-class v3, Lcom/example/welcomeactivity/MapsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_10

    .line 34
    :goto_26
    return-void

    .line 32
    :goto_27
    iget-object v1, p0, Lcom/example/welcomeactivity/MainActivity$1;->this$0:Lcom/example/welcomeactivity/MainActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/example/welcomeactivity/MainActivity$1;->this$0:Lcom/example/welcomeactivity/MainActivity;

    const-class v4, Lcom/example/welcomeactivity/MapsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/example/welcomeactivity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    goto :goto_37

    :goto_36
    throw v0

    :goto_37
    goto :goto_36
.end method
