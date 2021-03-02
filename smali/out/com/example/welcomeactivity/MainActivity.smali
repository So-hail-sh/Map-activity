.class public Lcom/example/welcomeactivity/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/welcomeactivity/MainActivity;->requestWindowFeature(I)Z

    .line 17
    invoke-virtual {p0}, Lcom/example/welcomeactivity/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 18
    invoke-virtual {p0}, Lcom/example/welcomeactivity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 20
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/example/welcomeactivity/MainActivity;->setContentView(I)V

    .line 21
    const/high16 v0, 0x7f0e0000

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/example/welcomeactivity/MainActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 22
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 24
    new-instance v0, Lcom/example/welcomeactivity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/welcomeactivity/MainActivity$1;-><init>(Lcom/example/welcomeactivity/MainActivity;)V

    .line 36
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 41
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 42
    invoke-virtual {p0}, Lcom/example/welcomeactivity/MainActivity;->finish()V

    .line 43
    iget-object v0, p0, Lcom/example/welcomeactivity/MainActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 44
    return-void
.end method
