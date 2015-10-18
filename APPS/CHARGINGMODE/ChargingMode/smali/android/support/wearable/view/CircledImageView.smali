.class public Landroid/support/wearable/view/CircledImageView;
.super Landroid/widget/FrameLayout;
.source "CircledImageView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;


# instance fields
.field private final mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mCircleBorderColor:I

.field private mCircleBorderWidth:F

.field private mCircleColor:Landroid/content/res/ColorStateList;

.field private mCircleHidden:Z

.field mCircleRadius:F

.field private mCircleRadiusPressed:F

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private mColorChangeAnimationDurationMs:J

.field private mCurrentColor:I

.field private final mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mImageView:Landroid/widget/ImageView;

.field private mIndeterminateBounds:Landroid/graphics/Rect;

.field private mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

.field private mInitialCircleRadius:F

.field private final mOval:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mProgress:F

.field private mProgressIndeterminate:Z

.field private mShadowVisibility:F

.field private final mShadowWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Landroid/support/wearable/view/CircledImageView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    .line 54
    iput-boolean v7, p0, Landroid/support/wearable/view/CircledImageView;->mCircleHidden:Z

    .line 58
    iput-boolean v7, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    .line 62
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    .line 63
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    .line 65
    new-instance v4, Landroid/support/wearable/view/CircledImageView$1;

    invoke-direct {v4, p0}, Landroid/support/wearable/view/CircledImageView$1;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    iput-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 84
    new-instance v4, Landroid/support/wearable/view/CircledImageView$2;

    invoke-direct {v4, p0}, Landroid/support/wearable/view/CircledImageView$2;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    iput-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 104
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    .line 105
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v3, "imageViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 108
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/support/wearable/view/CircledImageView;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/support/wearable/R$styleable;->CircledImageView:[I

    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Landroid/support/wearable/R$styleable;->CircledImageView_android_src:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 113
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 114
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    sget v4, Landroid/support/wearable/R$styleable;->CircledImageView_circle_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 118
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_1

    .line 119
    const/high16 v4, 0x1060000

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 122
    :cond_1
    sget v4, Landroid/support/wearable/R$styleable;->CircledImageView_circle_radius:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    .line 124
    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mInitialCircleRadius:F

    .line 125
    sget v4, Landroid/support/wearable/R$styleable;->CircledImageView_circle_radius_pressed:I

    iget v5, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 127
    sget v4, Landroid/support/wearable/R$styleable;->CircledImageView_circle_border_color:I

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    .line 129
    sget v4, Landroid/support/wearable/R$styleable;->CircledImageView_circle_border_width:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    .line 130
    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    .line 131
    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    iget v5, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    .line 132
    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    iget v5, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 134
    :cond_2
    sget v4, Landroid/support/wearable/R$styleable;->CircledImageView_circle_padding:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 135
    .local v1, "circlePadding":F
    cmpl-float v4, v1, v6

    if-lez v4, :cond_3

    .line 136
    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    sub-float/2addr v4, v1

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    .line 137
    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    sub-float/2addr v4, v1

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 139
    :cond_3
    sget v4, Landroid/support/wearable/R$styleable;->CircledImageView_shadow_width:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    .line 143
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    .line 144
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    new-instance v4, Landroid/support/wearable/view/ProgressDrawable;

    invoke-direct {v4}, Landroid/support/wearable/view/ProgressDrawable;-><init>()V

    iput-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    .line 149
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    iget-object v5, p0, Landroid/support/wearable/view/CircledImageView;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v4, v5}, Landroid/support/wearable/view/ProgressDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 151
    invoke-virtual {p0, v7}, Landroid/support/wearable/view/CircledImageView;->setWillNotDraw(Z)V

    .line 153
    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->setColorForCurrentState()V

    .line 154
    return-void
.end method

.method static synthetic access$002(Landroid/support/wearable/view/CircledImageView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/view/CircledImageView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    return p1
.end method

.method private setColorForCurrentState()V
    .locals 6

    .prologue
    .line 223
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 225
    .local v0, "newColor":I
    iget-wide v2, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 226
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 231
    :goto_0
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 233
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/support/wearable/view/CircledImageView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 234
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 235
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 241
    :goto_1
    return-void

    .line 229
    :cond_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 238
    :cond_1
    iput v0, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    .line 239
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 306
    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->setColorForCurrentState()V

    .line 307
    return-void
.end method

.method public getCircleColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCircleRadius()F
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    return v0
.end method

.method public getColorChangeAnimationDuration()J
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    return-wide v0
.end method

.method public getDefaultCircleColor()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInitialCircleRadius()F
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mInitialCircleRadius:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingLeft()I

    move-result v14

    .line 164
    .local v14, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingTop()I

    move-result v15

    .line 165
    .local v15, "paddingTop":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 166
    .local v13, "circleRadius":F
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v3, v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    mul-float/2addr v2, v3

    add-float v4, v1, v2

    .line 174
    .local v4, "radius":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 183
    .end local v4    # "radius":F
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v3, v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v5, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    add-float/2addr v6, v13

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    if-eqz v1, :cond_5

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/ProgressDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/ProgressDrawable;->setRingColor(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/ProgressDrawable;->setRingWidth(F)V

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/support/wearable/view/ProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 204
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/CircledImageView;->mCircleHidden:Z

    if-nez v1, :cond_3

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v3, v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    .line 210
    .local v11, "centerX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    .line 211
    .local v12, "centerY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v11, v1

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v12, v1

    .line 217
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 219
    .end local v11    # "centerX":F
    .end local v12    # "centerY":F
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 220
    return-void

    .line 165
    .end local v13    # "circleRadius":F
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    goto/16 :goto_0

    .line 201
    .restart local v13    # "circleRadius":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    mul-float v8, v1, v2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 177
    nop

    :array_0
    .array-data 4
        -0x1000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 246
    iget v9, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    iget v10, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v9, v10

    iget v10, p0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    iget v11, p0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 248
    .local v5, "radius":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v1, v5, v9

    .line 249
    .local v1, "desiredWidth":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v0, v5, v9

    .line 251
    .local v0, "desiredHeight":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 252
    .local v7, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 253
    .local v8, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 254
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 259
    .local v4, "heightSize":I
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v7, v9, :cond_0

    .line 260
    move v6, v8

    .line 267
    .local v6, "width":I
    :goto_0
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v3, v9, :cond_2

    .line 268
    move v2, v4

    .line 275
    .local v2, "height":I
    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-super {p0, v9, v10}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 277
    return-void

    .line 261
    .end local v2    # "height":I
    .end local v6    # "width":I
    :cond_0
    const/high16 v9, -0x80000000

    if-ne v7, v9, :cond_1

    .line 262
    int-to-float v9, v8

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v6, v9

    .restart local v6    # "width":I
    goto :goto_0

    .line 264
    .end local v6    # "width":I
    :cond_1
    float-to-int v6, v1

    .restart local v6    # "width":I
    goto :goto_0

    .line 269
    :cond_2
    const/high16 v9, -0x80000000

    if-ne v3, v9, :cond_3

    .line 270
    int-to-float v9, v4

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v2, v9

    .restart local v2    # "height":I
    goto :goto_1

    .line 272
    .end local v2    # "height":I
    :cond_3
    float-to-int v2, v0

    .restart local v2    # "height":I
    goto :goto_1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 344
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 345
    if-eqz p2, :cond_1

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->showIndeterminateProgress(Z)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->showIndeterminateProgress(Z)V

    goto :goto_0
.end method

.method public setCircleBorderColor(I)V
    .locals 0
    .param p1, "circleBorderColor"    # I

    .prologue
    .line 375
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    .line 376
    return-void
.end method

.method public setCircleBorderWidth(F)V
    .locals 0
    .param p1, "circleBorderWidth"    # F

    .prologue
    .line 383
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    .line 384
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 385
    return-void
.end method

.method public setCircleColor(I)V
    .locals 1
    .param p1, "circleColor"    # I

    .prologue
    .line 310
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->setCircleColorStateList(Landroid/content/res/ColorStateList;)V

    .line 311
    return-void
.end method

.method public setCircleColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "circleColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 314
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 315
    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->setColorForCurrentState()V

    .line 316
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 317
    return-void
.end method

.method public setCircleHidden(Z)V
    .locals 0
    .param p1, "circleHidden"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleHidden:Z

    .line 158
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 159
    return-void
.end method

.method public setCircleRadius(F)V
    .locals 0
    .param p1, "circleRadius"    # F

    .prologue
    .line 294
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    .line 295
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 296
    return-void
.end method

.method public setCircleRadiusPressed(F)V
    .locals 0
    .param p1, "circleRadiusPressed"    # F

    .prologue
    .line 299
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 300
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 301
    return-void
.end method

.method public setColorChangeAnimationDuration(J)V
    .locals 1
    .param p1, "mColorChangeAnimationDurationMs"    # J

    .prologue
    .line 411
    iput-wide p1, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    .line 412
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 282
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 287
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 390
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    .line 391
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 392
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 353
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 354
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    .line 355
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 357
    :cond_0
    return-void
.end method

.method public setShadowVisibility(F)V
    .locals 1
    .param p1, "shadowVisibility"    # F

    .prologue
    .line 364
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 365
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    .line 366
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 368
    :cond_0
    return-void
.end method

.method public showIndeterminateProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    .line 335
    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    invoke-virtual {v0}, Landroid/support/wearable/view/ProgressDrawable;->startAnimation()V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    invoke-virtual {v0}, Landroid/support/wearable/view/ProgressDrawable;->stopAnimation()V

    goto :goto_0
.end method
