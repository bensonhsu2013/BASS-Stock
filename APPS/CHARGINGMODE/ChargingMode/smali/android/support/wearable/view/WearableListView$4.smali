.class Landroid/support/wearable/view/WearableListView$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "WearableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/view/WearableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 160
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 163
    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v2}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 164
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    const/4 v3, 0x0

    # invokes: Landroid/support/wearable/view/WearableListView;->handleTouchUp(Landroid/view/MotionEvent;I)V
    invoke-static {v2, v3, p2}, Landroid/support/wearable/view/WearableListView;->access$400(Landroid/support/wearable/view/WearableListView;Landroid/view/MotionEvent;I)V

    .line 166
    :cond_0
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    # getter for: Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/support/wearable/view/WearableListView;->access$500(Landroid/support/wearable/view/WearableListView;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .line 167
    .local v1, "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    invoke-interface {v1, p2}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onScrollStateChanged(I)V

    goto :goto_0

    .line 169
    .end local v1    # "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    :cond_1
    return-void
.end method
