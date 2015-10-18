.class Lcom/lge/wearable/chargingmode/ChargingActivity$2;
.super Ljava/lang/Object;
.source "ChargingActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 213
    iput-object p1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$2;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$2;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->gageWidget:Lcom/lge/wearable/chargingmode/GageWidget;
    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$600(Lcom/lge/wearable/chargingmode/ChargingActivity;)Lcom/lge/wearable/chargingmode/GageWidget;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$2;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I
    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$000(Lcom/lge/wearable/chargingmode/ChargingActivity;)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$2;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    invoke-virtual {v3}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/lge/wearable/chargingmode/GageWidget;->setGageTo(FFZ)V

    .line 221
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$2;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # invokes: Lcom/lge/wearable/chargingmode/ChargingActivity;->setRotateBatteryIcon(F)V
    invoke-static {v1, v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$700(Lcom/lge/wearable/chargingmode/ChargingActivity;F)V

    .line 224
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$2;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # invokes: Lcom/lge/wearable/chargingmode/ChargingActivity;->setIconColorAnimation(F)V
    invoke-static {v1, v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$800(Lcom/lge/wearable/chargingmode/ChargingActivity;F)V

    .line 227
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$2;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$900(Lcom/lge/wearable/chargingmode/ChargingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method
