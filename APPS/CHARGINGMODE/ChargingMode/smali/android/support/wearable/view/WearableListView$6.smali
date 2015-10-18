.class Landroid/support/wearable/view/WearableListView$6;
.super Landroid/support/wearable/view/SimpleAnimatorListener;
.source "WearableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/view/WearableListView;->animateToInitialPosition(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$6;->this$0:Landroid/support/wearable/view/WearableListView;

    iput-object p2, p0, Landroid/support/wearable/view/WearableListView$6;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/support/wearable/view/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 582
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$6;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$6;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 585
    :cond_0
    return-void
.end method
