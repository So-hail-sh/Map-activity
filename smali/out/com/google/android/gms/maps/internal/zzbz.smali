.class public Lcom/google/android/gms/maps/internal/zzbz;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static zzck:Landroid/content/Context;

.field private static zzcl:Lcom/google/android/gms/maps/internal/zze;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/google/android/gms/maps/internal/zzbz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/internal/zzbz;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/maps/internal/zzbz;->zzck:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zze;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/maps/internal/zzbz;->zzcl:Lcom/google/android/gms/maps/internal/zze;

    if-eqz v0, :cond_8

    .line 4
    return-object v0

    .line 5
    :cond_8
    nop

    .line 6
    const v0, 0xcc77c0

    .line 7
    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    .line 8
    if-nez v0, :cond_64

    .line 9
    nop

    .line 11
    nop

    .line 12
    sget-object v0, Lcom/google/android/gms/maps/internal/zzbz;->TAG:Ljava/lang/String;

    const-string v1, "Making Creator dynamically"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    nop

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzbz;->zzb(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.maps.internal.CreatorImpl"

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/internal/zzbz;->zza(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 15
    nop

    .line 16
    if-nez v0, :cond_31

    .line 17
    const/4 v0, 0x0

    goto :goto_45

    .line 18
    :cond_31
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 19
    instance-of v2, v1, Lcom/google/android/gms/maps/internal/zze;

    if-eqz v2, :cond_3f

    .line 20
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/maps/internal/zze;

    goto :goto_45

    .line 21
    :cond_3f
    new-instance v1, Lcom/google/android/gms/maps/internal/zzf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/internal/zzf;-><init>(Landroid/os/IBinder;)V

    move-object v0, v1

    .line 22
    :goto_45
    sput-object v0, Lcom/google/android/gms/maps/internal/zzbz;->zzcl:Lcom/google/android/gms/maps/internal/zze;

    .line 23
    nop

    .line 24
    :try_start_48
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzbz;->zzb(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    sget v1, Lcom/google/android/gms/common/GooglePlayServicesUtil;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 25
    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/maps/internal/zze;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_59} :catch_5d

    .line 26
    nop

    .line 29
    sget-object p0, Lcom/google/android/gms/maps/internal/zzbz;->zzcl:Lcom/google/android/gms/maps/internal/zze;

    return-object p0

    .line 27
    :catch_5d
    move-exception p0

    .line 28
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 10
    :cond_64
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0
.end method

.method private static zza(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_4} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 48
    :catch_5
    move-exception v0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to call the default constructor of "

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    :cond_1d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :catch_26
    move-exception v0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to instantiate the dynamic class "

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_43

    :cond_3e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_43
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zza(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzbz;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    .line 43
    :catch_f
    move-exception p0

    .line 44
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to find dynamic class "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_23
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 30
    sget-object v0, Lcom/google/android/gms/maps/internal/zzbz;->zzck:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 31
    return-object v0

    .line 32
    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzbz;->zzc(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 33
    sput-object p0, Lcom/google/android/gms/maps/internal/zzbz;->zzck:Landroid/content/Context;

    return-object p0
.end method

.method private static zzc(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    .line 34
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v1, "com.google.android.gms.maps_dynamite"

    .line 35
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getModuleContext()Landroid/content/Context;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 37
    goto :goto_19

    .line 38
    :catch_d
    move-exception v0

    .line 39
    sget-object v1, Lcom/google/android/gms/maps/internal/zzbz;->TAG:Ljava/lang/String;

    const-string v2, "Failed to load maps module, use legacy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 41
    :goto_19
    return-object p0
.end method
