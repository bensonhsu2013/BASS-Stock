.class public Landroid/support/wearable/view/WearableListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "WearableListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;,
        Landroid/support/wearable/view/WearableListView$ViewHolder;,
        Landroid/support/wearable/view/WearableListView$SmoothScroller;,
        Landroid/support/wearable/view/WearableListView$Adapter;,
        Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;,
        Landroid/support/wearable/view/WearableListView$OnScrollListener;,
        Landroid/support/wearable/view/WearableListView$OnOverScrollListener;,
        Landroid/support/wearable/view/WearableListView$ClickListener;,
        Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;,
        Landroid/support/wearable/view/WearableListView$LayoutManager;
    }
.end annotation


# static fields
.field private static final BOTTOM_TAP_REGION_PERCENTAGE:F = 0.33f

.field private static final CENTERING_ANIMATION_DURATION_MS:J = 0x96L

.field private static final FLIP_ANIMATION_DURATION_MS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "WearableListView"

.field private static final THIRD:I = 0x3

.field private static final TOP_TAP_REGION_PERCENTAGE:F = 0.33f


# instance fields
.field private mCanClick:Z

.field private mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

.field private mGestureDirectionLocked:Z

.field private mGreedyTouchMode:Z

.field private mInitialOffset:I

.field private mLastScrollChange:I

.field private final mLocation:[I

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private final mOnCentralPositionChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScrollListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/support/wearable/view/WearableListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

.field private mPossibleVerticalSwipe:Z

.field private final mPressedHandler:Landroid/os/Handler;

.field private final mPressedRunnable:Ljava/lang/Runnable;

.field private mPressedView:Landroid/view/View;

.field private mPreviousCentral:I

.field private final mReleasedRunnable:Ljava/lang/Runnable;

.field private mScrollAnimator:Landroid/animation/Animator;

.field private mScroller:Landroid/widget/Scroller;

.field private mSetScrollVerticallyProperty:Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

.field private mStartFirstTop:F

.field private mStartX:F

.field private mStartY:F

.field private mTapPositionX:I

.field private mTapPositionY:I

.field private final mTapRegions:[F

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WearableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/WearableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-boolean v5, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    .line 68
    new-instance v2, Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mSetScrollVerticallyProperty:Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

    .line 71
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/Set;

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;

    .line 90
    iput v4, p0, Landroid/support/wearable/view/WearableListView;->mInitialOffset:I

    .line 96
    new-array v2, v3, [F

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    .line 99
    iput v4, p0, Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I

    .line 102
    new-array v2, v3, [I

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    .line 104
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mPressedHandler:Landroid/os/Handler;

    .line 113
    iput-object v6, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    .line 115
    new-instance v2, Landroid/support/wearable/view/WearableListView$1;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/WearableListView$1;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mPressedRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v2, Landroid/support/wearable/view/WearableListView$2;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/WearableListView$2;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mReleasedRunnable:Ljava/lang/Runnable;

    .line 130
    new-instance v2, Landroid/support/wearable/view/WearableListView$3;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/WearableListView$3;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 156
    invoke-virtual {p0, v5}, Landroid/support/wearable/view/WearableListView;->setHasFixedSize(Z)V

    .line 157
    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView;->setOverScrollMode(I)V

    .line 158
    new-instance v2, Landroid/support/wearable/view/WearableListView$LayoutManager;

    invoke-direct {v2, p0, v6}, Landroid/support/wearable/view/WearableListView$LayoutManager;-><init>(Landroid/support/wearable/view/WearableListView;Landroid/support/wearable/view/WearableListView$1;)V

    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 160
    new-instance v0, Landroid/support/wearable/view/WearableListView$4;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/WearableListView$4;-><init>(Landroid/support/wearable/view/WearableListView;)V

    .line 171
    .local v0, "onScrollListener":Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 173
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 174
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    .line 176
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mMinFlingVelocity:I

    .line 177
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mMaxFlingVelocity:I

    .line 178
    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/WearableListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/wearable/view/WearableListView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/wearable/view/WearableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/support/wearable/view/WearableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mInitialOffset:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/wearable/view/WearableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getItemHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/support/wearable/view/WearableListView;)Landroid/support/wearable/view/WearableListView$OnOverScrollListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/wearable/view/WearableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getTopViewMaxTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/support/wearable/view/WearableListView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->onScroll(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/wearable/view/WearableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    return v0
.end method

.method static synthetic access$1600(Landroid/support/wearable/view/WearableListView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->setScrollVertically(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/wearable/view/WearableListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->releasePressedItem()V

    return-void
.end method

.method static synthetic access$400(Landroid/support/wearable/view/WearableListView;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/WearableListView;->handleTouchUp(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/wearable/view/WearableListView;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$602(Landroid/support/wearable/view/WearableListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    return p1
.end method

.method static synthetic access$700(Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/support/wearable/view/WearableListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I

    return v0
.end method

.method static synthetic access$802(Landroid/support/wearable/view/WearableListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I

    return p1
.end method

.method static synthetic access$900(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method private animateToMiddle(II)V
    .locals 6
    .param p1, "newCenterIndex"    # I
    .param p2, "oldCenterIndex"    # I

    .prologue
    .line 370
    if-ne p1, p2, :cond_0

    .line 371
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newCenterIndex must be different from oldCenterIndex"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 376
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 377
    .local v2, "scrollToMiddle":I
    const-wide/16 v4, 0x96

    invoke-direct {p0, v0, v2, v4, v5}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJ)V

    .line 378
    return-void
.end method

.method private checkForTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 335
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v4

    .line 339
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 340
    .local v2, "rawY":F
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v1

    .line 341
    .local v1, "index":I
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 342
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v0

    .line 343
    .local v0, "holder":Landroid/support/wearable/view/WearableListView$ViewHolder;
    iget-object v6, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    invoke-direct {p0, v6}, Landroid/support/wearable/view/WearableListView;->computeTapRegions([F)V

    .line 344
    iget-object v6, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v6, v6, v4

    cmpl-float v6, v2, v6

    if-lez v6, :cond_3

    iget-object v6, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v6, v6, v5

    cmpg-float v6, v2, v6

    if-gez v6, :cond_3

    .line 345
    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    if-eqz v4, :cond_2

    .line 346
    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    invoke-interface {v4, v0}, Landroid/support/wearable/view/WearableListView$ClickListener;->onClick(Landroid/support/wearable/view/WearableListView$ViewHolder;)V

    :cond_2
    move v4, v5

    .line 348
    goto :goto_0

    .line 350
    :cond_3
    if-lez v1, :cond_4

    iget-object v6, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v6, v6, v4

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    .line 351
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, v4, v1}, Landroid/support/wearable/view/WearableListView;->animateToMiddle(II)V

    move v4, v5

    .line 352
    goto :goto_0

    .line 354
    :cond_4
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_5

    iget-object v6, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v6, v6, v5

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_5

    .line 355
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4, v1}, Landroid/support/wearable/view/WearableListView;->animateToMiddle(II)V

    move v4, v5

    .line 356
    goto :goto_0

    .line 358
    :cond_5
    if-nez v1, :cond_0

    iget-object v6, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v6, v6, v4

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    iget-object v6, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    if-eqz v6, :cond_0

    .line 363
    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    invoke-interface {v4}, Landroid/support/wearable/view/WearableListView$ClickListener;->onTopEmptyRegionClick()V

    move v4, v5

    .line 364
    goto :goto_0
.end method

.method private computeTapRegions([F)V
    .locals 7
    .param p1, "tapRegions"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 620
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    aput v5, v3, v6

    aput v5, v2, v5

    .line 621
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView;->getLocationOnScreen([I)V

    .line 622
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    aget v1, v2, v6

    .line 623
    .local v1, "mScreenTop":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHeight()I

    move-result v0

    .line 624
    .local v0, "height":I
    int-to-float v2, v1

    int-to-float v3, v0

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, v5

    .line 625
    int-to-float v2, v1

    int-to-float v3, v0

    const v4, 0x3f2b851e    # 0.66999996f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, v6

    .line 626
    return-void
.end method

.method private findCenterViewIndex()I
    .locals 10

    .prologue
    .line 486
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v4

    .line 487
    .local v4, "count":I
    const/4 v7, -0x1

    .line 488
    .local v7, "index":I
    const v3, 0x7fffffff

    .line 489
    .local v3, "closest":I
    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I

    move-result v0

    .line 490
    .local v0, "centerY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 491
    invoke-virtual {p0, v6}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 492
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getTop()I

    move-result v8

    invoke-static {v1}, Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I

    move-result v9

    add-int v2, v8, v9

    .line 493
    .local v2, "childCenterY":I
    sub-int v8, v0, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 494
    .local v5, "distance":I
    if-ge v5, v3, :cond_0

    .line 495
    move v3, v5

    .line 496
    move v7, v6

    .line 490
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 499
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCenterY":I
    .end local v5    # "distance":I
    :cond_1
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 500
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Can\'t find central view."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 502
    :cond_2
    return v7
.end method

.method private getAdjustedHeight()I
    .locals 1

    .prologue
    .line 612
    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private static getAdjustedHeight(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getCenterYPos(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getItemHeight()I
    .locals 1

    .prologue
    .line 544
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getTopViewMaxTop()I
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private handlePossibleVerticalSwipe(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    iget-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mGestureDirectionLocked:Z

    if-eqz v3, :cond_0

    .line 245
    iget-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    .line 258
    :goto_0
    return v3

    .line 247
    :cond_0
    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 248
    .local v0, "deltaX":F
    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 249
    .local v1, "deltaY":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float v2, v3, v4

    .line 252
    .local v2, "distance":F
    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    iget v4, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 253
    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    .line 254
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    .line 256
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mGestureDirectionLocked:Z

    .line 258
    :cond_2
    iget-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    goto :goto_0
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 590
    iget-boolean v2, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    if-eqz v2, :cond_0

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionX:I

    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionY:I

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 594
    .local v0, "rawY":F
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    invoke-direct {p0, v2}, Landroid/support/wearable/view/WearableListView;->computeTapRegions([F)V

    .line 595
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 596
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 597
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;

    if-eqz v2, :cond_0

    .line 598
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mPressedHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mReleasedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 599
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mPressedHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mPressedRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    .end local v0    # "rawY":F
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "scrollState"    # I

    .prologue
    .line 510
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->checkForTap(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mReleasedRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    if-nez p2, :cond_0

    .line 521
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    invoke-interface {v0}, Landroid/support/wearable/view/WearableListView$OnOverScrollListener;->onOverScroll()V

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->animateToCenter()V

    goto :goto_0
.end method

.method private isOverScrolling()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 529
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Landroid/support/wearable/view/WearableListView;->mStartFirstTop:F

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getTopViewMaxTop()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onScroll(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 302
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/Set;

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

    .line 303
    .local v1, "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    invoke-interface {v1, p1}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onScroll(I)V

    goto :goto_0

    .line 305
    .end local v1    # "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    :cond_0
    return-void
.end method

.method private releasePressedItem()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mPressedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method private setScrollVertically(I)V
    .locals 2
    .param p1, "scroll"    # I

    .prologue
    .line 607
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    sub-int v1, p1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/wearable/view/WearableListView;->scrollBy(II)V

    .line 608
    iput p1, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    .line 609
    return-void
.end method

.method private startScrollAnimation(IJJLandroid/animation/Animator$AnimatorListener;)V
    .locals 10
    .param p1, "scroll"    # I
    .param p2, "duration"    # J
    .param p4, "delay"    # J
    .param p6, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 391
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 392
    return-void
.end method

.method private startScrollAnimation(Ljava/util/List;IJ)V
    .locals 9
    .param p2, "scroll"    # I
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJJ)V

    .line 382
    return-void
.end method

.method private startScrollAnimation(Ljava/util/List;IJJ)V
    .locals 9
    .param p2, "scroll"    # I
    .param p3, "duration"    # J
    .param p5, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;IJJ)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 387
    return-void
.end method

.method private startScrollAnimation(Ljava/util/List;IJJLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p2, "scroll"    # I
    .param p3, "duration"    # J
    .param p5, "delay"    # J
    .param p7, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;IJJ",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v4, 0x0

    .line 396
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 400
    :cond_0
    iput v4, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    .line 401
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mSetScrollVerticallyProperty:Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v4, v3, v4

    const/4 v4, 0x1

    neg-int v5, p2

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 404
    .local v1, "scrollAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_3

    .line 405
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 407
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 408
    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    .line 412
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :goto_0
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v2, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 413
    if-eqz p7, :cond_1

    .line 414
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v2, p7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_2

    .line 417
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v2, p5, p6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 419
    :cond_2
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 420
    return-void

    .line 410
    :cond_3
    iput-object v1, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method


# virtual methods
.method public addOnCentralPositionChangedListener(Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;

    .prologue
    .line 326
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method public addOnScrollListener(Landroid/support/wearable/view/WearableListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/wearable/view/WearableListView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method public animateToCenter()V
    .locals 9

    .prologue
    .line 556
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v8

    .line 557
    .local v8, "index":I
    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 558
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v1, v0, v2

    .line 559
    .local v1, "scrollToMiddle":I
    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x0

    new-instance v6, Landroid/support/wearable/view/WearableListView$5;

    invoke-direct {v6, p0}, Landroid/support/wearable/view/WearableListView$5;-><init>(Landroid/support/wearable/view/WearableListView;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 568
    return-void
.end method

.method public animateToInitialPosition(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 577
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v0

    iget v2, p0, Landroid/support/wearable/view/WearableListView;->mInitialOffset:I

    add-int/2addr v0, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v1, v0, v2

    .line 578
    .local v1, "scrollToMiddle":I
    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x0

    new-instance v6, Landroid/support/wearable/view/WearableListView$6;

    invoke-direct {v6, p0, p1}, Landroid/support/wearable/view/WearableListView$6;-><init>(Landroid/support/wearable/view/WearableListView;Ljava/lang/Runnable;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 587
    return-void
.end method

.method public fling(II)Z
    .locals 16
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 425
    const/4 v1, 0x0

    .line 457
    :goto_0
    return v1

    .line 429
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v15

    .line 430
    .local v15, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 431
    .local v10, "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView;->getChildPosition(Landroid/view/View;)I

    move-result v11

    .line 432
    .local v11, "currentPosition":I
    if-nez v11, :cond_1

    if-ltz p2, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_3

    if-lez p2, :cond_3

    .line 434
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v1

    goto :goto_0

    .line 437
    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/WearableListView;->mMinFlingVelocity:I

    if-ge v1, v2, :cond_4

    .line 438
    const/4 v1, 0x0

    goto :goto_0

    .line 440
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/WearableListView;->mMaxFlingVelocity:I

    move/from16 v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/WearableListView;->mMaxFlingVelocity:I

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    if-nez v1, :cond_5

    .line 443
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    .line 445
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v14

    .line 448
    .local v14, "finalY":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getPaddingTop()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int v12, v14, v1

    .line 449
    .local v12, "delta":I
    if-nez v12, :cond_6

    .line 452
    if-lez p2, :cond_7

    const/4 v12, 0x1

    .line 454
    :cond_6
    :goto_1
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int v3, v11, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 456
    .local v13, "finalPosition":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/wearable/view/WearableListView;->smoothScrollToPosition(I)V

    .line 457
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 452
    .end local v13    # "finalPosition":I
    :cond_7
    const/4 v12, -0x1

    goto :goto_1
.end method

.method public getCentralViewTop()I
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getPaddingTop()I

    move-result v0

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getItemHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 462
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$ViewHolder;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 240
    :goto_0
    return v1

    .line 227
    :cond_0
    iget-boolean v1, p0, Landroid/support/wearable/view/WearableListView;->mGreedyTouchMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 229
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableListView;->mStartX:F

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableListView;->mStartY:F

    .line 232
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    :goto_1
    iput v1, p0, Landroid/support/wearable/view/WearableListView;->mStartFirstTop:F

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    .line 234
    iput-boolean v2, p0, Landroid/support/wearable/view/WearableListView;->mGestureDirectionLocked:Z

    .line 238
    :cond_1
    :goto_2
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 240
    .end local v0    # "action":I
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 232
    .restart local v0    # "action":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 235
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    if-eqz v1, :cond_1

    .line 236
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->handlePossibleVerticalSwipe(Landroid/view/MotionEvent;)Z

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 290
    :cond_0
    :goto_0
    return v1

    .line 269
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getScrollState()I

    move-result v2

    .line 270
    .local v2, "scrollState":I
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 271
    .local v1, "result":Z
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 273
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 274
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 275
    :cond_2
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 276
    invoke-direct {p0, p1, v2}, Landroid/support/wearable/view/WearableListView;->handleTouchUp(Landroid/view/MotionEvent;I)V

    .line 277
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 278
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    .line 279
    iget v4, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    if-ge v4, v5, :cond_4

    iget v4, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    if-lt v4, v5, :cond_5

    .line 281
    :cond_4
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->releasePressedItem()V

    .line 282
    iput-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    .line 284
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->handlePossibleVerticalSwipe(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 285
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-boolean v4, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 286
    :cond_6
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public removeOnCentralPositionChangedListener(Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method public removeOnScrollListener(Landroid/support/wearable/view/WearableListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .prologue
    .line 322
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method public resetLayoutManager()V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Landroid/support/wearable/view/WearableListView$LayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;-><init>(Landroid/support/wearable/view/WearableListView;Landroid/support/wearable/view/WearableListView$1;)V

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 199
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 183
    .local v0, "currentAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 189
    if-eqz p1, :cond_1

    .line 190
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 192
    :cond_1
    return-void
.end method

.method public setClickListener(Landroid/support/wearable/view/WearableListView$ClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/support/wearable/view/WearableListView$ClickListener;

    .prologue
    .line 469
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    .line 470
    return-void
.end method

.method public setGreedyTouchMode(Z)V
    .locals 0
    .param p1, "greedy"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Landroid/support/wearable/view/WearableListView;->mGreedyTouchMode:Z

    .line 208
    return-void
.end method

.method public setInitialOffset(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 218
    iput p1, p0, Landroid/support/wearable/view/WearableListView;->mInitialOffset:I

    .line 219
    return-void
.end method

.method public setOverScrollListener(Landroid/support/wearable/view/WearableListView$OnOverScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    .prologue
    .line 479
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    .line 480
    return-void
.end method
