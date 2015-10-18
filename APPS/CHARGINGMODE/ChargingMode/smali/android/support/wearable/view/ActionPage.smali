.class public Landroid/support/wearable/view/ActionPage;
.super Landroid/view/ViewGroup;
.source "ActionPage.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CIRCLE_SIZE_RATIO:F = 0.45f

.field private static final CIRCLE_VERT_POSITION_SQUARE:F = 0.43f

.field private static final DEBUG:Z = false

.field private static final LABEL_BOTTOM_MARGIN_RATIO_ROUND:F = 0.09375f

.field private static final LABEL_WIDTH_RATIO:F = 0.892f

.field private static final LABEL_WIDTH_RATIO_ROUND:F = 0.625f

.field public static SCALE_MODE_CENTER:I = 0x0

.field public static SCALE_MODE_FIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActionPage"


# instance fields
.field private mBottomInset:I

.field private final mButtonCenter:Landroid/graphics/Point;

.field private mButtonRadius:F

.field private mButtonSize:I

.field private final mCircularButton:Landroid/support/wearable/view/CircularButton;

.field private mIsRound:Z

.field private final mLabel:Landroid/support/wearable/view/ActionLabel;

.field private mTextHeight:I

.field private mTextWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    sput v0, Landroid/support/wearable/view/ActionPage;->SCALE_MODE_CENTER:I

    .line 42
    const/4 v0, 0x0

    sput v0, Landroid/support/wearable/view/ActionPage;->SCALE_MODE_FIT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    sget v0, Landroid/support/wearable/R$style;->Widget_ActionPage:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    .line 72
    new-instance v8, Landroid/support/wearable/view/CircularButton;

    invoke-direct {v8, p1}, Landroid/support/wearable/view/CircularButton;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    .line 74
    new-instance v8, Landroid/support/wearable/view/ActionLabel;

    invoke-direct {v8, p1}, Landroid/support/wearable/view/ActionLabel;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    .line 75
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/ActionLabel;->setGravity(I)V

    .line 76
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/ActionLabel;->setMaxLines(I)V

    .line 78
    const/high16 v5, 0x3f800000    # 1.0f

    .line 79
    .local v5, "lineSpacingMult":F
    const/4 v4, 0x0

    .line 80
    .local v4, "lineSpacingExtra":F
    const/4 v2, 0x0

    .line 81
    .local v2, "fontFamily":Ljava/lang/String;
    const/4 v7, 0x1

    .line 82
    .local v7, "typefaceIndex":I
    const/4 v6, 0x0

    .line 84
    .local v6, "styleIndex":I
    sget-object v8, Landroid/support/wearable/R$styleable;->ActionPage:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    if-ge v3, v8, :cond_11

    .line 87
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 88
    .local v1, "attr":I
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_color:I

    if-ne v1, v8, :cond_1

    .line 89
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/CircularButton;->setColor(Landroid/content/res/ColorStateList;)V

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_1
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_src:I

    if-ne v1, v8, :cond_2

    .line 91
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/CircularButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 92
    :cond_2
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_imageScaleMode:I

    if-ne v1, v8, :cond_3

    .line 93
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/CircularButton;->setImageScaleMode(I)V

    goto :goto_1

    .line 94
    :cond_3
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_rippleColor:I

    if-ne v1, v8, :cond_4

    .line 95
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    const/4 v9, -0x1

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/CircularButton;->setRippleColor(I)V

    goto :goto_1

    .line 96
    :cond_4
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_pressedTranslationZ:I

    if-ne v1, v8, :cond_5

    .line 97
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/CircularButton;->setPressedTranslationZ(F)V

    goto :goto_1

    .line 98
    :cond_5
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_text:I

    if-ne v1, v8, :cond_6

    .line 99
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/ActionLabel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 100
    :cond_6
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_minTextSize:I

    if-ne v1, v8, :cond_7

    .line 101
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/4 v9, 0x0

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/support/wearable/view/ActionLabel;->setMinTextSize(IF)V

    goto :goto_1

    .line 103
    :cond_7
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_maxTextSize:I

    if-ne v1, v8, :cond_8

    .line 104
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/4 v9, 0x0

    const/high16 v10, 0x42700000    # 60.0f

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/support/wearable/view/ActionLabel;->setMaxTextSize(IF)V

    goto :goto_1

    .line 106
    :cond_8
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_textColor:I

    if-ne v1, v8, :cond_9

    .line 107
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/ActionLabel;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 108
    :cond_9
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_maxLines:I

    if-ne v1, v8, :cond_a

    .line 109
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/4 v9, 0x2

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/ActionLabel;->setMaxLines(I)V

    goto/16 :goto_1

    .line 110
    :cond_a
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_fontFamily:I

    if-ne v1, v8, :cond_b

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 112
    :cond_b
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_typeface:I

    if-ne v1, v8, :cond_c

    .line 113
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    goto/16 :goto_1

    .line 114
    :cond_c
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_textStyle:I

    if-ne v1, v8, :cond_d

    .line 115
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    goto/16 :goto_1

    .line 116
    :cond_d
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_gravity:I

    if-ne v1, v8, :cond_e

    .line 117
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/16 v9, 0x11

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/ActionLabel;->setGravity(I)V

    goto/16 :goto_1

    .line 118
    :cond_e
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_lineSpacingExtra:I

    if-ne v1, v8, :cond_f

    .line 119
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto/16 :goto_1

    .line 120
    :cond_f
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_lineSpacingMultiplier:I

    if-ne v1, v8, :cond_10

    .line 121
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    goto/16 :goto_1

    .line 122
    :cond_10
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_stateListAnimator:I

    if-ne v1, v8, :cond_0

    .line 123
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-static {p1, v9}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/wearable/view/CircularButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/16 :goto_1

    .line 127
    .end local v1    # "attr":I
    :cond_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v8, v4, v5}, Landroid/support/wearable/view/ActionLabel;->setLineSpacing(FF)V

    .line 129
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v8, v2, v7, v6}, Landroid/support/wearable/view/ActionLabel;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 130
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/ActionPage;->addView(Landroid/view/View;)V

    .line 131
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/ActionPage;->addView(Landroid/view/View;)V

    .line 132
    return-void
.end method


# virtual methods
.method public getButton()Landroid/support/wearable/view/CircularButton;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    return-object v0
.end method

.method public getLabel()Landroid/support/wearable/view/ActionLabel;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 261
    iget-boolean v1, p0, Landroid/support/wearable/view/ActionPage;->mIsRound:Z

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/wearable/view/ActionPage;->mIsRound:Z

    .line 263
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestLayout()V

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 266
    .local v0, "insetBottom":I
    iget v1, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    if-eq v1, v0, :cond_1

    .line 267
    iput v0, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    .line 268
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestLayout()V

    .line 270
    :cond_1
    iget-boolean v1, p0, Landroid/support/wearable/view/ActionPage;->mIsRound:Z

    if-eqz v1, :cond_2

    .line 272
    iget v1, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    int-to-float v1, v1

    const/high16 v2, 0x3dc00000    # 0.09375f

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    .line 275
    :cond_2
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 280
    sub-int v1, p4, p2

    .line 281
    .local v1, "w":I
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    iget-object v3, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/wearable/view/CircularButton;->layout(IIII)V

    .line 287
    iget v2, p0, Landroid/support/wearable/view/ActionPage;->mTextWidth:I

    sub-int v2, v1, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 288
    .local v0, "textHorizPadding":I
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    iget-object v3, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v3}, Landroid/support/wearable/view/CircularButton;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/ActionPage;->mTextWidth:I

    add-int/2addr v4, v0

    iget-object v5, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v5}, Landroid/support/wearable/view/CircularButton;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/support/wearable/view/ActionPage;->mTextHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/support/wearable/view/ActionLabel;->layout(IIII)V

    .line 292
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 228
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 229
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredHeight()I

    move-result v0

    .line 230
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredWidth()I

    move-result v1

    .line 231
    .local v1, "width":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonSize:I

    .line 232
    iget v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    .line 233
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    iget v3, p0, Landroid/support/wearable/view/ActionPage;->mButtonSize:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/ActionPage;->mButtonSize:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/wearable/view/CircularButton;->measure(II)V

    .line 236
    iget-boolean v2, p0, Landroid/support/wearable/view/ActionPage;->mIsRound:Z

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 240
    int-to-float v2, v1

    const/high16 v3, 0x3f200000    # 0.625f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/ActionPage;->mTextWidth:I

    .line 241
    int-to-float v2, v0

    const/high16 v3, 0x3dc00000    # 0.09375f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    .line 248
    :goto_0
    int-to-float v2, v0

    iget-object v3, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/ActionPage;->mTextHeight:I

    .line 250
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    iget v3, p0, Landroid/support/wearable/view/ActionPage;->mTextWidth:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/ActionPage;->mTextHeight:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/wearable/view/ActionLabel;->measure(II)V

    .line 257
    return-void

    .line 244
    :cond_0
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    div-int/lit8 v3, v1, 0x2

    int-to-float v4, v0

    const v5, 0x3edc28f6    # 0.43f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 246
    int-to-float v2, v1

    const v3, 0x3f645a1d    # 0.892f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/ActionPage;->mTextWidth:I

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setColor(I)V

    .line 160
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setColor(Landroid/content/res/ColorStateList;)V

    .line 167
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "drawableRes"    # I

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setImageResource(I)V

    .line 182
    return-void
.end method

.method public setImageScaleMode(I)V
    .locals 1
    .param p1, "scaleMode"    # I

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setImageScaleMode(I)V

    .line 197
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method public setStateListAnimator(Landroid/animation/StateListAnimator;)V
    .locals 1
    .param p1, "stateListAnimator"    # Landroid/animation/StateListAnimator;

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 212
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/ActionLabel;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method
