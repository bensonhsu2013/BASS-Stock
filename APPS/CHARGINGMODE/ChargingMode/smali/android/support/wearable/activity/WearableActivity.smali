.class public abstract Landroid/support/wearable/activity/WearableActivity;
.super Landroid/app/Activity;
.source "WearableActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/activity/WearableActivity$1;,
        Landroid/support/wearable/activity/WearableActivity$AmbientCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_BURN_IN_PROTECTION:Ljava/lang/String; = "com.google.android.wearable.compat.extra.BURN_IN_PROTECTION"

.field public static final EXTRA_LOWBIT_AMBIENT:Ljava/lang/String; = "com.google.android.wearable.compat.extra.LOWBIT_AMBIENT"

.field private static final WEARABLE_CONTROLLER_CLASS_NAME:Ljava/lang/String; = "com.google.android.wearable.compat.WearableActivityController"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mSuperCalled:Z

.field private mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/wearable/activity/WearableActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->TAG:Ljava/lang/String;

    .line 163
    return-void
.end method

.method static synthetic access$100(Landroid/support/wearable/activity/WearableActivity;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/activity/WearableActivity;

    .prologue
    .line 18
    iget-boolean v0, p0, Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z

    return v0
.end method

.method static synthetic access$102(Landroid/support/wearable/activity/WearableActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/activity/WearableActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z

    return p1
.end method

.method private initWearableController()V
    .locals 5

    .prologue
    .line 149
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-gt v1, v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    const-string v1, "com.google.android.wearable.compat.WearableActivityController"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    new-instance v1, Lcom/google/android/wearable/compat/WearableActivityController;

    iget-object v2, p0, Landroid/support/wearable/activity/WearableActivity;->TAG:Ljava/lang/String;

    new-instance v3, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;-><init>(Landroid/support/wearable/activity/WearableActivity;Landroid/support/wearable/activity/WearableActivity$1;)V

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/wearable/compat/WearableActivityController;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;)V

    iput-object v1, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    iget-object v1, p0, Landroid/support/wearable/activity/WearableActivity;->TAG:Ljava/lang/String;

    const-string v2, "Could not find wearable shared library classes. Please add <uses-library android:name=\"com.google.android.wearable\" android:required=\"false\" /> to the application manifest"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/wearable/compat/WearableActivityController;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public final isAmbient()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->isAmbient()Z

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Landroid/support/wearable/activity/WearableActivity;->initWearableController()V

    .line 56
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onCreate()V

    .line 59
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onDestroy()V

    .line 90
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    return-void
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "ambientDetails"    # Landroid/os/Bundle;

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z

    .line 128
    return-void
.end method

.method public onExitAmbient()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z

    .line 146
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onPause()V

    .line 74
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onResume()V

    .line 67
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onStop()V

    .line 82
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 83
    return-void
.end method

.method public onUpdateAmbient()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public final setAmbientEnabled()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity;->mWearableController:Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->setAmbientEnabled()V

    .line 101
    :cond_0
    return-void
.end method
