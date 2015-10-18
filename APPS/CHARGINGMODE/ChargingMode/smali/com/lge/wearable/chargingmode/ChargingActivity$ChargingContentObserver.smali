.class Lcom/lge/wearable/chargingmode/ChargingActivity$ChargingContentObserver;
.super Landroid/database/ContentObserver;
.source "ChargingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wearable/chargingmode/ChargingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChargingContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;


# direct methods
.method public constructor <init>(Lcom/lge/wearable/chargingmode/ChargingActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$ChargingContentObserver;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    .line 445
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 446
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargingContentObserver.onChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 451
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 452
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$ChargingContentObserver;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # invokes: Lcom/lge/wearable/chargingmode/ChargingActivity;->refreshTimeTextView()V
    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$300(Lcom/lge/wearable/chargingmode/ChargingActivity;)V

    .line 453
    return-void
.end method
