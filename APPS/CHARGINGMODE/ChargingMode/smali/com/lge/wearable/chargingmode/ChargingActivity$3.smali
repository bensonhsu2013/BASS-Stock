.class Lcom/lge/wearable/chargingmode/ChargingActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChargingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wearable/chargingmode/ChargingActivity;->playAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;


# direct methods
.method constructor <init>(Lcom/lge/wearable/chargingmode/ChargingActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$3;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$3;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    const/4 v1, 0x2

    # setter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mState:I
    invoke-static {v0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$1002(Lcom/lge/wearable/chargingmode/ChargingActivity;I)I

    .line 245
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$3;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    const/4 v1, 0x1

    # setter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mState:I
    invoke-static {v0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$1002(Lcom/lge/wearable/chargingmode/ChargingActivity;I)I

    .line 238
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 239
    return-void
.end method
