.class Landroid/support/wearable/view/WearableListView$1;
.super Ljava/lang/Object;
.source "WearableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/WearableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I
    invoke-static {v2}, Landroid/support/wearable/view/WearableListView;->access$100(Landroid/support/wearable/view/WearableListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    # setter for: Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;
    invoke-static {v0, v1}, Landroid/support/wearable/view/WearableListView;->access$002(Landroid/support/wearable/view/WearableListView;Landroid/view/View;)Landroid/view/View;

    .line 119
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    # getter for: Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;
    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$000(Landroid/support/wearable/view/WearableListView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 120
    return-void
.end method
