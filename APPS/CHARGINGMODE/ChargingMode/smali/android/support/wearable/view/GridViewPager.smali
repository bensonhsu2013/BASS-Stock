.class public Landroid/support/wearable/view/GridViewPager;
.super Landroid/view/ViewGroup;
.source "GridViewPager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/GridViewPager$LayoutParams;,
        Landroid/support/wearable/view/GridViewPager$PagerObserver;,
        Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;,
        Landroid/support/wearable/view/GridViewPager$SavedState;,
        Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;,
        Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;,
        Landroid/support/wearable/view/GridViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final DEBUG_ADAPTER:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_LIFECYCLE:Z = false

.field private static final DEBUG_LISTENERS:Z = false

.field private static final DEBUG_POPULATE:Z = false

.field private static final DEBUG_ROUND:Z = false

.field private static final DEBUG_SCROLLING:Z = false

.field private static final DEBUG_SETTLING:Z = false

.field private static final DEBUG_TOUCH:Z = false

.field private static final DEBUG_TOUCHSLOP:Z = false

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MIN_ACCURATE_VELOCITY:I = 0xc8

.field private static final MIN_DISTANCE_FOR_FLING_DP:I = 0x28

.field private static final NO_POINTER:I = -0x1

.field private static final OVERSCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SCROLL_AXIS_X:I = 0x0

.field private static final SCROLL_AXIS_Y:I = 0x1

.field public static final SCROLL_STATE_CONTENT_SETTLING:I = 0x3

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final SLIDE_ANIMATION_DURATION_NORMAL_MS:I = 0x12c

.field private static final SLIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "GridViewPager"


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

.field private mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

.field private mAdapterChangeNotificationPending:Z

.field private mBackgroundController:Landroid/support/wearable/view/BackgroundController;

.field private mCalledSuper:Z

.field private final mCloseEnough:I

.field private mColMargin:I

.field private final mCurItem:Landroid/graphics/Point;

.field private mDatasetChangePending:Z

.field private mDelayPopulate:Z

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedCurrentColumnCount:I

.field private mExpectedRowCount:I

.field private mFirstLayout:Z

.field private mGestureInitialScrollY:I

.field private mGestureInitialX:F

.field private mGestureInitialY:F

.field private mInLayout:Z

.field private mIsAbleToDrag:Z

.field private mIsBeingDragged:Z

.field private final mItems:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Landroid/graphics/Point;",
            "Landroid/support/wearable/view/GridViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinFlingDistance:I

.field private final mMinFlingVelocity:I

.field private final mMinUsableVelocity:I

.field private mObserver:Landroid/support/wearable/view/GridViewPager$PagerObserver;

.field private mOffscreenPageCount:I

.field private mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

.field private mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

.field private mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

.field private mPointerLastX:F

.field private mPointerLastY:F

.field private final mPopulatedPageBounds:Landroid/graphics/Rect;

.field private final mPopulatedPages:Landroid/graphics/Rect;

.field private final mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Landroid/graphics/Point;",
            "Landroid/support/wearable/view/GridViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:Landroid/graphics/Point;

.field private mRowMargin:I

.field private mRowScrollX:Landroid/util/SparseIntArray;

.field private mScrollAxis:I

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mScrollingContent:Landroid/view/View;

.field private final mTempPoint1:Landroid/graphics/Point;

.field private final mTouchSlop:I

.field private final mTouchSlopSquared:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowInsets:Landroid/view/WindowInsets;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/wearable/view/GridViewPager;->LAYOUT_ATTRS:[I

    .line 66
    new-instance v0, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;

    invoke-direct {v0}, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;-><init>()V

    sput-object v0, Landroid/support/wearable/view/GridViewPager;->OVERSCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 67
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/wearable/view/GridViewPager;->SLIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/wearable/view/GridViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/GridViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    .line 273
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v2, Landroid/support/wearable/view/GridViewPager$1;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/GridViewPager$1;-><init>(Landroid/support/wearable/view/GridViewPager;)V

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 116
    iput v4, p0, Landroid/support/wearable/view/GridViewPager;->mOffscreenPageCount:I

    .line 137
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 147
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 159
    iput-boolean v4, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    .line 183
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    .line 274
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 275
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 276
    .local v0, "density":F
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    .line 277
    iget v2, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    mul-int/2addr v2, v3

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlopSquared:I

    .line 278
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mMinFlingVelocity:I

    .line 279
    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mMinFlingDistance:I

    .line 280
    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mMinUsableVelocity:I

    .line 281
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mCloseEnough:I

    .line 282
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    .line 283
    new-instance v2, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    .line 284
    new-instance v2, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    .line 285
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    .line 286
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPageBounds:Landroid/graphics/Rect;

    .line 287
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroid/support/wearable/view/GridViewPager;->SLIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    .line 288
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    .line 289
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/GridViewPager;->setOverScrollMode(I)V

    .line 290
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mRowScrollX:Landroid/util/SparseIntArray;

    .line 291
    new-instance v2, Landroid/support/wearable/view/BackgroundController;

    invoke-direct {v2}, Landroid/support/wearable/view/BackgroundController;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    .line 292
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v2, p0}, Landroid/support/wearable/view/BackgroundController;->attachTo(Landroid/view/View;)V

    .line 293
    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/GridViewPager;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/GridViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/wearable/view/GridViewPager;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/GridViewPager;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    return-void
.end method

.method static synthetic access$400(Landroid/support/wearable/view/GridViewPager;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/GridViewPager;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->dataSetChanged()V

    return-void
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/support/wearable/view/GridViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private adapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V
    .locals 1
    .param p1, "oldAdapter"    # Landroid/support/wearable/view/GridPagerAdapter;
    .param p2, "newAdapter"    # Landroid/support/wearable/view/GridPagerAdapter;

    .prologue
    .line 501
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 504
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p1, p2}, Landroid/support/wearable/view/BackgroundController;->onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 507
    :cond_1
    return-void
.end method

.method private addNewItem(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 3
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    .line 880
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 881
    .local v1, "key":Landroid/graphics/Point;
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 882
    .local v0, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    if-nez v0, :cond_0

    .line 883
    new-instance v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .end local v0    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    invoke-direct {v0}, Landroid/support/wearable/view/GridViewPager$ItemInfo;-><init>()V

    .line 884
    .restart local v0    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v2, p0, p2, p1}, Landroid/support/wearable/view/GridPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;II)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 885
    iput p1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    .line 886
    iput p2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    .line 892
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 893
    iput p1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    .line 894
    iput p2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    .line 898
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    return-object v0
.end method

.method private cancelDrag()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1024
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->cancelPendingInputEvents()V

    .line 1025
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1026
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1028
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1029
    invoke-virtual {p0, v8}, Landroid/support/wearable/view/GridViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1030
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1031
    return-void
.end method

.method private completeScroll(Z)V
    .locals 8
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1602
    iget v6, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const/4 v0, 0x1

    .line 1603
    .local v0, "needPopulate":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1604
    iget-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1605
    iget-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v6}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v1

    .line 1606
    .local v1, "oldX":I
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v2

    .line 1607
    .local v2, "oldY":I
    iget-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1608
    .local v3, "x":I
    iget-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1609
    .local v4, "y":I
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 1610
    :cond_0
    invoke-virtual {p0, v3, v4}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 1613
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    .line 1614
    iput-boolean v5, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 1615
    if-eqz v0, :cond_2

    .line 1616
    if-eqz p1, :cond_4

    .line 1617
    iget-object v5, p0, Landroid/support/wearable/view/GridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1622
    :cond_2
    :goto_1
    return-void

    .end local v0    # "needPopulate":Z
    :cond_3
    move v0, v5

    .line 1602
    goto :goto_0

    .line 1619
    .restart local v0    # "needPopulate":Z
    :cond_4
    iget-object v5, p0, Landroid/support/wearable/view/GridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private computePageLeft(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 1390
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentWidth()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private computePageTop(I)I
    .locals 2
    .param p1, "row"    # I

    .prologue
    .line 1394
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private dataSetChanged()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 918
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v8}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    .line 919
    .local v0, "adapterRowCount":I
    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    .line 920
    new-instance v5, Landroid/graphics/Point;

    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-direct {v5, v8}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 921
    .local v5, "newCurrItem":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 922
    .local v2, "isUpdating":Z
    new-instance v6, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v6}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 924
    .local v6, "newItemMap":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Landroid/graphics/Point;Landroid/support/wearable/view/GridViewPager$ItemInfo;>;"
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v8}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 925
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v8, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 926
    .local v4, "itemKey":Landroid/graphics/Point;
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v8, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 927
    .local v3, "itemInfo":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v9, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/GridPagerAdapter;->getItemPosition(Ljava/lang/Object;)Landroid/graphics/Point;

    move-result-object v7

    .line 929
    .local v7, "newItemPos":Landroid/graphics/Point;
    sget-object v8, Landroid/support/wearable/view/GridPagerAdapter;->POSITION_UNCHANGED:Landroid/graphics/Point;

    if-ne v7, v8, :cond_1

    .line 933
    invoke-virtual {v6, v4, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 937
    :cond_1
    sget-object v8, Landroid/support/wearable/view/GridPagerAdapter;->POSITION_NONE:Landroid/graphics/Point;

    if-ne v7, v8, :cond_4

    .line 942
    if-nez v2, :cond_2

    .line 943
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v8, p0}, Landroid/support/wearable/view/GridPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 944
    const/4 v2, 0x1

    .line 947
    :cond_2
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v9, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    iget v10, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget-object v11, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, p0, v9, v10, v11}, Landroid/support/wearable/view/GridPagerAdapter;->destroyItem(Landroid/view/ViewGroup;IILjava/lang/Object;)V

    .line 950
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v9, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget v10, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->equals(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 951
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/lit8 v9, v0, -0x1

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v12, v9}, Landroid/support/wearable/view/GridViewPager;->limit(III)I

    move-result v8

    iput v8, v5, Landroid/graphics/Point;->y:I

    .line 952
    iget v8, v5, Landroid/graphics/Point;->y:I

    if-ge v8, v0, :cond_3

    .line 953
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v10, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v12, v9}, Landroid/support/wearable/view/GridViewPager;->limit(III)I

    move-result v8

    iput v8, v5, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 956
    :cond_3
    iput v12, v5, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 963
    :cond_4
    iget v8, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget v9, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Point;->equals(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 969
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v9, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget v10, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->equals(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 975
    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Point;->set(II)V

    .line 977
    :cond_5
    iget v8, v7, Landroid/graphics/Point;->x:I

    iput v8, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    .line 978
    iget v8, v7, Landroid/graphics/Point;->y:I

    iput v8, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    .line 979
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v6, v8, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 984
    .end local v3    # "itemInfo":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .end local v4    # "itemKey":Landroid/graphics/Point;
    .end local v7    # "newItemPos":Landroid/graphics/Point;
    :cond_6
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v8}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 985
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v8, v6}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 987
    if-eqz v2, :cond_7

    .line 988
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v8, p0}, Landroid/support/wearable/view/GridPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 991
    :cond_7
    iget v8, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    if-lez v8, :cond_8

    .line 992
    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v9, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v8

    iput v8, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    .line 1000
    :goto_2
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->dispatchOnDataSetChanged()V

    .line 1001
    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v5, Landroid/graphics/Point;->x:I

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v12, v10}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZ)V

    .line 1002
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->requestLayout()V

    .line 1003
    return-void

    .line 994
    :cond_8
    iput v12, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    goto :goto_2
.end method

.method private static debugIndent(I)Ljava/lang/String;
    .locals 4
    .param p0, "depth"    # I

    .prologue
    const/16 v3, 0x20

    .line 2383
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2384
    .local v1, "spaces":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_0

    .line 2385
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2387
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private determineTargetPage(IIFIIII)I
    .locals 5
    .param p1, "previousPage"    # I
    .param p2, "currentPage"    # I
    .param p3, "pageOffset"    # F
    .param p4, "firstPage"    # I
    .param p5, "lastPage"    # I
    .param p6, "velocity"    # I
    .param p7, "totalDragDistance"    # I

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 2214
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mMinUsableVelocity:I

    if-ge v2, v3, :cond_0

    .line 2215
    int-to-float v2, p6

    int-to-float v3, p7

    invoke-static {v2, v3}, Ljava/lang/Math;->copySign(FF)F

    move-result v2

    float-to-int p6, v2

    .line 2220
    :cond_0
    sub-float v2, v4, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v2, v4, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v0, v2, v3

    .line 2222
    .local v0, "flingBoost":F
    invoke-static {p7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mMinFlingDistance:I

    if-le v2, v3, :cond_2

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mMinFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 2224
    if-lez p6, :cond_1

    move v1, p2

    .line 2235
    .local v1, "targetPage":I
    :goto_0
    invoke-static {v1, p4, p5}, Landroid/support/wearable/view/GridViewPager;->limit(III)I

    move-result v1

    .line 2239
    return v1

    .line 2224
    .end local v1    # "targetPage":I
    :cond_1
    add-int/lit8 v1, p2, 0x1

    goto :goto_0

    .line 2229
    :cond_2
    int-to-float v2, p2

    add-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .restart local v1    # "targetPage":I
    goto :goto_0
.end method

.method private dispatchOnDataSetChanged()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    invoke-interface {v0}, Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;->onDataSetChanged()V

    .line 1009
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0}, Landroid/support/wearable/view/BackgroundController;->onDataSetChanged()V

    .line 1012
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1894
    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    .line 1895
    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsAbleToDrag:Z

    .line 1897
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1899
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1901
    :cond_0
    return-void
.end method

.method private executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1938
    const/4 v0, 0x0

    .line 1939
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    move v1, v0

    .line 1961
    :goto_1
    return v1

    .line 1941
    :sswitch_1
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->pageLeft()Z

    move-result v0

    .line 1942
    goto :goto_0

    .line 1944
    :sswitch_2
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->pageRight()Z

    move-result v0

    .line 1945
    goto :goto_0

    .line 1947
    :sswitch_3
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->pageUp()Z

    move-result v0

    .line 1948
    goto :goto_0

    .line 1950
    :sswitch_4
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->pageDown()Z

    move-result v0

    .line 1951
    goto :goto_0

    .line 1956
    :sswitch_5
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->debug()V

    .line 1957
    const/4 v1, 0x1

    goto :goto_1

    .line 1939
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_0
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method private getChildForInfo(Landroid/support/wearable/view/GridViewPager$ItemInfo;)Landroid/view/View;
    .locals 5
    .param p1, "ii"    # Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .prologue
    .line 1846
    iget-object v3, p1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1847
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v1

    .line 1849
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1850
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/GridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1851
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v4, p1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Landroid/support/wearable/view/GridPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1856
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 1849
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1856
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getContentHeight()I
    .locals 3

    .prologue
    .line 578
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getContentWidth()I
    .locals 3

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRowScrollX(I)I
    .locals 2
    .param p1, "row"    # I

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRowScrollX:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getScrollableDistance(Landroid/view/View;I)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dir"    # I

    .prologue
    .line 1818
    const/4 v0, 0x0

    .line 1819
    .local v0, "scrollable":I
    instance-of v1, p1, Landroid/support/wearable/view/CardScrollView;

    if-eqz v1, :cond_1

    .line 1820
    check-cast p1, Landroid/support/wearable/view/CardScrollView;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/support/wearable/view/CardScrollView;->getAvailableScrollDelta(I)I

    move-result v0

    .line 1824
    :cond_0
    :goto_0
    return v0

    .line 1821
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    instance-of v1, p1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 1822
    check-cast p1, Landroid/widget/ScrollView;

    .end local p1    # "child":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/GridViewPager;->getScrollableDistance(Landroid/widget/ScrollView;I)I

    move-result v0

    goto :goto_0
.end method

.method private getScrollableDistance(Landroid/widget/ScrollView;I)I
    .locals 7
    .param p1, "view"    # Landroid/widget/ScrollView;
    .param p2, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 1828
    const/4 v2, 0x0

    .line 1829
    .local v2, "distance":I
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1830
    invoke-virtual {p1, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1831
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1832
    .local v4, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1833
    .local v1, "contentHeight":I
    sub-int v3, v1, v4

    .line 1834
    .local v3, "extra":I
    if-le v1, v4, :cond_0

    .line 1835
    if-lez p2, :cond_1

    .line 1836
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    sub-int v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1842
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "contentHeight":I
    .end local v3    # "extra":I
    .end local v4    # "height":I
    :cond_0
    :goto_0
    return v2

    .line 1837
    .restart local v0    # "content":Landroid/view/View;
    .restart local v1    # "contentHeight":I
    .restart local v3    # "extra":I
    .restart local v4    # "height":I
    :cond_1
    if-gez p2, :cond_0

    .line 1838
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    neg-int v2, v5

    goto :goto_0
.end method

.method private handlePointerDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2000
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 2003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialX:F

    .line 2004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialY:F

    .line 2005
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialScrollY:I

    .line 2007
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialX:F

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    .line 2008
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialY:F

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 2009
    iput-boolean v3, p0, Landroid/support/wearable/view/GridViewPager;->mIsAbleToDrag:Z

    .line 2011
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2012
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2014
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2015
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mCloseEnough:I

    if-gt v0, v1, :cond_2

    :cond_1
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_3

    .line 2022
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2023
    iput-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 2024
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    .line 2025
    iput-boolean v3, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    .line 2026
    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2027
    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    .line 2038
    :goto_0
    return v2

    .line 2029
    :cond_3
    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    .line 2030
    iput-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    goto :goto_0
.end method

.method private handlePointerMove(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2042
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 2043
    .local v2, "activePointerId":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 2044
    const/16 v18, 0x0

    .line 2123
    :goto_0
    return v18

    .line 2047
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 2048
    .local v7, "pointerIndex":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_1

    .line 2049
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    goto :goto_0

    .line 2051
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 2052
    .local v14, "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 2054
    .local v16, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    move/from16 v18, v0

    sub-float v5, v14, v18

    .line 2055
    .local v5, "dx":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 2056
    .local v15, "xDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    move/from16 v18, v0

    sub-float v6, v16, v18

    .line 2057
    .local v6, "dy":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 2059
    .local v17, "yDiff":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 2065
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 2066
    mul-float v18, v15, v15

    mul-float v19, v17, v17

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mTouchSlopSquared:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    .line 2070
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    .line 2071
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2072
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    .line 2073
    cmpl-float v18, v17, v15

    if-ltz v18, :cond_5

    .line 2074
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    .line 2086
    :goto_1
    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_6

    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-lez v18, :cond_6

    .line 2088
    mul-float v18, v15, v15

    mul-float v19, v17, v17

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 2089
    .local v8, "h":D
    float-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    .line 2091
    .local v12, "t":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 2092
    .local v11, "sy":F
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 2108
    .end local v8    # "h":D
    .end local v12    # "t":D
    .local v10, "sx":F
    :goto_2
    const/16 v18, 0x0

    cmpl-float v18, v5, v18

    if-lez v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    move/from16 v18, v0

    add-float v18, v18, v10

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    .line 2109
    const/16 v18, 0x0

    cmpl-float v18, v6, v18

    if-lez v18, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    move/from16 v18, v0

    add-float v18, v18, v11

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 2114
    .end local v10    # "sx":F
    .end local v11    # "sy":F
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 2115
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    move/from16 v18, v0

    if-nez v18, :cond_a

    move v3, v14

    .line 2116
    .local v3, "dragX":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move/from16 v4, v16

    .line 2117
    .local v4, "dragY":F
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/support/wearable/view/GridViewPager;->performDrag(FF)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2118
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2122
    .end local v3    # "dragX":F
    .end local v4    # "dragY":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2123
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    move/from16 v18, v0

    goto/16 :goto_0

    .line 2079
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    goto/16 :goto_1

    .line 2100
    :cond_6
    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-nez v18, :cond_7

    .line 2101
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v10, v0

    .line 2102
    .restart local v10    # "sx":F
    const/4 v11, 0x0

    .restart local v11    # "sy":F
    goto/16 :goto_2

    .line 2104
    .end local v10    # "sx":F
    .end local v11    # "sy":F
    :cond_7
    const/4 v10, 0x0

    .line 2105
    .restart local v10    # "sx":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v11, v0

    .restart local v11    # "sy":F
    goto/16 :goto_2

    .line 2108
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    move/from16 v18, v0

    sub-float v18, v18, v10

    goto/16 :goto_3

    .line 2109
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    move/from16 v18, v0

    sub-float v18, v18, v11

    goto/16 :goto_4

    .line 2115
    .end local v10    # "sx":F
    .end local v11    # "sy":F
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    goto :goto_5

    .line 2116
    .restart local v3    # "dragX":F
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    goto :goto_6
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2127
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    if-nez v2, :cond_1

    .line 2128
    :cond_0
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 2129
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->endDrag()V

    .line 2130
    const/4 v2, 0x0

    .line 2197
    :goto_0
    return v2

    .line 2133
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 2134
    .local v30, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2135
    const/16 v2, 0x3e8

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2137
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    .line 2139
    .local v24, "activePointerIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    .line 2140
    .local v20, "targetPageX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    .line 2141
    .local v19, "targetPageY":I
    const/4 v8, 0x0

    .line 2143
    .local v8, "velocity":I
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->infoForCurrentScrollPosition()Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v28

    .line 2145
    .local v28, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    packed-switch v2, :pswitch_data_0

    .line 2186
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 2187
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 2188
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move/from16 v0, v19

    if-eq v0, v2, :cond_3

    .line 2191
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/support/wearable/view/GridPagerAdapter;->getCurrentColumnForRow(II)I

    move-result v20

    .line 2193
    :cond_3
    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v18, p0

    move/from16 v23, v8

    invoke-virtual/range {v18 .. v23}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZI)V

    .line 2195
    :cond_4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 2196
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->endDrag()V

    .line 2197
    const/4 v2, 0x0

    goto :goto_0

    .line 2147
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v31

    .line 2148
    .local v31, "x":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialX:F

    sub-float v2, v31, v2

    float-to-int v9, v2

    .line 2149
    .local v9, "totalDeltaX":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v8, v2

    .line 2150
    move-object/from16 v0, v28

    iget v4, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    .line 2151
    .local v4, "currentPageX":I
    move-object/from16 v0, v28

    iget v2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v2

    move-object/from16 v0, v28

    iget v3, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v3

    sub-int v26, v2, v3

    .line 2152
    .local v26, "distanceX":I
    move/from16 v0, v26

    int-to-float v2, v0

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getContentWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    div-float v5, v2, v3

    .line 2153
    .local v5, "pageOffsetX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/support/wearable/view/GridViewPager;->determineTargetPage(IIFIIII)I

    move-result v20

    .line 2155
    goto/16 :goto_1

    .line 2158
    .end local v4    # "currentPageX":I
    .end local v5    # "pageOffsetX":F
    .end local v9    # "totalDeltaX":I
    .end local v26    # "distanceX":I
    .end local v31    # "x":F
    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v32

    .line 2159
    .local v32, "y":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v3

    sub-int v17, v2, v3

    .line 2160
    .local v17, "totalDeltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v8, v2

    .line 2161
    move-object/from16 v0, v28

    iget v12, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    .line 2162
    .local v12, "currentPageY":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v2

    move-object/from16 v0, v28

    iget v3, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v3

    sub-int v27, v2, v3

    .line 2163
    .local v27, "distanceY":I
    move/from16 v0, v27

    int-to-float v2, v0

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 2165
    .local v13, "pageOffsetY":F
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_5

    .line 2166
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->infoForCurrentScrollPosition()Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/wearable/view/GridViewPager;->getChildForInfo(Landroid/support/wearable/view/GridViewPager$ItemInfo;)Landroid/view/View;

    move-result-object v25

    .line 2167
    .local v25, "child":Landroid/view/View;
    neg-int v2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->getScrollableDistance(Landroid/view/View;I)I

    move-result v29

    .line 2168
    .local v29, "scrollable":I
    if-eqz v29, :cond_2

    .line 2169
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    .line 2170
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/wearable/view/GridViewPager;->mMinFlingVelocity:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 2171
    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v6, v8

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/support/wearable/view/GridViewPager;->flingContent(IIII)V

    .line 2172
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->endDrag()V

    goto/16 :goto_1

    .line 2179
    .end local v25    # "child":Landroid/view/View;
    .end local v29    # "scrollable":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v11, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v10, p0

    move/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Landroid/support/wearable/view/GridViewPager;->determineTargetPage(IIFIIII)I

    move-result v19

    goto/16 :goto_1

    .line 2145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static inRange(III)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 2391
    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private infoForChild(Landroid/view/View;)Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1306
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1307
    .local v1, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v3, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/wearable/view/GridPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1311
    .end local v1    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1305
    .restart local v1    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1311
    .end local v1    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private infoForCurrentScrollPosition()Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 4

    .prologue
    .line 1860
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v1

    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v2

    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 1861
    .local v0, "y":I
    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->infoForScrollPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v1

    return-object v1
.end method

.method private infoForPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1319
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 1320
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    return-object v0
.end method

.method private infoForPosition(Landroid/graphics/Point;)Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 1
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 1315
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    return-object v0
.end method

.method private infoForScrollPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 5
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I

    .prologue
    .line 1865
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    add-int/2addr v3, v4

    div-int v2, p2, v3

    .line 1866
    .local v2, "y":I
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentWidth()I

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    add-int/2addr v3, v4

    div-int v1, p1, v3

    .line 1867
    .local v1, "x":I
    invoke-direct {p0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->infoForPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    .line 1869
    .local v0, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    if-nez v0, :cond_0

    .line 1870
    new-instance v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .end local v0    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    invoke-direct {v0}, Landroid/support/wearable/view/GridViewPager$ItemInfo;-><init>()V

    .line 1871
    .restart local v0    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    iput v1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    .line 1872
    iput v2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    .line 1874
    :cond_0
    return-object v0
.end method

.method private static limit(FFF)F
    .locals 1
    .param p0, "val"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 2253
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 2258
    .end local p1    # "min":F
    :goto_0
    return p1

    .line 2255
    .restart local p1    # "min":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 2256
    goto :goto_0

    :cond_1
    move p1, p0

    .line 2258
    goto :goto_0
.end method

.method private static limit(FI)F
    .locals 2
    .param p0, "input"    # F
    .param p1, "limit"    # I

    .prologue
    const/4 v1, 0x0

    .line 1709
    if-lez p1, :cond_0

    .line 1710
    int-to-float v0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1712
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private static limit(III)I
    .locals 0
    .param p0, "val"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 2243
    if-ge p0, p1, :cond_0

    .line 2248
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 2245
    .restart local p1    # "min":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    .line 2246
    goto :goto_0

    :cond_1
    move p1, p0

    .line 2248
    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1878
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1879
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1880
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1883
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1884
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    .line 1885
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 1886
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 1887
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1888
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1891
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1883
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageDown()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1991
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v2}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1992
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/wearable/view/GridViewPager;->setCurrentItem(IIZ)V

    .line 1995
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageLeft()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1967
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    .line 1968
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/wearable/view/GridViewPager;->setCurrentItem(IIZ)V

    .line 1971
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageRight()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1975
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1976
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/wearable/view/GridViewPager;->setCurrentItem(IIZ)V

    .line 1979
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(II)Z
    .locals 11
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1535
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1536
    iput-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mCalledSuper:Z

    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    .line 1537
    invoke-virtual/range {v0 .. v6}, Landroid/support/wearable/view/GridViewPager;->onPageScrolled(IIFFII)V

    .line 1538
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mCalledSuper:Z

    if-nez v0, :cond_2

    .line 1539
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1544
    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->infoForCurrentScrollPosition()Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v7

    .line 1545
    .local v7, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    iget v0, v7, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v8

    .line 1546
    .local v8, "pageLeft":I
    iget v0, v7, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v9

    .line 1548
    .local v9, "pageTop":I
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    sub-int v5, v0, v8

    .line 1549
    .local v5, "offsetLeftPx":I
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    sub-int v6, v0, v9

    .line 1550
    .local v6, "offsetTopPx":I
    int-to-float v0, v5

    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentWidth()I

    move-result v2

    iget v10, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    div-float v3, v0, v2

    .line 1551
    .local v3, "offsetLeft":F
    int-to-float v0, v6

    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v2

    iget v10, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    div-float v4, v0, v2

    .line 1553
    .local v4, "offsetTop":F
    iput-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mCalledSuper:Z

    .line 1554
    iget v1, v7, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget v2, v7, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/support/wearable/view/GridViewPager;->onPageScrolled(IIFFII)V

    .line 1556
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mCalledSuper:Z

    if-nez v0, :cond_1

    .line 1557
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1560
    :cond_1
    const/4 v1, 0x1

    .end local v3    # "offsetLeft":F
    .end local v4    # "offsetTop":F
    .end local v5    # "offsetLeftPx":I
    .end local v6    # "offsetTopPx":I
    .end local v7    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .end local v8    # "pageLeft":I
    .end local v9    # "pageTop":I
    :cond_2
    return v1
.end method

.method private pageUp()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1983
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_0

    .line 1984
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/wearable/view/GridViewPager;->setCurrentItem(IIZ)V

    .line 1987
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDrag(FF)Z
    .locals 30
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1723
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    move/from16 v26, v0

    sub-float v7, v26, p1

    .line 1724
    .local v7, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    move/from16 v26, v0

    sub-float v8, v26, p2

    .line 1725
    .local v8, "deltaY":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    .line 1726
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 1729
    .local v17, "pages":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v27

    sub-int v12, v26, v27

    .line 1730
    .local v12, "leftBound":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v27

    sub-int v18, v26, v27

    .line 1731
    .local v18, "rightBound":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v27

    sub-int v24, v26, v27

    .line 1732
    .local v24, "topBound":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v27

    sub-int v3, v26, v27

    .line 1734
    .local v3, "bottomBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1735
    .local v19, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1737
    .local v20, "scrollY":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1739
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    move/from16 v27, v0

    add-int v16, v26, v27

    .line 1740
    .local v16, "pageSpacingY":I
    const/16 v26, 0x0

    cmpg-float v26, v8, v26

    if-gez v26, :cond_8

    .line 1741
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    rem-float v26, v20, v26

    move/from16 v0, v26

    neg-float v10, v0

    .line 1749
    .local v10, "distanceToFocusPoint":F
    :goto_0
    const/4 v11, 0x0

    .line 1750
    .local v11, "focalPointCrossed":Z
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v26

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v27

    cmpg-float v26, v26, v27

    if-gtz v26, :cond_0

    .line 1751
    sub-float/2addr v8, v10

    .line 1752
    add-float v20, v20, v10

    .line 1753
    const/4 v11, 0x1

    .line 1757
    :cond_0
    if-eqz v11, :cond_1

    .line 1761
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->infoForScrollPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->getChildForInfo(Landroid/support/wearable/view/GridViewPager$ItemInfo;)Landroid/view/View;

    move-result-object v4

    .line 1762
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 1763
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v9, v0

    .line 1764
    .local v9, "dir":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/support/wearable/view/GridViewPager;->getScrollableDistance(Landroid/view/View;I)I

    move-result v21

    .line 1765
    .local v21, "scrollable":I
    move/from16 v0, v21

    invoke-static {v8, v0}, Landroid/support/wearable/view/GridViewPager;->limit(FI)F

    move-result v5

    .line 1766
    .local v5, "consumed":F
    const/16 v26, 0x0

    float-to-int v0, v5

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->scrollBy(II)V

    .line 1770
    sub-float/2addr v8, v5

    .line 1771
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    move/from16 v26, v0

    float-to-int v0, v5

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v5, v27

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 1777
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "consumed":F
    .end local v9    # "dir":I
    .end local v10    # "distanceToFocusPoint":F
    .end local v11    # "focalPointCrossed":Z
    .end local v16    # "pageSpacingY":I
    .end local v21    # "scrollable":I
    :cond_1
    float-to-int v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v26, v26, v19

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v22, v0

    .line 1778
    .local v22, "targetX":I
    float-to-int v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v26, v26, v20

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1779
    .local v23, "targetY":I
    move/from16 v0, v22

    if-lt v0, v12, :cond_2

    move/from16 v0, v22

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    move/from16 v0, v23

    if-le v0, v3, :cond_9

    :cond_2
    const/16 v25, 0x1

    .line 1781
    .local v25, "wouldOverscroll":Z
    :goto_1
    if-eqz v25, :cond_7

    .line 1782
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getOverScrollMode()I

    move-result v13

    .line 1783
    .local v13, "mode":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    move/from16 v26, v0

    if-nez v26, :cond_3

    move/from16 v0, v18

    if-lt v12, v0, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    move/from16 v0, v24

    if-ge v0, v3, :cond_a

    :cond_4
    const/4 v6, 0x1

    .line 1785
    .local v6, "couldScroll":Z
    :goto_2
    if-eqz v13, :cond_5

    if-eqz v6, :cond_f

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_f

    .line 1787
    :cond_5
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v19, v26

    if-lez v26, :cond_b

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v14, v19, v26

    .line 1789
    .local v14, "overscrollX":F
    :goto_3
    int-to-float v0, v3

    move/from16 v26, v0

    cmpl-float v26, v20, v26

    if-lez v26, :cond_d

    int-to-float v0, v3

    move/from16 v26, v0

    sub-float v15, v20, v26

    .line 1792
    .local v15, "overscrollY":F
    :goto_4
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_6

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v26

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v27

    cmpl-float v26, v26, v27

    if-nez v26, :cond_6

    .line 1793
    sget-object v26, Landroid/support/wearable/view/GridViewPager;->OVERSCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v28

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getContentWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    sub-float v27, v27, v28

    invoke-interface/range {v26 .. v27}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v26

    mul-float v7, v7, v26

    .line 1796
    :cond_6
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_7

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v26

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v27

    cmpl-float v26, v26, v27

    if-nez v26, :cond_7

    .line 1797
    sget-object v26, Landroid/support/wearable/view/GridViewPager;->OVERSCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v28

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    sub-float v27, v27, v28

    invoke-interface/range {v26 .. v27}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v26

    mul-float v8, v8, v26

    .line 1805
    .end local v6    # "couldScroll":Z
    .end local v13    # "mode":I
    .end local v14    # "overscrollX":F
    .end local v15    # "overscrollY":F
    :cond_7
    :goto_5
    add-float v19, v19, v7

    .line 1806
    add-float v20, v20, v8

    .line 1809
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    move/from16 v26, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v19, v27

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    .line 1810
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    move/from16 v26, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v20, v27

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 1812
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 1813
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->pageScrolled(II)Z

    .line 1814
    const/16 v26, 0x1

    return v26

    .line 1743
    .end local v22    # "targetX":I
    .end local v23    # "targetY":I
    .end local v25    # "wouldOverscroll":Z
    .restart local v16    # "pageSpacingY":I
    :cond_8
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    rem-float v27, v20, v27

    sub-float v26, v26, v27

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    rem-float v10, v26, v27

    .restart local v10    # "distanceToFocusPoint":F
    goto/16 :goto_0

    .line 1779
    .end local v10    # "distanceToFocusPoint":F
    .end local v16    # "pageSpacingY":I
    .restart local v22    # "targetX":I
    .restart local v23    # "targetY":I
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 1783
    .restart local v13    # "mode":I
    .restart local v25    # "wouldOverscroll":Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1787
    .restart local v6    # "couldScroll":Z
    :cond_b
    int-to-float v0, v12

    move/from16 v26, v0

    cmpg-float v26, v19, v26

    if-gez v26, :cond_c

    int-to-float v0, v12

    move/from16 v26, v0

    sub-float v14, v19, v26

    goto/16 :goto_3

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1789
    .restart local v14    # "overscrollX":F
    :cond_d
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v26, v20, v26

    if-gez v26, :cond_e

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v15, v20, v26

    goto/16 :goto_4

    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1801
    .end local v14    # "overscrollX":F
    :cond_f
    int-to-float v0, v12

    move/from16 v26, v0

    sub-float v26, v26, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v27, v19

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v7, v0, v1}, Landroid/support/wearable/view/GridViewPager;->limit(FFF)F

    move-result v7

    .line 1802
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v26, v20

    int-to-float v0, v3

    move/from16 v27, v0

    sub-float v27, v27, v20

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v8, v0, v1}, Landroid/support/wearable/view/GridViewPager;->limit(FFF)F

    move-result v8

    goto/16 :goto_5
.end method

.method private pointInRange(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 2399
    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v0, v1}, Landroid/support/wearable/view/GridViewPager;->inRange(III)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v1, p2}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/support/wearable/view/GridViewPager;->inRange(III)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private pointInRange(Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 2395
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->pointInRange(II)Z

    move-result v0

    return v0
.end method

.method private populate()V
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1019
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->populate(II)V

    .line 1021
    :cond_0
    return-void
.end method

.method private populate(II)V
    .locals 24
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .prologue
    .line 1044
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 1045
    .local v13, "oldCurItem":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p2

    if-eq v0, v1, :cond_3

    .line 1046
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1053
    const/4 v14, 0x0

    .local v14, "row":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v14, v0, :cond_3

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v14, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 1055
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/support/wearable/view/GridPagerAdapter;->getCurrentColumnForRow(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v1}, Landroid/support/wearable/view/GridViewPager;->setRowScrollX(II)V

    .line 1053
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1069
    .end local v14    # "row":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1196
    :cond_4
    :goto_1
    return-void

    .line 1078
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/GridPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPageBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->setEmpty()V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v15

    .line 1085
    .local v15, "rowCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v15, :cond_6

    .line 1086
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "Adapter row count changed without a call to notifyDataSetChanged()"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1089
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v5

    .line 1090
    .local v5, "colCount":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ge v5, v0, :cond_7

    .line 1091
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "All rows must have at least 1 column"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1094
    :cond_7
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    .line 1095
    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    .line 1097
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/GridViewPager;->mOffscreenPageCount:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1098
    .local v12, "offscreenPages":I
    const/16 v18, 0x0

    sub-int v19, p2, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1099
    .local v17, "startPosY":I
    add-int/lit8 v18, v15, -0x1

    add-int v19, p2, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1102
    .local v8, "endPosY":I
    const/16 v18, 0x0

    sub-int v19, p1, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1103
    .local v16, "startPosX":I
    add-int/lit8 v18, v5, -0x1

    add-int v19, p1, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1111
    .local v7, "endPosX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v18

    add-int/lit8 v9, v18, -0x1

    .local v9, "i":I
    :goto_2
    if-ltz v9, :cond_b

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1113
    .local v10, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    .line 1114
    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v0, v7, :cond_a

    .line 1111
    :cond_8
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 1120
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v18, v0

    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/support/wearable/view/GridPagerAdapter;->getCurrentColumnForRow(II)I

    move-result v6

    .line 1121
    .local v6, "curCol":I
    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_a

    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_a

    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v8, :cond_8

    .line 1127
    .end local v6    # "curCol":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Point;

    .line 1131
    .local v11, "key":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1133
    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    move/from16 v18, v0

    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v10}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1144
    .end local v10    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .end local v11    # "key":Landroid/graphics/Point;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move/from16 v0, p2

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v0, v7, :cond_d

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->addNewItem(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1145
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    goto :goto_4

    .line 1154
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v0, v8, :cond_f

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/view/GridPagerAdapter;->getCurrentColumnForRow(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->addNewItem(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1154
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_5

    .line 1164
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v18

    add-int/lit8 v9, v18, -0x1

    :goto_6
    if-ltz v9, :cond_10

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1169
    .restart local v10    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v18, v0

    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move/from16 v19, v0

    iget v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    move/from16 v20, v0

    iget-object v0, v10, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/wearable/view/GridPagerAdapter;->destroyItem(Landroid/view/ViewGroup;IILjava/lang/Object;)V

    .line 1164
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1171
    .end local v10    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/GridPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPageBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    add-int/lit8 v21, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    add-int/lit8 v22, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingBottom()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Rect;->set(IIII)V

    .line 1187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1188
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->adapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 1190
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/wearable/view/GridViewPager;->mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 1192
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/GridViewPager;->mDatasetChangePending:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1193
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/wearable/view/GridViewPager;->mDatasetChangePending:Z

    .line 1194
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->dispatchOnDataSetChanged()V

    goto/16 :goto_1
.end method

.method private recomputeScrollPosition(IIIIIIII)V
    .locals 18
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "height"    # I
    .param p4, "oldHeight"    # I
    .param p5, "colMargin"    # I
    .param p6, "oldColMargin"    # I
    .param p7, "rowMargin"    # I
    .param p8, "oldRowMargin"    # I

    .prologue
    .line 1399
    if-lez p2, :cond_1

    if-lez p4, :cond_1

    .line 1400
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingRight()I

    move-result v17

    sub-int v1, v1, v17

    add-int v14, v1, p5

    .line 1401
    .local v14, "widthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingRight()I

    move-result v17

    sub-int v1, v1, v17

    add-int v10, v1, p6

    .line 1404
    .local v10, "oldWidthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingBottom()I

    move-result v17

    sub-int v1, v1, v17

    add-int v7, v1, p7

    .line 1405
    .local v7, "heightWithMargin":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v1

    sub-int v1, p4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingBottom()I

    move-result v17

    sub-int v1, v1, v17

    add-int v9, v1, p8

    .line 1408
    .local v9, "oldHeightWithMargin":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v15

    .line 1409
    .local v15, "xpos":I
    int-to-float v1, v15

    int-to-float v0, v10

    move/from16 v17, v0

    div-float v11, v1, v17

    .line 1410
    .local v11, "pageOffset":F
    int-to-float v1, v14

    mul-float/2addr v1, v11

    float-to-int v2, v1

    .line 1412
    .local v2, "newOffsetXPixels":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v16

    .line 1413
    .local v16, "ypos":I
    move/from16 v0, v16

    int-to-float v1, v0

    int-to-float v0, v9

    move/from16 v17, v0

    div-float v12, v1, v17

    .line 1414
    .local v12, "pageOffsetY":F
    int-to-float v1, v7

    mul-float/2addr v1, v12

    float-to-int v3, v1

    .line 1416
    .local v3, "newOffsetYPixels":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1421
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->infoForPosition(Landroid/graphics/Point;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v13

    .line 1422
    .local v13, "targetInfo":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    iget v1, v13, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v17

    sub-int v4, v1, v17

    .line 1423
    .local v4, "targetX":I
    iget v1, v13, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v17

    sub-int v5, v1, v17

    .line 1424
    .local v5, "targetY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->timePassed()I

    move-result v17

    sub-int v6, v1, v17

    .line 1425
    .local v6, "newDuration":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1439
    .end local v2    # "newOffsetXPixels":I
    .end local v3    # "newOffsetYPixels":I
    .end local v4    # "targetX":I
    .end local v5    # "targetY":I
    .end local v6    # "newDuration":I
    .end local v7    # "heightWithMargin":I
    .end local v9    # "oldHeightWithMargin":I
    .end local v10    # "oldWidthWithMargin":I
    .end local v11    # "pageOffset":F
    .end local v12    # "pageOffsetY":F
    .end local v13    # "targetInfo":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .end local v14    # "widthWithMargin":I
    .end local v15    # "xpos":I
    .end local v16    # "ypos":I
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->infoForPosition(Landroid/graphics/Point;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v8

    .line 1430
    .local v8, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    if-eqz v8, :cond_0

    .line 1431
    iget v1, v8, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v17

    sub-int v4, v1, v17

    .line 1432
    .restart local v4    # "targetX":I
    iget v1, v8, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v17

    sub-int v5, v1, v17

    .line 1433
    .restart local v5    # "targetY":I
    iget v1, v8, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v1

    if-ne v4, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v1

    if-eq v5, v1, :cond_0

    .line 1434
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    .line 1435
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1701
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1702
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1703
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1705
    :cond_0
    return-void
.end method

.method private scrollCurrentRowTo(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 570
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p1}, Landroid/support/wearable/view/GridViewPager;->scrollRowTo(II)V

    .line 571
    return-void
.end method

.method private scrollRowTo(II)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "x"    # I

    .prologue
    .line 551
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 567
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v4

    .line 555
    .local v4, "size":I
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v5

    sub-int v3, p2, v5

    .line 556
    .local v3, "scrollAmount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 557
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/GridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 558
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->infoForChild(Landroid/view/View;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v2

    .line 559
    .local v2, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    if-ne v5, p1, :cond_1

    .line 560
    neg-int v5, v3

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 563
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->postInvalidateOnAnimation()V

    .line 556
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 566
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/GridViewPager;->setRowScrollX(II)V

    goto :goto_0
.end method

.method private static scrollStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1521
    packed-switch p0, :pswitch_data_0

    .line 1531
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1523
    :pswitch_0
    const-string v0, "DRAGGING"

    goto :goto_0

    .line 1525
    :pswitch_1
    const-string v0, "IDLE"

    goto :goto_0

    .line 1527
    :pswitch_2
    const-string v0, "SETTLING"

    goto :goto_0

    .line 1529
    :pswitch_3
    const-string v0, "CONTENT_SETTLING"

    goto :goto_0

    .line 1521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private scrollToItem(IIZIZ)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "smoothScroll"    # Z
    .param p4, "velocity"    # I
    .param p5, "dispatchSelected"    # Z

    .prologue
    .line 683
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/GridViewPager;->infoForPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    .line 687
    .local v0, "curInfo":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 688
    .local v1, "destX":I
    const/4 v2, 0x0

    .line 689
    .local v2, "destY":I
    if-eqz v0, :cond_0

    .line 690
    iget v3, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v4

    sub-int v1, v3, v4

    .line 691
    iget v3, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 693
    :cond_0
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v3, p2, p1}, Landroid/support/wearable/view/GridPagerAdapter;->setCurrentColumnForRow(II)V

    .line 694
    if-eqz p5, :cond_2

    .line 698
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 699
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    invoke-interface {v3, p2, p1}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageSelected(II)V

    .line 701
    :cond_1
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v3, :cond_2

    .line 702
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v3, p2, p1}, Landroid/support/wearable/view/BackgroundController;->onPageSelected(II)V

    .line 705
    :cond_2
    if-eqz p3, :cond_3

    .line 706
    invoke-virtual {p0, v1, v2, p4}, Landroid/support/wearable/view/GridViewPager;->smoothScrollTo(III)V

    .line 712
    :goto_0
    return-void

    .line 708
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    .line 709
    invoke-virtual {p0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 710
    invoke-direct {p0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->pageScrolled(II)Z

    goto :goto_0
.end method

.method private setRowScrollX(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "scrollX"    # I

    .prologue
    .line 546
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRowScrollX:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 547
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 522
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iput p1, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    .line 533
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 536
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/BackgroundController;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1266
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->infoForChild(Landroid/view/View;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    .line 1271
    .local v0, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    invoke-virtual {p0, p3}, Landroid/support/wearable/view/GridViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1272
    invoke-virtual {p0, p3}, Landroid/support/wearable/view/GridViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v1, p3

    .line 1274
    check-cast v1, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    .line 1276
    .local v1, "lp":Landroid/support/wearable/view/GridViewPager$LayoutParams;
    iget-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mInLayout:Z

    if-eqz v2, :cond_2

    .line 1277
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/wearable/view/GridViewPager$LayoutParams;->needsMeasure:Z

    .line 1278
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/wearable/view/GridViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1282
    :goto_0
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mWindowInsets:Landroid/view/WindowInsets;

    if-eqz v2, :cond_1

    .line 1286
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1288
    :cond_1
    return-void

    .line 1280
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1905
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 1913
    :cond_1
    :goto_0
    return v2

    .line 1908
    :cond_2
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v1

    .line 1909
    .local v1, "scrollX":I
    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    add-int/lit8 v0, v4, -0x1

    .line 1910
    .local v0, "lastColumnIndex":I
    if-lez p1, :cond_3

    .line 1911
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v5

    if-lt v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    .line 1913
    :cond_3
    if-gtz v1, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1919
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 1927
    :cond_1
    :goto_0
    return v2

    .line 1922
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v1

    .line 1923
    .local v1, "scrollY":I
    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    add-int/lit8 v0, v4, -0x1

    .line 1924
    .local v0, "lastRowIndex":I
    if-lez p1, :cond_3

    .line 1925
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v5

    if-lt v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    .line 1927
    :cond_3
    if-gtz v1, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2306
    instance-of v0, p1, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1488
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1489
    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1490
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1491
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1512
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1518
    :goto_1
    return-void

    .line 1493
    :cond_1
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1494
    .local v2, "x":I
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1495
    .local v3, "y":I
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    .line 1498
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v0

    .line 1499
    .local v0, "oldX":I
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v1

    .line 1500
    .local v1, "oldY":I
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1501
    .restart local v2    # "x":I
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1503
    .restart local v3    # "y":I
    if-ne v0, v2, :cond_3

    if-eq v1, v3, :cond_0

    .line 1504
    :cond_3
    invoke-virtual {p0, v2, v3}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 1505
    invoke-direct {p0, v2, v3}, Landroid/support/wearable/view/GridViewPager;->pageScrolled(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1506
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1507
    invoke-virtual {p0, v6, v6}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1517
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_4
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    goto :goto_1
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 2342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/GridViewPager;->debug(I)V

    .line 2343
    return-void
.end method

.method protected debug(I)V
    .locals 5
    .param p1, "depth"    # I

    .prologue
    .line 2350
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->debug(I)V

    .line 2352
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 2353
    .local v2, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mCurItem={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2354
    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 2356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mAdapter={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2357
    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 2359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mRowCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2360
    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 2362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mCurrentColumnCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2363
    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    .line 2365
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 2366
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 2367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mItems={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2368
    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2371
    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 2372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2373
    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2375
    :cond_1
    if-eqz v0, :cond_2

    .line 2376
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 2377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2378
    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_2
    return-void
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/GridViewPager;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 336
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 339
    :cond_0
    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1934
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method flingContent(IIII)V
    .locals 9
    .param p1, "limitX"    # I
    .param p2, "limitY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 844
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 877
    :goto_0
    return-void

    .line 847
    :cond_0
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 848
    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    .line 849
    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    goto :goto_0

    .line 852
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 853
    .local v1, "sx":I
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    .line 854
    .local v2, "sy":I
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    .line 861
    if-lez p3, :cond_2

    .line 862
    move v5, v1

    .line 863
    .local v5, "minX":I
    add-int v6, v1, p1

    .line 868
    .local v6, "maxX":I
    :goto_1
    if-lez p4, :cond_3

    .line 869
    move v7, v2

    .line 870
    .local v7, "minY":I
    add-int v8, v2, p2

    .line 875
    .local v8, "maxY":I
    :goto_2
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 876
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 865
    .end local v5    # "minX":I
    .end local v6    # "maxX":I
    .end local v7    # "minY":I
    .end local v8    # "maxY":I
    :cond_2
    add-int v5, v1, p1

    .line 866
    .restart local v5    # "minX":I
    move v6, v1

    .restart local v6    # "maxX":I
    goto :goto_1

    .line 872
    :cond_3
    add-int v7, v2, p2

    .line 873
    .restart local v7    # "minY":I
    move v8, v2

    .restart local v8    # "maxY":I
    goto :goto_2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2296
    new-instance v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/wearable/view/GridViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2311
    new-instance v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/wearable/view/GridViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2301
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/wearable/view/GridPagerAdapter;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 615
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getOffscreenPageCount()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mOffscreenPageCount:I

    return v0
.end method

.method public getPageColumnMargin()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    return v0
.end method

.method public getPageRowMargin()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    return v0
.end method

.method public measureChild(Landroid/view/View;Landroid/support/wearable/view/GridViewPager$LayoutParams;)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/support/wearable/view/GridViewPager$LayoutParams;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v11, -0x2

    .line 1358
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentWidth()I

    move-result v1

    .line 1359
    .local v1, "childDefaultWidth":I
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v0

    .line 1362
    .local v0, "childDefaultHeight":I
    iget v10, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->width:I

    if-ne v10, v11, :cond_0

    move v6, v8

    .line 1364
    .local v6, "widthMode":I
    :goto_0
    iget v10, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->height:I

    if-ne v10, v11, :cond_1

    move v4, v8

    .line 1367
    .local v4, "heightMode":I
    :goto_1
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1368
    .local v7, "widthSpec":I
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1369
    .local v5, "heightSpec":I
    iget v8, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->leftMargin:I

    iget v9, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    iget v9, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->width:I

    invoke-static {v7, v8, v9}, Landroid/support/wearable/view/GridViewPager;->getChildMeasureSpec(III)I

    move-result v3

    .line 1371
    .local v3, "childWidthMeasureSpec":I
    iget v8, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->topMargin:I

    iget v9, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    iget v9, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->height:I

    invoke-static {v5, v8, v9}, Landroid/support/wearable/view/GridViewPager;->getChildMeasureSpec(III)I

    move-result v2

    .line 1374
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1375
    return-void

    .end local v2    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v4    # "heightMode":I
    .end local v5    # "heightSpec":I
    .end local v6    # "widthMode":I
    .end local v7    # "widthSpec":I
    :cond_0
    move v6, v9

    .line 1362
    goto :goto_0

    .restart local v6    # "widthMode":I
    :cond_1
    move v4, v9

    .line 1364
    goto :goto_1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v1

    .line 316
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 317
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/GridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager;->mWindowInsets:Landroid/view/WindowInsets;

    .line 324
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    return-object v3
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    .line 300
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestFitSystemWindows()V

    .line 307
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/GridViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 360
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 361
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1629
    .local v0, "action":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_3

    .line 1633
    :cond_0
    iput-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    .line 1634
    iput-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mIsAbleToDrag:Z

    .line 1635
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 1636
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 1637
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1638
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move v1, v2

    .line 1671
    :cond_2
    :goto_0
    return v1

    .line 1645
    :cond_3
    if-eqz v0, :cond_4

    .line 1646
    iget-boolean v3, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    if-nez v3, :cond_2

    .line 1652
    iget-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mIsAbleToDrag:Z

    if-nez v1, :cond_4

    move v1, v2

    .line 1656
    goto :goto_0

    .line 1660
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1671
    :goto_1
    iget-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1662
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->handlePointerDown(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1665
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->handlePointerMove(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1668
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1660
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1447
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v6

    .line 1448
    .local v6, "children":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 1449
    invoke-virtual {p0, v7}, Landroid/support/wearable/view/GridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1450
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    .line 1451
    .local v10, "lp":Landroid/support/wearable/view/GridViewPager$LayoutParams;
    if-nez v10, :cond_0

    .line 1452
    const-string v0, "GridViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got null layout params for child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1455
    :cond_0
    invoke-direct {p0, v12}, Landroid/support/wearable/view/GridViewPager;->infoForChild(Landroid/view/View;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v8

    .line 1456
    .local v8, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    if-nez v8, :cond_1

    .line 1457
    const-string v0, "GridViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown child view, not claimed by adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1460
    :cond_1
    iget-boolean v0, v10, Landroid/support/wearable/view/GridViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v0, :cond_2

    .line 1463
    const/4 v0, 0x0

    iput-boolean v0, v10, Landroid/support/wearable/view/GridViewPager$LayoutParams;->needsMeasure:Z

    .line 1464
    invoke-virtual {p0, v12, v10}, Landroid/support/wearable/view/GridViewPager;->measureChild(Landroid/view/View;Landroid/support/wearable/view/GridViewPager$LayoutParams;)V

    .line 1466
    :cond_2
    iget v0, v8, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v9

    .line 1467
    .local v9, "left":I
    iget v0, v8, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v11

    .line 1469
    .local v11, "top":I
    iget v0, v8, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v0

    sub-int/2addr v9, v0

    .line 1471
    iget v0, v10, Landroid/support/wearable/view/GridViewPager$LayoutParams;->leftMargin:I

    add-int/2addr v9, v0

    .line 1472
    iget v0, v10, Landroid/support/wearable/view/GridViewPager$LayoutParams;->topMargin:I

    add-int/2addr v11, v0

    .line 1478
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual {v12, v9, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1480
    .end local v8    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .end local v9    # "left":I
    .end local v10    # "lp":Landroid/support/wearable/view/GridViewPager$LayoutParams;
    .end local v11    # "top":I
    .end local v12    # "view":Landroid/view/View;
    :cond_3
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1481
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/wearable/view/GridViewPager;->scrollToItem(IIZIZ)V

    .line 1483
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    .line 1484
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 1328
    invoke-static {v6, p1}, Landroid/support/wearable/view/GridViewPager;->getDefaultSize(II)I

    move-result v4

    invoke-static {v6, p2}, Landroid/support/wearable/view/GridViewPager;->getDefaultSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/support/wearable/view/GridViewPager;->setMeasuredDimension(II)V

    .line 1332
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/wearable/view/GridViewPager;->mInLayout:Z

    .line 1333
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    .line 1334
    iput-boolean v6, p0, Landroid/support/wearable/view/GridViewPager;->mInLayout:Z

    .line 1336
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v3

    .line 1337
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1338
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/GridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1339
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1343
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    .line 1344
    .local v2, "lp":Landroid/support/wearable/view/GridViewPager$LayoutParams;
    if-eqz v2, :cond_0

    .line 1345
    invoke-virtual {p0, v0, v2}, Landroid/support/wearable/view/GridViewPager;->measureChild(Landroid/view/View;Landroid/support/wearable/view/GridViewPager$LayoutParams;)V

    .line 1337
    .end local v2    # "lp":Landroid/support/wearable/view/GridViewPager$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1349
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onPageScrolled(IIFFII)V
    .locals 7
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F
    .param p5, "offsetLeftPx"    # I
    .param p6, "offsetTopPx"    # I

    .prologue
    .line 1585
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mCalledSuper:Z

    .line 1591
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    move v1, p2

    move v2, p1

    move v3, p4

    move v4, p3

    move v5, p6

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageScrolled(IIFFII)V

    .line 1595
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_1

    .line 1596
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    move v1, p2

    move v2, p1

    move v3, p4

    move v4, p3

    move v5, p6

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/wearable/view/BackgroundController;->onPageScrolled(IIFFII)V

    .line 1599
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v3, 0x0

    .line 1210
    instance-of v1, p1, Landroid/support/wearable/view/GridViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1211
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1225
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1214
    check-cast v0, Landroid/support/wearable/view/GridViewPager$SavedState;

    .line 1215
    .local v0, "ss":Landroid/support/wearable/view/GridViewPager$SavedState;
    invoke-virtual {v0}, Landroid/support/wearable/view/GridViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1216
    iget v1, v0, Landroid/support/wearable/view/GridViewPager$SavedState;->currentX:I

    iget v2, v0, Landroid/support/wearable/view/GridViewPager$SavedState;->currentY:I

    invoke-direct {p0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->pointInRange(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1219
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/support/wearable/view/GridViewPager$SavedState;->currentX:I

    iget v3, v0, Landroid/support/wearable/view/GridViewPager$SavedState;->currentY:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredCurItem:Landroid/graphics/Point;

    goto :goto_0

    .line 1221
    :cond_1
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 1222
    invoke-virtual {p0, v3, v3}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1200
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1201
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/wearable/view/GridViewPager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1202
    .local v0, "state":Landroid/support/wearable/view/GridViewPager$SavedState;
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/support/wearable/view/GridViewPager$SavedState;->currentX:I

    .line 1203
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/support/wearable/view/GridViewPager$SavedState;->currentY:I

    .line 1205
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1379
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1383
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1384
    iget v5, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    iget v6, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    iget v7, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    iget v8, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/support/wearable/view/GridViewPager;->recomputeScrollPosition(IIIIIIII)V

    .line 1387
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1676
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-nez v1, :cond_0

    .line 1677
    const/4 v1, 0x0

    .line 1697
    :goto_0
    return v1

    .line 1679
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1680
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 1695
    :pswitch_0
    const-string v1, "GridViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1682
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->handlePointerDown(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1685
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->handlePointerMove(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1689
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->handlePointerUp(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1692
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1680
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method pageBackgroundChanged(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 909
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p1, p2}, Landroid/support/wearable/view/BackgroundController;->onPageBackgroundChanged(II)V

    .line 912
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1292
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->infoForChild(Landroid/view/View;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    .line 1297
    .local v0, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    iget-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mInLayout:Z

    if-eqz v1, :cond_0

    .line 1298
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/GridViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1302
    :goto_0
    return-void

    .line 1300
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestFitSystemWindows()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method rowBackgroundChanged(I)V
    .locals 1
    .param p1, "row"    # I

    .prologue
    .line 903
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/BackgroundController;->onRowBackgroundChanged(I)V

    .line 906
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 511
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result p1

    .line 517
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 518
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->scrollCurrentRowTo(I)V

    .line 519
    return-void
.end method

.method public setAdapter(Landroid/support/wearable/view/GridPagerAdapter;)V
    .locals 11
    .param p1, "adapter"    # Landroid/support/wearable/view/GridPagerAdapter;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 371
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v4, :cond_1

    .line 376
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v5, p0, Landroid/support/wearable/view/GridViewPager;->mObserver:Landroid/support/wearable/view/GridViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Landroid/support/wearable/view/GridPagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 377
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v4, v9}, Landroid/support/wearable/view/GridPagerAdapter;->setOnBackgroundChangeListener(Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;)V

    .line 378
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/wearable/view/GridPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 380
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 385
    .local v1, "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v5, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    iget v6, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget-object v7, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/support/wearable/view/GridPagerAdapter;->destroyItem(Landroid/view/ViewGroup;IILjava/lang/Object;)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "ii":Landroid/support/wearable/view/GridViewPager$ItemInfo;
    :cond_0
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/wearable/view/GridPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 391
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 392
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->removeAllViews()V

    .line 393
    invoke-virtual {p0, v8, v8}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 394
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mRowScrollX:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 396
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 397
    .local v2, "oldAdapter":Landroid/support/wearable/view/GridPagerAdapter;
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v4, v8, v8}, Landroid/graphics/Point;->set(II)V

    .line 398
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 402
    iput v8, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    .line 403
    iput v8, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    .line 404
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v4, :cond_7

    .line 405
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mObserver:Landroid/support/wearable/view/GridViewPager$PagerObserver;

    if-nez v4, :cond_2

    .line 406
    new-instance v4, Landroid/support/wearable/view/GridViewPager$PagerObserver;

    invoke-direct {v4, p0, v9}, Landroid/support/wearable/view/GridViewPager$PagerObserver;-><init>(Landroid/support/wearable/view/GridViewPager;Landroid/support/wearable/view/GridViewPager$1;)V

    iput-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mObserver:Landroid/support/wearable/view/GridViewPager$PagerObserver;

    .line 411
    :cond_2
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v5, p0, Landroid/support/wearable/view/GridViewPager;->mObserver:Landroid/support/wearable/view/GridViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Landroid/support/wearable/view/GridPagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 412
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v5, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v4, v5}, Landroid/support/wearable/view/GridPagerAdapter;->setOnBackgroundChangeListener(Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;)V

    .line 413
    iput-boolean v8, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 414
    iget-boolean v3, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    .line 415
    .local v3, "wasFirstLayout":Z
    iput-boolean v10, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    .line 419
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v4}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    .line 423
    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    if-lez v4, :cond_3

    .line 424
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v4, v8, v8}, Landroid/graphics/Point;->set(II)V

    .line 425
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v5, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    .line 434
    :cond_3
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredCurItem:Landroid/graphics/Point;

    if-eqz v4, :cond_5

    .line 439
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v5, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Landroid/support/wearable/view/GridPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 440
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredCurItem:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredCurItem:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v4, v5, v8, v10}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZ)V

    .line 441
    iput-object v9, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredCurItem:Landroid/graphics/Point;

    .line 442
    iput-object v9, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 443
    iput-object v9, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 454
    .end local v3    # "wasFirstLayout":Z
    :cond_4
    :goto_1
    if-eq v2, p1, :cond_9

    .line 455
    if-nez p1, :cond_8

    .line 457
    iput-boolean v8, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    .line 458
    invoke-direct {p0, v2, p1}, Landroid/support/wearable/view/GridViewPager;->adapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 459
    iput-object v9, p0, Landroid/support/wearable/view/GridViewPager;->mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 468
    :goto_2
    return-void

    .line 444
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    .line 445
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    goto :goto_1

    .line 447
    :cond_6
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->requestLayout()V

    goto :goto_1

    .line 449
    .end local v3    # "wasFirstLayout":Z
    :cond_7
    iget-boolean v4, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_4

    .line 451
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->cancelDrag()V

    goto :goto_1

    .line 461
    :cond_8
    iput-boolean v10, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    .line 462
    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    goto :goto_2

    .line 465
    :cond_9
    iput-boolean v8, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    .line 466
    iput-object v9, p0, Landroid/support/wearable/view/GridViewPager;->mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    goto :goto_2
.end method

.method public setBackgroundStepSizePct(F)V
    .locals 1
    .param p1, "stepSizePct"    # F

    .prologue
    .line 2409
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/BackgroundController;->setBackgroundStepSizePct(F)V

    .line 2410
    return-void
.end method

.method public setCurrentItem(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    const/4 v1, 0x0

    .line 594
    iput-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 595
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZ)V

    .line 596
    return-void

    :cond_0
    move v0, v1

    .line 595
    goto :goto_0
.end method

.method public setCurrentItem(IIZ)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 611
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZ)V

    .line 612
    return-void
.end method

.method setCurrentItemInternal(IIZZ)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "smoothScroll"    # Z
    .param p4, "always"    # Z

    .prologue
    .line 623
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZI)V

    .line 624
    return-void
.end method

.method setCurrentItemInternal(IIZZI)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "smoothScroll"    # Z
    .param p4, "always"    # Z
    .param p5, "velocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 632
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    if-nez p4, :cond_2

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 640
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v1, v0}, Landroid/support/wearable/view/GridViewPager;->limit(III)I

    move-result p1

    .line 641
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v1, v0}, Landroid/support/wearable/view/GridViewPager;->limit(III)I

    move-result p2

    .line 646
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-eq p2, v0, :cond_5

    .line 647
    iput v1, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    .line 648
    const/4 v5, 0x1

    .line 655
    .local v5, "dispatchSelected":Z
    :goto_1
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_7

    .line 659
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 660
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/wearable/view/GridPagerAdapter;->setCurrentColumnForRow(II)V

    .line 666
    if-eqz v5, :cond_4

    .line 667
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 668
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageSelected(II)V

    .line 670
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_4

    .line 671
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p1, p2}, Landroid/support/wearable/view/BackgroundController;->onPageSelected(II)V

    .line 674
    :cond_4
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->requestLayout()V

    goto :goto_0

    .line 649
    .end local v5    # "dispatchSelected":Z
    :cond_5
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq p1, v0, :cond_6

    .line 650
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    .line 651
    const/4 v5, 0x1

    .restart local v5    # "dispatchSelected":Z
    goto :goto_1

    .line 653
    .end local v5    # "dispatchSelected":Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "dispatchSelected":Z
    goto :goto_1

    .line 676
    :cond_7
    invoke-direct {p0, p2, p1}, Landroid/support/wearable/view/GridViewPager;->populate(II)V

    move-object v0, p0

    move v1, p2

    move v2, p1

    move v3, p3

    move v4, p5

    .line 677
    invoke-direct/range {v0 .. v5}, Landroid/support/wearable/view/GridViewPager;->scrollToItem(IIZIZ)V

    goto :goto_0
.end method

.method public setOffscreenPageCount(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 744
    if-ge p1, v3, :cond_0

    .line 745
    const-string v0, "GridViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 p1, 0x1

    .line 749
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mOffscreenPageCount:I

    if-eq p1, v0, :cond_1

    .line 750
    iput p1, p0, Landroid/support/wearable/view/GridViewPager;->mOffscreenPageCount:I

    .line 751
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    .line 753
    :cond_1
    return-void
.end method

.method public setOnAdapterChangeListener(Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    .prologue
    .line 491
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    .line 492
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-interface {p1, v0, v1}, Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 495
    :cond_0
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnApplyWindowInsetsListener;

    .prologue
    .line 330
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 331
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    .prologue
    .line 481
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    .line 482
    return-void
.end method

.method public setPageMargins(II)V
    .locals 9
    .param p1, "rowMarginPx"    # I
    .param p2, "columnMarginPx"    # I

    .prologue
    .line 762
    iget v8, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    .line 763
    .local v8, "oldRowMargin":I
    iput p1, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    .line 764
    iget v6, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    .line 765
    .local v6, "oldColMargin":I
    iput p2, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    .line 766
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getWidth()I

    move-result v1

    .line 767
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getHeight()I

    move-result v3

    .line 768
    .local v3, "height":I
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    iget v5, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    iget v7, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    move-object v0, p0

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v8}, Landroid/support/wearable/view/GridViewPager;->recomputeScrollPosition(IIIIIIII)V

    .line 772
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->requestLayout()V

    .line 774
    :cond_0
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/wearable/view/GridViewPager;->smoothScrollTo(III)V

    .line 802
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    const/4 v6, 0x0

    .line 812
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v1

    .line 817
    .local v1, "sx":I
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v2

    .line 818
    .local v2, "sy":I
    sub-int v3, p1, v1

    .line 819
    .local v3, "dx":I
    sub-int v4, p2, v2

    .line 820
    .local v4, "dy":I
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 821
    invoke-direct {p0, v6}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    .line 822
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    .line 823
    invoke-direct {p0, v6}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    goto :goto_0

    .line 826
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    .line 827
    const/16 v5, 0x12c

    .line 835
    .local v5, "duration":I
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 836
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method
