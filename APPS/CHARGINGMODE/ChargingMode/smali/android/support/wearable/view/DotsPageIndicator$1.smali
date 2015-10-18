.class Landroid/support/wearable/view/DotsPageIndicator$1;
.super Landroid/support/wearable/view/SimpleAnimatorListener;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/view/DotsPageIndicator;->fadeInOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/DotsPageIndicator;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/DotsPageIndicator;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Landroid/support/wearable/view/DotsPageIndicator$1;->this$0:Landroid/support/wearable/view/DotsPageIndicator;

    invoke-direct {p0}, Landroid/support/wearable/view/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 514
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator$1;->this$0:Landroid/support/wearable/view/DotsPageIndicator;

    const/4 v1, 0x0

    # setter for: Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z
    invoke-static {v0, v1}, Landroid/support/wearable/view/DotsPageIndicator;->access$002(Landroid/support/wearable/view/DotsPageIndicator;Z)Z

    .line 515
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator$1;->this$0:Landroid/support/wearable/view/DotsPageIndicator;

    invoke-virtual {v0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator$1;->this$0:Landroid/support/wearable/view/DotsPageIndicator;

    # getter for: Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDelay:I
    invoke-static {v1}, Landroid/support/wearable/view/DotsPageIndicator;->access$200(Landroid/support/wearable/view/DotsPageIndicator;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator$1;->this$0:Landroid/support/wearable/view/DotsPageIndicator;

    # getter for: Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I
    invoke-static {v1}, Landroid/support/wearable/view/DotsPageIndicator;->access$100(Landroid/support/wearable/view/DotsPageIndicator;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 521
    return-void
.end method
