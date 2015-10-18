.class public Landroid/support/wearable/view/CircularButton;
.super Landroid/view/View;
.source "CircularButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/CircularButton$1;,
        Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;
    }
.end annotation


# static fields
.field public static final SCALE_MODE_CENTER:I = 0x1

.field public static final SCALE_MODE_FIT:I


# instance fields
.field private mColors:Landroid/content/res/ColorStateList;

.field private mDiameter:I

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mRippleColor:I

.field private mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field private mScaleMode:I

.field private mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/CircularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/CircularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/CircularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    iput v5, p0, Landroid/support/wearable/view/CircularButton;->mRippleColor:I

    .line 71
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v3, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 72
    iget-object v3, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v3, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-super {p0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    new-instance v3, Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;-><init>(Landroid/support/wearable/view/CircularButton;Landroid/support/wearable/view/CircularButton$1;)V

    invoke-virtual {p0, v3}, Landroid/support/wearable/view/CircularButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 75
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v3, p0, Landroid/support/wearable/view/CircularButton;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    iput v6, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    .line 78
    sget-object v3, Landroid/support/wearable/R$styleable;->CircularButton:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 81
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 82
    .local v1, "attr":I
    sget v3, Landroid/support/wearable/R$styleable;->CircularButton_android_color:I

    if-ne v1, v3, :cond_1

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    .line 84
    iget-object v3, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    sget v3, Landroid/support/wearable/R$styleable;->CircularButton_android_src:I

    if-ne v1, v3, :cond_2

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 87
    :cond_2
    sget v3, Landroid/support/wearable/R$styleable;->CircularButton_rippleColor:I

    if-ne v1, v3, :cond_3

    .line 88
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/wearable/view/CircularButton;->setRippleColor(I)V

    goto :goto_1

    .line 89
    :cond_3
    sget v3, Landroid/support/wearable/R$styleable;->CircularButton_pressedTranslationZ:I

    if-ne v1, v3, :cond_4

    .line 90
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/wearable/view/CircularButton;->setPressedTranslationZ(F)V

    goto :goto_1

    .line 91
    :cond_4
    sget v3, Landroid/support/wearable/R$styleable;->CircularButton_imageScaleMode:I

    if-ne v1, v3, :cond_0

    .line 92
    iget v3, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    goto :goto_1

    .line 95
    .end local v1    # "attr":I
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-virtual {p0, v6}, Landroid/support/wearable/view/CircularButton;->setClickable(Z)V

    .line 97
    return-void
.end method

.method private static hasIntrinsicSize(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inscribedSize(I)I
    .locals 2
    .param p0, "r"    # I

    .prologue
    .line 38
    mul-int v0, p0, p0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    return-object p1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 186
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 191
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 247
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 250
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 196
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    .line 198
    iget v0, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    iget v1, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    invoke-virtual {p0, v0, v1}, Landroid/support/wearable/view/CircularButton;->setMeasuredDimension(II)V

    .line 199
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 209
    iget-object v6, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 210
    iget-object v6, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 211
    .local v4, "iw":I
    iget-object v6, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 212
    .local v2, "ih":I
    iget v6, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Landroid/support/wearable/view/CircularButton;->hasIntrinsicSize(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 213
    :cond_0
    iget v6, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    div-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Landroid/support/wearable/view/CircularButton;->inscribedSize(I)I

    move-result v3

    .line 214
    .local v3, "inscr":I
    iget v6, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    sub-int/2addr v6, v3

    div-int/lit8 v5, v6, 0x2

    .line 215
    .local v5, "vpad":I
    move v1, v5

    .line 216
    .local v1, "hpad":I
    iget-object v6, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Landroid/support/wearable/view/CircularButton;->hasIntrinsicSize(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 217
    iget-object v6, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    add-int v7, v1, v3

    add-int v8, v5, v3

    invoke-virtual {v6, v1, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    .end local v1    # "hpad":I
    .end local v2    # "ih":I
    .end local v3    # "inscr":I
    .end local v4    # "iw":I
    .end local v5    # "vpad":I
    :cond_1
    :goto_0
    return-void

    .line 219
    .restart local v1    # "hpad":I
    .restart local v2    # "ih":I
    .restart local v3    # "inscr":I
    .restart local v4    # "iw":I
    .restart local v5    # "vpad":I
    :cond_2
    if-ne v4, v2, :cond_3

    .line 220
    move v2, v3

    move v4, v3

    .line 234
    :goto_1
    iget-object v6, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    add-int v7, v1, v4

    add-int v8, v5, v2

    invoke-virtual {v6, v1, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 223
    :cond_3
    int-to-float v6, v4

    int-to-float v7, v2

    div-float v0, v6, v7

    .line 224
    .local v0, "aspect":F
    if-le v4, v2, :cond_4

    .line 225
    move v4, v3

    .line 226
    int-to-float v6, v4

    div-float/2addr v6, v0

    float-to-int v2, v6

    .line 227
    sub-int v6, v3, v2

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-int v5, v6

    goto :goto_1

    .line 229
    :cond_4
    move v2, v3

    .line 230
    int-to-float v6, v2

    mul-float/2addr v6, v0

    float-to-int v4, v6

    .line 231
    sub-int v6, v3, v4

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-int v1, v6

    goto :goto_1

    .line 237
    .end local v0    # "aspect":F
    .end local v1    # "hpad":I
    .end local v3    # "inscr":I
    .end local v5    # "vpad":I
    :cond_5
    sub-int v6, p1, v4

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-int v1, v6

    .line 238
    .restart local v1    # "hpad":I
    sub-int v6, p2, v2

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-int v5, v6

    .line 239
    .restart local v5    # "vpad":I
    iget-object v6, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    add-int v7, v1, v4

    add-int v8, v5, v2

    invoke-virtual {v6, v1, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 280
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 283
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 181
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 103
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    .line 104
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 111
    iput-object p1, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    .line 112
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 147
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 151
    :cond_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "drawableRes"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    .line 138
    return-void
.end method

.method public setImageScaleMode(I)V
    .locals 1
    .param p1, "scaleMode"    # I

    .prologue
    .line 165
    iput p1, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    .line 166
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->invalidate()V

    .line 168
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->requestLayout()V

    .line 170
    :cond_0
    return-void
.end method

.method public setPressedTranslationZ(F)V
    .locals 6
    .param p1, "translationZ"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 253
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 255
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    sget-object v1, Landroid/support/wearable/view/CircularButton;->PRESSED_ENABLED_STATE_SET:[I

    const-string v2, "translationZ"

    new-array v3, v4, [F

    aput p1, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/wearable/view/CircularButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 257
    sget-object v1, Landroid/support/wearable/view/CircularButton;->ENABLED_FOCUSED_STATE_SET:[I

    const-string v2, "translationZ"

    new-array v3, v4, [F

    aput p1, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/wearable/view/CircularButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 260
    sget-object v1, Landroid/support/wearable/view/CircularButton;->EMPTY_STATE_SET:[I

    const-string v2, "translationZ"

    new-array v3, v4, [F

    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getElevation()F

    move-result v4

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/wearable/view/CircularButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 262
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircularButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 263
    return-void
.end method

.method public setRippleColor(I)V
    .locals 4
    .param p1, "rippleColor"    # I

    .prologue
    .line 117
    iput p1, p0, Landroid/support/wearable/view/CircularButton;->mRippleColor:I

    .line 118
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 131
    :goto_0
    return-void

    .line 121
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    .line 125
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    .line 128
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
