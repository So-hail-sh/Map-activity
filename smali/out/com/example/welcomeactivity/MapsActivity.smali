.class public Lcom/example/welcomeactivity/MapsActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MapsActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field private mMap:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 20
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/example/welcomeactivity/MapsActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/example/welcomeactivity/MapsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 24
    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 25
    .local v0, "mapFragment":Lcom/google/android/gms/maps/SupportMapFragment;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 26
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 7
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 39
    iput-object p1, p0, Lcom/example/welcomeactivity/MapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 42
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide/high16 v1, -0x3fbf000000000000L    # -34.0

    const-wide v3, 0x4062e00000000000L    # 151.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 43
    .local v0, "sydney":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/example/welcomeactivity/MapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    const-string v3, "Marker in Sydney"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 44
    iget-object v1, p0, Lcom/example/welcomeactivity/MapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 45
    return-void
.end method
