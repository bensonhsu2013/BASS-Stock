.class Lcom/lge/wearable/chargingmode/ChargingActivity$4;
.super Ljava/lang/Object;
.source "ChargingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wearable/chargingmode/ChargingActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

.field final synthetic val$ctx:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/lge/wearable/chargingmode/ChargingActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$4;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    iput-object p2, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$4;->val$ctx:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$4;->val$ctx:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 333
    return-void
.end method
