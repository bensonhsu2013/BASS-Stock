.class public Landroid/support/wearable/view/DotsPageIndicator;
.super Landroid/view/View;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;
.implements Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# instance fields
.field private mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

.field private mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

.field private mColumnCount:I

.field private mCurrentState:I

.field private mDotColor:I

.field private mDotColorSelected:I

.field private mDotFadeInDuration:I

.field private mDotFadeOutDelay:I

.field private mDotFadeOutDuration:I

.field private mDotFadeWhenIdle:Z

.field private final mDotPaint:Landroid/graphics/Paint;

.field private final mDotPaintSelected:Landroid/graphics/Paint;

.field private final mDotPaintShadow:Landroid/graphics/Paint;

.field private final mDotPaintShadowSelected:Landroid/graphics/Paint;

.field private mDotRadius:F

.field private mDotRadiusSelected:F

.field private mDotShadowColor:I

.field private mDotShadowDx:F

.field private mDotShadowDy:F

.field private mDotShadowRadius:F

.field private mDotSpacing:I

.field private mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

.field private mPager:Landroid/support/wearable/view/GridViewPager;

.field private mSelectedColumn:I

.field private mSelectedRow:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/wearable/R$styleable;->DotsPageIndicator:[I

    sget v3, Landroid/support/wearable/R$style;->DotsPageIndicatorStyle:I

    invoke-virtual {v1, p2, v2, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotSpacing:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    .line 85
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotRadius:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    .line 86
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotRadiusSelected:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    .line 87
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    .line 88
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotColorSelected:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    .line 89
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotFadeOutDelay:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDelay:I

    .line 90
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotFadeOutDuration:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    .line 91
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotFadeInDuration:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeInDuration:I

    .line 92
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotFadeWhenIdle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    .line 93
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotShadowDx:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDx:F

    .line 94
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotShadowDy:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    .line 95
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotShadowRadius:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    .line 96
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotShadowColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowColor:I

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintSelected:Landroid/graphics/Paint;

    .line 104
    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintSelected:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintSelected:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadow:Landroid/graphics/Paint;

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadowSelected:Landroid/graphics/Paint;

    .line 109
    iput v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mCurrentState:I

    .line 110
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, 0x5

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    .line 114
    const/4 v1, 0x2

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    .line 115
    iput-boolean v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    .line 118
    :cond_0
    iget-boolean v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    if-eqz v1, :cond_1

    .line 119
    iput-boolean v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    .line 120
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 125
    :cond_1
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->updateShadows()V

    .line 126
    return-void
.end method

.method static synthetic access$002(Landroid/support/wearable/view/DotsPageIndicator;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/DotsPageIndicator;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/wearable/view/DotsPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/DotsPageIndicator;

    .prologue
    .line 34
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/wearable/view/DotsPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/DotsPageIndicator;

    .prologue
    .line 34
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDelay:I

    return v0
.end method

.method private columnChanged(I)V
    .locals 0
    .param p1, "column"    # I

    .prologue
    .line 470
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    .line 471
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 472
    return-void
.end method

.method private fadeIn()V
    .locals 4

    .prologue
    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    .line 489
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 490
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeInDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 494
    return-void
.end method

.method private fadeInOut()V
    .locals 4

    .prologue
    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    .line 507
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 508
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeInDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/wearable/view/DotsPageIndicator$1;

    invoke-direct {v1, p0}, Landroid/support/wearable/view/DotsPageIndicator$1;-><init>(Landroid/support/wearable/view/DotsPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 524
    return-void
.end method

.method private fadeOut()V
    .locals 4

    .prologue
    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    .line 498
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 499
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 503
    return-void
.end method

.method private rowChanged(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 475
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedRow:I

    .line 476
    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v0

    .line 477
    .local v0, "count":I
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    if-eq v0, v1, :cond_1

    .line 478
    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    .line 479
    iput p2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    .line 480
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->requestLayout()V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    if-eq p2, v1, :cond_0

    .line 482
    iput p2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    .line 483
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    goto :goto_0
.end method

.method private updateDotPaint(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V
    .locals 9
    .param p1, "dotPaint"    # Landroid/graphics/Paint;
    .param p2, "shadowPaint"    # Landroid/graphics/Paint;
    .param p3, "baseRadius"    # F
    .param p4, "shadowRadius"    # F
    .param p5, "color"    # I
    .param p6, "shadowColor"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    add-float v3, p3, p4

    .line 138
    .local v3, "radius":F
    div-float v7, p3, v3

    .line 139
    .local v7, "shadowStart":F
    new-instance v0, Landroid/graphics/RadialGradient;

    new-array v4, v5, [I

    aput p6, v4, v2

    aput p6, v4, v6

    aput v2, v4, v8

    new-array v5, v5, [F

    aput v1, v5, v2

    aput v7, v5, v6

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v5, v8

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 153
    .local v0, "gradient":Landroid/graphics/Shader;
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    return-void
.end method

.method private updateShadows()V
    .locals 7

    .prologue
    .line 129
    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadow:Landroid/graphics/Paint;

    iget v3, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    iget v6, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowColor:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/DotsPageIndicator;->updateDotPaint(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    .line 131
    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintSelected:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadowSelected:Landroid/graphics/Paint;

    iget v3, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    iget v6, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowColor:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/DotsPageIndicator;->updateDotPaint(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    .line 133
    return-void
.end method


# virtual methods
.method public getDotColor()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    return v0
.end method

.method public getDotColorSelected()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    return v0
.end method

.method public getDotFadeInDuration()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeInDuration:I

    return v0
.end method

.method public getDotFadeOutDelay()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDelay:I

    return v0
.end method

.method public getDotFadeOutDuration()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    return v0
.end method

.method public getDotFadeWhenIdle()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    return v0
.end method

.method public getDotRadius()F
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    return v0
.end method

.method public getDotRadiusSelected()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    return v0
.end method

.method public getDotShadowColor()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowColor:I

    return v0
.end method

.method public getDotShadowDx()F
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDx:F

    return v0
.end method

.method public getDotShadowDy()F
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    return v0
.end method

.method public getDotShadowRadius()F
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    return v0
.end method

.method public getDotSpacing()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    int-to-float v0, v0

    return v0
.end method

.method public onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V
    .locals 2
    .param p1, "oldAdapter"    # Landroid/support/wearable/view/GridPagerAdapter;
    .param p2, "newAdapter"    # Landroid/support/wearable/view/GridPagerAdapter;

    .prologue
    const/4 v1, 0x0

    .line 579
    iput-object p2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 580
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, v1, v1}, Landroid/support/wearable/view/DotsPageIndicator;->rowChanged(II)V

    .line 582
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->fadeInOut()V

    .line 584
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 587
    :cond_1
    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 640
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 641
    invoke-direct {p0, v1, v1}, Landroid/support/wearable/view/DotsPageIndicator;->rowChanged(II)V

    .line 643
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    invoke-interface {v0}, Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;->onDataSetChanged()V

    .line 646
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 616
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 617
    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 618
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 619
    .local v0, "dotCenterLeft":F
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v6

    .line 620
    .local v1, "dotCenterTop":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 621
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 622
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    if-ge v2, v4, :cond_1

    .line 623
    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    if-ne v2, v4, :cond_0

    .line 624
    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    add-float v3, v4, v5

    .line 625
    .local v3, "radius":F
    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDx:F

    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    iget-object v6, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadowSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 626
    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    iget-object v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 632
    :goto_1
    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    int-to-float v4, v4

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 628
    .end local v3    # "radius":F
    :cond_0
    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    add-float v3, v4, v5

    .line 629
    .restart local v3    # "radius":F
    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDx:F

    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    iget-object v6, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 630
    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    iget-object v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 634
    .end local v3    # "radius":F
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 636
    .end local v0    # "dotCenterLeft":F
    .end local v1    # "dotCenterTop":F
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 592
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 593
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 599
    .local v4, "totalWidth":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 600
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 609
    .local v3, "totalHeight":I
    :goto_1
    invoke-static {v4, p1, v8}, Landroid/support/wearable/view/DotsPageIndicator;->resolveSizeAndState(III)I

    move-result v5

    invoke-static {v3, p2, v8}, Landroid/support/wearable/view/DotsPageIndicator;->resolveSizeAndState(III)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/support/wearable/view/DotsPageIndicator;->setMeasuredDimension(II)V

    .line 612
    return-void

    .line 595
    .end local v3    # "totalHeight":I
    .end local v4    # "totalWidth":I
    :cond_0
    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    iget v6, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    mul-int v1, v5, v6

    .line 596
    .local v1, "contentWidth":I
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getPaddingRight()I

    move-result v6

    add-int v4, v5, v6

    .restart local v4    # "totalWidth":I
    goto :goto_0

    .line 602
    .end local v1    # "contentWidth":I
    :cond_1
    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    iget v6, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    iget v7, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 605
    .local v2, "maxRadius":F
    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v2

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 606
    .local v0, "contentHeight":I
    int-to-float v5, v0

    iget v6, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 607
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getPaddingBottom()I

    move-result v6

    add-int v3, v5, v6

    .restart local v3    # "totalHeight":I
    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 528
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mCurrentState:I

    if-eq v0, p1, :cond_0

    .line 529
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mCurrentState:I

    .line 530
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 532
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    if-eqz v0, :cond_2

    .line 533
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->fadeOut()V

    .line 540
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 543
    :cond_1
    return-void

    .line 535
    :cond_2
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->fadeInOut()V

    goto :goto_0
.end method

.method public onPageScrolled(IIFFII)V
    .locals 7
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "rowOffset"    # F
    .param p4, "columnOffset"    # F
    .param p5, "rowOffsetPixels"    # I
    .param p6, "columnOffsetPixels"    # I

    .prologue
    .line 548
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    if-eqz v0, :cond_0

    .line 549
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_2

    .line 550
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    if-nez v0, :cond_0

    .line 551
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->fadeIn()V

    .line 559
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageScrolled(IIFFII)V

    .line 563
    :cond_1
    return-void

    .line 553
    :cond_2
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 554
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    if-eqz v0, :cond_0

    .line 555
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->fadeOut()V

    goto :goto_0
.end method

.method public onPageSelected(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 567
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedRow:I

    if-eq p1, v0, :cond_2

    .line 568
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/DotsPageIndicator;->rowChanged(II)V

    .line 572
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageSelected(II)V

    .line 575
    :cond_1
    return-void

    .line 569
    :cond_2
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    if-eq p2, v0, :cond_0

    .line 570
    invoke-direct {p0, p2}, Landroid/support/wearable/view/DotsPageIndicator;->columnChanged(I)V

    goto :goto_0
.end method

.method public setDotColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 285
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    if-eq v0, p1, :cond_0

    .line 286
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    .line 287
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 289
    :cond_0
    return-void
.end method

.method public setDotColorSelected(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 306
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    if-eq v0, p1, :cond_0

    .line 307
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    .line 308
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 310
    :cond_0
    return-void
.end method

.method public setDotFadeInDuration(ILjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "duration"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 366
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeInDuration:I

    .line 367
    return-void
.end method

.method public setDotFadeOutDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .prologue
    .line 386
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDelay:I

    .line 387
    return-void
.end method

.method public setDotFadeOutDuration(ILjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "duration"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 348
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    .line 349
    return-void
.end method

.method public setDotFadeWhenIdle(Z)V
    .locals 1
    .param p1, "fade"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    .line 328
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->fadeIn()V

    .line 331
    :cond_0
    return-void
.end method

.method public setDotRadius(I)V
    .locals 2
    .param p1, "radius"    # I

    .prologue
    .line 241
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 242
    int-to-float v0, p1

    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    .line 243
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->updateShadows()V

    .line 244
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 246
    :cond_0
    return-void
.end method

.method public setDotRadiusSelected(I)V
    .locals 2
    .param p1, "radius"    # I

    .prologue
    .line 263
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 264
    int-to-float v0, p1

    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    .line 265
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->updateShadows()V

    .line 266
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 268
    :cond_0
    return-void
.end method

.method public setDotShadowColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 464
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowColor:I

    .line 465
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->updateShadows()V

    .line 466
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 467
    return-void
.end method

.method public setDotShadowDx(F)V
    .locals 0
    .param p1, "dx"    # F

    .prologue
    .line 426
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDx:F

    .line 427
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 428
    return-void
.end method

.method public setDotShadowDy(F)V
    .locals 0
    .param p1, "dy"    # F

    .prologue
    .line 445
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    .line 446
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 447
    return-void
.end method

.method public setDotShadowRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 404
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 405
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    .line 406
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->updateShadows()V

    .line 407
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 409
    :cond_0
    return-void
.end method

.method public setDotSpacing(I)V
    .locals 1
    .param p1, "spacing"    # I

    .prologue
    .line 220
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    if-eq v0, p1, :cond_0

    .line 221
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    .line 222
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->requestLayout()V

    .line 224
    :cond_0
    return-void
.end method

.method public setOnAdapterChangeListener(Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    .prologue
    .line 202
    iput-object p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    .line 203
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    .prologue
    .line 191
    iput-object p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    .line 192
    return-void
.end method

.method public setPager(Landroid/support/wearable/view/GridViewPager;)V
    .locals 3
    .param p1, "pager"    # Landroid/support/wearable/view/GridViewPager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    if-eq v0, p1, :cond_1

    .line 166
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/GridViewPager;->setOnPageChangeListener(Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;)V

    .line 168
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/GridViewPager;->setOnAdapterChangeListener(Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;)V

    .line 169
    iput-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    .line 171
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    .line 172
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/GridViewPager;->setOnPageChangeListener(Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;)V

    .line 174
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/GridViewPager;->setOnAdapterChangeListener(Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;)V

    .line 175
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridViewPager;->getAdapter()Landroid/support/wearable/view/GridPagerAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 178
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 179
    invoke-direct {p0, v2, v2}, Landroid/support/wearable/view/DotsPageIndicator;->rowChanged(II)V

    .line 181
    :cond_2
    return-void
.end method
