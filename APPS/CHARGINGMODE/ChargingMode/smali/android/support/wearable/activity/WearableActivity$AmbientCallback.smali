.class Landroid/support/wearable/activity/WearableActivity$AmbientCallback;
.super Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;
.source "WearableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/activity/WearableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/activity/WearableActivity;


# direct methods
.method private constructor <init>(Landroid/support/wearable/activity/WearableActivity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;->this$0:Landroid/support/wearable/activity/WearableActivity;

    invoke-direct {p0}, Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/activity/WearableActivity;Landroid/support/wearable/activity/WearableActivity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/wearable/activity/WearableActivity;
    .param p2, "x1"    # Landroid/support/wearable/activity/WearableActivity$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;-><init>(Landroid/support/wearable/activity/WearableActivity;)V

    return-void
.end method


# virtual methods
.method public onEnterAmbient(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "ambientDetails"    # Landroid/os/Bundle;

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;->this$0:Landroid/support/wearable/activity/WearableActivity;

    const/4 v1, 0x0

    # setter for: Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z
    invoke-static {v0, v1}, Landroid/support/wearable/activity/WearableActivity;->access$102(Landroid/support/wearable/activity/WearableActivity;Z)Z

    .line 167
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;->this$0:Landroid/support/wearable/activity/WearableActivity;

    invoke-virtual {v0, p1}, Landroid/support/wearable/activity/WearableActivity;->onEnterAmbient(Landroid/os/Bundle;)V

    .line 168
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;->this$0:Landroid/support/wearable/activity/WearableActivity;

    # getter for: Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z
    invoke-static {v0}, Landroid/support/wearable/activity/WearableActivity;->access$100(Landroid/support/wearable/activity/WearableActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;->this$0:Landroid/support/wearable/activity/WearableActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onEnterAmbient()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    return-void
.end method

.method public onExitAmbient()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;->this$0:Landroid/support/wearable/activity/WearableActivity;

    const/4 v1, 0x0

    # setter for: Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z
    invoke-static {v0, v1}, Landroid/support/wearable/activity/WearableActivity;->access$102(Landroid/support/wearable/activity/WearableActivity;Z)Z

    .line 178
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;->this$0:Landroid/support/wearable/activity/WearableActivity;

    invoke-virtual {v0}, Landroid/support/wearable/activity/WearableActivity;->onExitAmbient()V

    .line 179
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;->this$0:Landroid/support/wearable/activity/WearableActivity;

    # getter for: Landroid/support/wearable/activity/WearableActivity;->mSuperCalled:Z
    invoke-static {v0}, Landroid/support/wearable/activity/WearableActivity;->access$100(Landroid/support/wearable/activity/WearableActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;->this$0:Landroid/support/wearable/activity/WearableActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onExitAmbient()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    return-void
.end method

.method public onUpdateAmbient()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/wearable/activity/WearableActivity$AmbientCallback;->this$0:Landroid/support/wearable/activity/WearableActivity;

    invoke-virtual {v0}, Landroid/support/wearable/activity/WearableActivity;->onUpdateAmbient()V

    .line 190
    return-void
.end method
