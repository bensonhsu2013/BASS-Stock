.class Landroid/support/wearable/view/WearableListView$LayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "WearableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/WearableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutManager"
.end annotation


# instance fields
.field private mAbsoluteScroll:I

.field private mFirstPosition:I

.field private mPushFirstHigher:Z

.field private mUseOldViewTop:Z

.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method private constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 1

    .prologue
    .line 629
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/WearableListView;Landroid/support/wearable/view/WearableListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/wearable/view/WearableListView;
    .param p2, "x1"    # Landroid/support/wearable/view/WearableListView$1;

    .prologue
    .line 629
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;-><init>(Landroid/support/wearable/view/WearableListView;)V

    return-void
.end method

.method private findCenterViewIndex()I
    .locals 10

    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v4

    .line 646
    .local v4, "count":I
    const/4 v7, -0x1

    .line 647
    .local v7, "index":I
    const v3, 0x7fffffff

    .line 648
    .local v3, "closest":I
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I
    invoke-static {v8}, Landroid/support/wearable/view/WearableListView;->access$700(Landroid/view/View;)I

    move-result v0

    .line 649
    .local v0, "centerY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 650
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 651
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getTop()I

    move-result v8

    # invokes: Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I
    invoke-static {v1}, Landroid/support/wearable/view/WearableListView;->access$700(Landroid/view/View;)I

    move-result v9

    add-int v2, v8, v9

    .line 652
    .local v2, "childCenterY":I
    sub-int v8, v0, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 653
    .local v5, "distance":I
    if-ge v5, v3, :cond_0

    .line 654
    move v3, v5

    .line 655
    move v7, v6

    .line 649
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 658
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCenterY":I
    .end local v5    # "distance":I
    :cond_1
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 659
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Can\'t find central view."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 661
    :cond_2
    return v7
.end method

.method private measureView(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 802
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 803
    .local v1, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v2

    .line 806
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->canScrollVertically()Z

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v0

    .line 809
    .local v0, "heightSpec":I
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 810
    return-void
.end method

.method private notifyChildrenAboutProximity(Z)V
    .locals 10
    .param p1, "animate"    # Z

    .prologue
    .line 665
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    .line 666
    .local v0, "count":I
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v4

    .line 667
    .local v4, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 668
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 669
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v1

    .line 670
    .local v1, "holder":Landroid/support/wearable/view/WearableListView$ViewHolder;
    if-ne v2, v4, :cond_0

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v1, v8, p1}, Landroid/support/wearable/view/WearableListView$ViewHolder;->onCenterProximity(ZZ)V

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 672
    .end local v1    # "holder":Landroid/support/wearable/view/WearableListView$ViewHolder;
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView$ViewHolder;->getPosition()I

    move-result v6

    .line 673
    .local v6, "position":I
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # getter for: Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I
    invoke-static {v8}, Landroid/support/wearable/view/WearableListView;->access$800(Landroid/support/wearable/view/WearableListView;)I

    move-result v8

    if-eq v6, v8, :cond_4

    .line 674
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # getter for: Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/Set;
    invoke-static {v8}, Landroid/support/wearable/view/WearableListView;->access$500(Landroid/support/wearable/view/WearableListView;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .line 675
    .local v5, "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    invoke-interface {v5, v6}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onCentralPositionChanged(I)V

    goto :goto_2

    .line 678
    .end local v5    # "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    :cond_2
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # getter for: Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;
    invoke-static {v8}, Landroid/support/wearable/view/WearableListView;->access$900(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;

    .line 679
    .local v5, "listener":Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;
    invoke-interface {v5, v6}, Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;->onCentralPositionChanged(I)V

    goto :goto_3

    .line 681
    .end local v5    # "listener":Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;
    :cond_3
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # setter for: Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I
    invoke-static {v8, v6}, Landroid/support/wearable/view/WearableListView;->access$802(Landroid/support/wearable/view/WearableListView;I)I

    .line 683
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private performLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "parentBottom"    # I
    .param p4, "top"    # I

    .prologue
    .line 771
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 773
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v3

    .line 774
    .local v3, "left":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 775
    .local v4, "right":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 778
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v6

    add-int/2addr v6, v2

    if-ge v6, v1, :cond_0

    .line 779
    if-lt p4, p3, :cond_2

    .line 789
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 790
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Landroid/support/wearable/view/WearableListView$LayoutManager;->notifyChildrenAboutProximity(Z)V

    .line 792
    :cond_1
    return-void

    .line 782
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 783
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p0, v5, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 784
    invoke-direct {p0, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureView(Landroid/view/View;)V

    .line 785
    iget-object v6, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->getItemHeight()I
    invoke-static {v6}, Landroid/support/wearable/view/WearableListView;->access$1100(Landroid/support/wearable/view/WearableListView;)I

    move-result v6

    add-int v0, p4, v6

    .line 786
    .local v0, "bottom":I
    invoke-virtual {v5, v3, p4, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 778
    add-int/lit8 v2, v2, 0x1

    move p4, v0

    goto :goto_0
.end method

.method private recycleViewsOutOfBounds(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 920
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    .line 921
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v6

    .line 924
    .local v6, "parentWidth":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v5

    .line 925
    .local v5, "parentHeight":I
    const/4 v2, 0x0

    .line 926
    .local v2, "foundFirst":Z
    const/4 v1, 0x0

    .line 927
    .local v1, "first":I
    const/4 v4, 0x0

    .line 928
    .local v4, "last":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 929
    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 930
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v6, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-gt v8, v5, :cond_2

    .line 932
    :cond_0
    if-nez v2, :cond_1

    .line 933
    move v1, v3

    .line 934
    const/4 v2, 0x1

    .line 936
    :cond_1
    move v4, v3

    .line 928
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 939
    .end local v7    # "v":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-le v3, v4, :cond_4

    .line 940
    invoke-virtual {p0, v3, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 939
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 942
    :cond_4
    add-int/lit8 v3, v1, -0x1

    :goto_2
    if-ltz v3, :cond_5

    .line 943
    invoke-virtual {p0, v3, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 942
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 945
    :cond_5
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v8

    if-nez v8, :cond_7

    .line 946
    const/4 v8, 0x0

    iput v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 951
    :cond_6
    :goto_3
    return-void

    .line 947
    :cond_7
    if-lez v1, :cond_6

    .line 948
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 949
    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    goto :goto_3
.end method

.method private setAbsoluteScroll(I)V
    .locals 3
    .param p1, "absoluteScroll"    # I

    .prologue
    .line 795
    iput p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    .line 796
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # getter for: Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/support/wearable/view/WearableListView;->access$500(Landroid/support/wearable/view/WearableListView;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .line 797
    .local v1, "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    iget v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    invoke-interface {v1, v2}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onAbsoluteScrollChange(I)V

    goto :goto_0

    .line 799
    .end local v1    # "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x1

    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    .line 814
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    return v0
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 960
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAllViews()V

    .line 961
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 12
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 687
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingBottom()I

    move-result v9

    sub-int v6, v8, v9

    .line 690
    .local v6, "parentBottom":I
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v8

    iget-object v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # getter for: Landroid/support/wearable/view/WearableListView;->mInitialOffset:I
    invoke-static {v9}, Landroid/support/wearable/view/WearableListView;->access$1000(Landroid/support/wearable/view/WearableListView;)I

    move-result v9

    add-int v5, v8, v9

    .line 693
    .local v5, "oldTop":I
    iget-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_8

    .line 697
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v4

    .line 698
    .local v4, "index":I
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 699
    .local v7, "position":I
    if-ne v7, v10, :cond_1

    .line 702
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    add-int v8, v4, v3

    if-lt v8, v0, :cond_0

    sub-int v8, v4, v3

    if-ltz v8, :cond_1

    .line 703
    :cond_0
    add-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 704
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 705
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 706
    if-eq v7, v10, :cond_2

    .line 707
    add-int/2addr v4, v3

    .line 721
    .end local v0    # "N":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    :goto_1
    if-ne v7, v10, :cond_4

    .line 724
    invoke-virtual {p0, v11}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    .line 725
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    .line 728
    .local v2, "count":I
    :goto_2
    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    if-lt v8, v2, :cond_7

    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    if-lez v8, :cond_7

    .line 729
    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    goto :goto_2

    .line 711
    .end local v2    # "count":I
    .restart local v0    # "N":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_2
    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 712
    if-eqz v1, :cond_3

    .line 713
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 714
    if-eq v7, v10, :cond_3

    .line 715
    sub-int/2addr v4, v3

    .line 716
    goto :goto_1

    .line 702
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "N":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    .line 735
    :goto_3
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v8

    if-le v5, v8, :cond_5

    if-lez v7, :cond_5

    .line 736
    add-int/lit8 v7, v7, -0x1

    .line 737
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->getItemHeight()I
    invoke-static {v8}, Landroid/support/wearable/view/WearableListView;->access$1100(Landroid/support/wearable/view/WearableListView;)I

    move-result v8

    sub-int/2addr v5, v8

    goto :goto_3

    .line 739
    :cond_5
    if-nez v7, :cond_6

    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v8

    if-le v5, v8, :cond_6

    .line 743
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v5

    .line 745
    :cond_6
    iput v7, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 753
    .end local v4    # "index":I
    .end local v7    # "position":I
    :cond_7
    :goto_4
    invoke-direct {p0, p1, p2, v6, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->performLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 757
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v8

    if-nez v8, :cond_9

    .line 758
    invoke-direct {p0, v11}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    .line 765
    :goto_5
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    .line 766
    iput-boolean v11, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 767
    return-void

    .line 747
    :cond_8
    iget-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    if-eqz v8, :cond_7

    .line 750
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v8

    iget-object v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->getItemHeight()I
    invoke-static {v9}, Landroid/support/wearable/view/WearableListView;->access$1100(Landroid/support/wearable/view/WearableListView;)I

    move-result v9

    sub-int v5, v8, v9

    goto :goto_4

    .line 760
    :cond_9
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 761
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v9}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->getItemHeight()I
    invoke-static {v10}, Landroid/support/wearable/view/WearableListView;->access$1100(Landroid/support/wearable/view/WearableListView;)I

    move-result v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    goto :goto_5
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 899
    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    .line 900
    if-lez p1, :cond_0

    .line 901
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 907
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->requestLayout()V

    .line 908
    return-void

    .line 904
    :cond_0
    iput p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 905
    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    goto :goto_0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 18
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 826
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    .line 827
    const/4 v11, 0x0

    .line 894
    :goto_0
    return v11

    .line 829
    :cond_0
    const/4 v11, 0x0

    .line 830
    .local v11, "scrolled":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v6

    .line 831
    .local v6, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v16

    sub-int v9, v15, v16

    .line 832
    .local v9, "right":I
    if-gez p1, :cond_4

    .line 833
    :goto_1
    move/from16 v0, p1

    if-le v11, v0, :cond_2

    .line 834
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 835
    .local v13, "topView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v15

    if-lez v15, :cond_1

    .line 836
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    neg-int v15, v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 837
    .local v5, "hangingTop":I
    sub-int v15, v11, p1

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 838
    .local v10, "scrollBy":I
    sub-int/2addr v11, v10

    .line 839
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    .line 840
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v15

    if-lez v15, :cond_2

    move/from16 v0, p1

    if-le v11, v0, :cond_2

    .line 841
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v14

    .line 843
    .local v14, "v":Landroid/view/View;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 844
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureView(Landroid/view/View;)V

    .line 845
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    .line 846
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->getItemHeight()I
    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->access$1100(Landroid/support/wearable/view/WearableListView;)I

    move-result v15

    sub-int v12, v2, v15

    .line 847
    .local v12, "top":I
    invoke-virtual {v14, v6, v12, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 852
    .end local v2    # "bottom":I
    .end local v5    # "hangingTop":I
    .end local v10    # "scrollBy":I
    .end local v12    # "top":I
    .end local v14    # "v":Landroid/view/View;
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 853
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # getter for: Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;
    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->access$1200(Landroid/support/wearable/view/WearableListView;)Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v7

    .line 855
    .local v7, "maxScroll":I
    :goto_2
    move/from16 v0, p1

    neg-int v15, v0

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v16, v7, v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 856
    .restart local v10    # "scrollBy":I
    sub-int/2addr v11, v10

    .line 857
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    .line 890
    .end local v7    # "maxScroll":I
    .end local v10    # "scrollBy":I
    .end local v13    # "topView":Landroid/view/View;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->recycleViewsOutOfBounds(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 891
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->notifyChildrenAboutProximity(Z)V

    .line 892
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->onScroll(I)V
    invoke-static {v15, v11}, Landroid/support/wearable/view/WearableListView;->access$1400(Landroid/support/wearable/view/WearableListView;I)V

    .line 893
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    add-int/2addr v15, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    goto/16 :goto_0

    .line 853
    .restart local v13    # "topView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->getTopViewMaxTop()I
    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->access$1300(Landroid/support/wearable/view/WearableListView;)I

    move-result v7

    goto :goto_2

    .line 861
    .end local v13    # "topView":Landroid/view/View;
    :cond_4
    if-lez p1, :cond_2

    .line 862
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v8

    .line 863
    .local v8, "parentHeight":I
    :goto_4
    move/from16 v0, p1

    if-ge v11, v0, :cond_2

    .line 864
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 865
    .local v3, "bottomView":Landroid/view/View;
    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 866
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v15, v8

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 868
    .local v4, "hangingBottom":I
    sub-int v15, p1, v11

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    neg-int v10, v15

    .line 869
    .restart local v10    # "scrollBy":I
    sub-int/2addr v11, v10

    .line 870
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    .line 871
    move/from16 v0, p1

    if-ge v11, v0, :cond_2

    .line 872
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v14

    .line 873
    .restart local v14    # "v":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 874
    .restart local v12    # "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;)V

    .line 875
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureView(Landroid/view/View;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->getItemHeight()I
    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->access$1100(Landroid/support/wearable/view/WearableListView;)I

    move-result v15

    add-int v2, v12, v15

    .line 877
    .restart local v2    # "bottom":I
    invoke-virtual {v14, v6, v12, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 882
    .end local v2    # "bottom":I
    .end local v4    # "hangingBottom":I
    .end local v10    # "scrollBy":I
    .end local v12    # "top":I
    .end local v14    # "v":Landroid/view/View;
    :cond_5
    move/from16 v0, p1

    neg-int v15, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v17

    sub-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 884
    .restart local v10    # "scrollBy":I
    sub-int/2addr v11, v10

    .line 885
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    goto/16 :goto_3
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 913
    new-instance v0, Landroid/support/wearable/view/WearableListView$SmoothScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/wearable/view/WearableListView$SmoothScroller;-><init>(Landroid/content/Context;Landroid/support/wearable/view/WearableListView$LayoutManager;)V

    .line 915
    .local v0, "linearSmoothScroller":Landroid/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 916
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 917
    return-void
.end method
