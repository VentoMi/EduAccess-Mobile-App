.class public Lio/cordova/hellocordova/MainActivity;
.super Lorg/apache/cordova/CordovaActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/apache/cordova/CordovaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lio/cordova/hellocordova/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "cdvStartInBackground"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/cordova/hellocordova/MainActivity;->moveTaskToBack(Z)Z

    .line 39
    :cond_0
    iget-object v1, p0, Lio/cordova/hellocordova/MainActivity;->launchUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/cordova/hellocordova/MainActivity;->loadUrl(Ljava/lang/String;)V

    .line 40
    return-void
.end method
