.class public Landroid/support/wearable/view/ActionLabel;
.super Landroid/view/View;
.source "ActionLabel.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MAX_TEXT_SIZE:I = 0x3c

.field static final MIN_TEXT_SIZE:I = 0xa

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionLabel"


# instance fields
.field private mCurTextColor:I

.field private mCurrentTextSize:F

.field private mGravity:I

.field private mLayout:Landroid/text/Layout;

.field private mLineSpacingAdd:F

.field private mLineSpacingMult:F

.field private mMaxLines:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mOldMaxLines:I

.field private mOldMaxTextSize:F

.field private mOldMinTextSize:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/ActionLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/ActionLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/ActionLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, -0x1

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    const v6, 0x800033

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    .line 77
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    .line 78
    const/4 v6, 0x0

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    .line 83
    const v6, 0x7fffffff

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    .line 102
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    .line 103
    .local v1, "density":F
    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v6, v1

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    .line 104
    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v6, v1

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    .line 105
    new-instance v6, Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v6, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 108
    .local v4, "theme":Landroid/content/res/Resources$Theme;
    sget-object v6, Landroid/support/wearable/R$styleable;->ActionLabel:[I

    invoke-virtual {v4, p2, v6, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_android_text:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    .line 113
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_minTextSize:I

    iget v7, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    .line 114
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_maxTextSize:I

    iget v7, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    .line 115
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_android_textColor:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    .line 116
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_android_maxLines:I

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    .line 117
    iget-object v6, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_0

    .line 118
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->updateTextColors()V

    .line 120
    :cond_0
    iget-object v6, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 122
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_android_fontFamily:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "fontFamily":Ljava/lang/String;
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_android_typeface:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 124
    .local v5, "typefaceIndex":I
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_android_textStyle:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 125
    .local v3, "styleIndex":I
    invoke-virtual {p0, v2, v5, v3}, Landroid/support/wearable/view/ActionLabel;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 127
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_android_gravity:I

    iget v7, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    .line 129
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_android_lineSpacingExtra:I

    iget v7, p0, Landroid/support/wearable/view/ActionLabel;->mLineSpacingAdd:F

    float-to-int v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mLineSpacingAdd:F

    .line 131
    sget v6, Landroid/support/wearable/R$styleable;->ActionLabel_android_lineSpacingMultiplier:I

    iget v7, p0, Landroid/support/wearable/view/ActionLabel;->mLineSpacingMult:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/support/wearable/view/ActionLabel;->mLineSpacingMult:F

    .line 133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    iget-object v6, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    if-nez v6, :cond_1

    .line 136
    const-string v6, ""

    iput-object v6, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    .line 138
    :cond_1
    return-void
.end method

.method private assumeLayout()V
    .locals 5

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 623
    .local v1, "width":I
    if-gez v1, :cond_0

    .line 624
    const/4 v1, 0x0

    .line 626
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 627
    .local v0, "height":I
    if-gez v0, :cond_1

    .line 628
    const/4 v0, 0x0

    .line 630
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getHeight()I

    move-result v2

    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Landroid/support/wearable/view/ActionLabel;->makeNewLayout(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    .line 631
    return-void
.end method

.method private getBoxHeight()I
    .locals 3

    .prologue
    .line 634
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->getExtendedPaddingTop()I

    move-result v1

    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->getExtendedPaddingBottom()I

    move-result v2

    add-int v0, v1, v2

    .line 635
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private getExtendedPaddingBottom()I
    .locals 7

    .prologue
    .line 667
    iget-object v5, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_0

    .line 668
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->assumeLayout()V

    .line 671
    :cond_0
    iget-object v5, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    if-gt v5, v6, :cond_2

    .line 672
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingBottom()I

    move-result v0

    .line 690
    :cond_1
    :goto_0
    return v0

    .line 675
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingTop()I

    move-result v3

    .line 676
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingBottom()I

    move-result v0

    .line 677
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 678
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 680
    .local v2, "layoutht":I
    if-ge v2, v4, :cond_1

    .line 684
    iget v5, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 685
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    .line 686
    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_0

    .line 687
    :cond_3
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    .line 690
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_0
.end method

.method private getExtendedPaddingTop()I
    .locals 7

    .prologue
    .line 639
    iget-object v5, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_0

    .line 640
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->assumeLayout()V

    .line 643
    :cond_0
    iget-object v5, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    if-gt v5, v6, :cond_2

    .line 644
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingTop()I

    move-result v3

    .line 662
    :cond_1
    :goto_0
    return v3

    .line 647
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingTop()I

    move-result v3

    .line 648
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingBottom()I

    move-result v0

    .line 649
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 650
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 652
    .local v2, "layoutht":I
    if-ge v2, v4, :cond_1

    .line 656
    iget v5, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 657
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    .line 659
    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    .line 660
    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_0

    .line 662
    :cond_3
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 467
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 470
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    return-object v0

    .line 436
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_0
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    const v2, 0x800007

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 453
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 454
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 438
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 439
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 441
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 442
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 444
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 445
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 447
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 448
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 450
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 451
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 458
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 459
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 461
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 462
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 464
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 465
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 436
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeNewLayout(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;
    .locals 15
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 566
    if-lez p2, :cond_0

    if-gtz p1, :cond_2

    .line 567
    :cond_0
    const/4 v0, 0x0

    .line 614
    :cond_1
    return-object v0

    .line 569
    :cond_2
    const-wide/16 v10, 0x0

    .line 573
    .local v10, "t":J
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v8, p2, v1

    .line 576
    .local v8, "availableHeight":I
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mCurrentTextSize:F

    .line 577
    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 580
    const/4 v14, 0x1

    .line 581
    .local v14, "tries":I
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    iget v6, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    const/4 v7, 0x1

    move/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 583
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    if-le v1, v2, :cond_5

    const/4 v12, 0x1

    .line 584
    .local v12, "tooManyLines":Z
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-le v1, v8, :cond_6

    const/4 v13, 0x1

    .line 585
    .local v13, "tooTall":Z
    :goto_1
    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    const/4 v9, 0x1

    .line 587
    .local v9, "textCanShrink":Z
    :goto_2
    if-nez v12, :cond_3

    if-eqz v13, :cond_1

    .line 588
    :cond_3
    :goto_3
    if-nez v12, :cond_4

    if-eqz v13, :cond_1

    :cond_4
    if-eqz v9, :cond_1

    .line 589
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mCurrentTextSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mCurrentTextSize:F

    .line 590
    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mCurrentTextSize:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 591
    new-instance v0, Landroid/text/StaticLayout;

    .end local v0    # "layout":Landroid/text/Layout;
    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    iget v6, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    const/4 v7, 0x1

    move/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 597
    .restart local v0    # "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-le v1, v8, :cond_8

    const/4 v13, 0x1

    .line 598
    :goto_4
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    if-le v1, v2, :cond_9

    const/4 v12, 0x1

    .line 599
    :goto_5
    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    const/4 v9, 0x1

    .line 600
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 583
    .end local v9    # "textCanShrink":Z
    .end local v12    # "tooManyLines":Z
    .end local v13    # "tooTall":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_0

    .line 584
    .restart local v12    # "tooManyLines":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_1

    .line 585
    .restart local v13    # "tooTall":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 597
    .restart local v9    # "textCanShrink":Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    .line 598
    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    .line 599
    :cond_a
    const/4 v9, 0x0

    goto :goto_6
.end method

.method private updateTextColors()V
    .locals 4

    .prologue
    .line 412
    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 413
    .local v0, "color":I
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mCurTextColor:I

    if-eq v0, v1, :cond_0

    .line 414
    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mCurTextColor:I

    .line 416
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 405
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 406
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->updateTextColors()V

    .line 409
    :cond_0
    return-void
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mCurTextColor:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    return v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method getVerticalOffset()I
    .locals 5

    .prologue
    .line 695
    const/4 v3, 0x0

    .line 696
    .local v3, "voffset":I
    iget v4, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    and-int/lit8 v1, v4, 0x70

    .line 698
    .local v1, "gravity":I
    const/16 v4, 0x30

    if-eq v1, v4, :cond_0

    .line 699
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->getBoxHeight()I

    move-result v0

    .line 700
    .local v0, "boxht":I
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v2

    .line 702
    .local v2, "textht":I
    if-ge v2, v0, :cond_0

    .line 703
    const/16 v4, 0x50

    if-ne v1, v4, :cond_1

    .line 704
    sub-int v3, v0, v2

    .line 711
    .end local v0    # "boxht":I
    .end local v2    # "textht":I
    :cond_0
    :goto_0
    return v3

    .line 707
    .restart local v0    # "boxht":I
    .restart local v2    # "textht":I
    :cond_1
    sub-int v4, v0, v2

    shr-int/lit8 v3, v4, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 716
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 717
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_0

    .line 718
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 719
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->getExtendedPaddingBottom()I

    move-result v3

    .line 720
    .local v3, "extendedPaddingBottom":I
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingLeft()I

    move-result v1

    .line 721
    .local v1, "clipLeft":I
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 722
    .local v2, "clipRight":I
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, v4, v3

    .line 724
    .local v0, "clipBottom":I
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 725
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroid/support/wearable/view/ActionLabel;->mCurTextColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 726
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getDrawableState()[I

    move-result-object v5

    iput-object v5, v4, Landroid/text/TextPaint;->drawableState:[I

    .line 727
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->getExtendedPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 728
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 729
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 731
    .end local v0    # "clipBottom":I
    .end local v1    # "clipLeft":I
    .end local v2    # "clipRight":I
    .end local v3    # "extendedPaddingBottom":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 475
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 476
    .local v9, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 477
    .local v3, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 478
    .local v10, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 479
    .local v4, "heightSize":I
    const/4 v7, -0x1

    .line 480
    .local v7, "width":I
    const/4 v1, -0x1

    .line 481
    .local v1, "height":I
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v9, v11, :cond_0

    .line 482
    move v7, v10

    .line 485
    :cond_0
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v3, v11, :cond_1

    .line 486
    move v1, v4

    .line 489
    :cond_1
    const/4 v11, -0x1

    if-ne v7, v11, :cond_2

    .line 494
    iget-object v11, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v12, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 495
    iget-object v11, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    iget-object v12, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v11, v12}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 496
    iget-object v11, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v12, p0, Landroid/support/wearable/view/ActionLabel;->mCurrentTextSize:F

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 500
    :cond_2
    const/high16 v11, -0x80000000

    if-ne v9, v11, :cond_3

    .line 501
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 504
    :cond_3
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 506
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    const/4 v11, -0x1

    if-ne v1, v11, :cond_4

    .line 509
    const/high16 v11, -0x80000000

    if-ne v3, v11, :cond_6

    move v1, v4

    .line 513
    :cond_4
    :goto_0
    iget-object v11, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-nez v11, :cond_7

    .line 514
    invoke-direct {p0, v7, v1, v0}, Landroid/support/wearable/view/ActionLabel;->makeNewLayout(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 531
    :cond_5
    :goto_1
    iget-object v11, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-nez v11, :cond_e

    .line 532
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/wearable/view/ActionLabel;->setMeasuredDimension(II)V

    .line 550
    :goto_2
    return-void

    .line 509
    :cond_6
    const v1, 0x7fffffff

    goto :goto_0

    .line 516
    :cond_7
    iget-object v11, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    if-eq v11, v7, :cond_a

    const/4 v8, 0x1

    .line 517
    .local v8, "widthChanged":Z
    :goto_3
    iget v11, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    iget v12, p0, Landroid/support/wearable/view/ActionLabel;->mOldMaxLines:I

    if-eq v11, v12, :cond_b

    const/4 v5, 0x1

    .line 518
    .local v5, "maxLinesChanged":Z
    :goto_4
    iget-object v11, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v11

    if-eq v11, v1, :cond_c

    const/4 v2, 0x1

    .line 519
    .local v2, "heightChanged":Z
    :goto_5
    iget v11, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    iget v12, p0, Landroid/support/wearable/view/ActionLabel;->mOldMinTextSize:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_8

    iget v11, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    iget v12, p0, Landroid/support/wearable/view/ActionLabel;->mOldMaxTextSize:F

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_d

    :cond_8
    const/4 v6, 0x1

    .line 521
    .local v6, "textSizesChanged":Z
    :goto_6
    if-nez v8, :cond_9

    if-nez v2, :cond_9

    if-nez v5, :cond_9

    if-eqz v6, :cond_5

    .line 522
    :cond_9
    invoke-direct {p0, v7, v1, v0}, Landroid/support/wearable/view/ActionLabel;->makeNewLayout(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 523
    iget v11, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    iput v11, p0, Landroid/support/wearable/view/ActionLabel;->mOldMaxTextSize:F

    .line 524
    iget v11, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    iput v11, p0, Landroid/support/wearable/view/ActionLabel;->mOldMinTextSize:F

    goto :goto_1

    .line 516
    .end local v2    # "heightChanged":Z
    .end local v5    # "maxLinesChanged":Z
    .end local v6    # "textSizesChanged":Z
    .end local v8    # "widthChanged":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    .line 517
    .restart local v8    # "widthChanged":Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    .line 518
    .restart local v5    # "maxLinesChanged":Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 519
    .restart local v2    # "heightChanged":Z
    :cond_d
    const/4 v6, 0x0

    goto :goto_6

    .line 537
    .end local v2    # "heightChanged":Z
    .end local v5    # "maxLinesChanged":Z
    .end local v8    # "widthChanged":Z
    :cond_e
    const/high16 v11, 0x40000000    # 2.0f

    if-eq v3, v11, :cond_f

    .line 539
    iget-object v11, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    iget-object v12, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 545
    :cond_f
    const/high16 v11, -0x80000000

    if-ne v3, v11, :cond_10

    .line 546
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 549
    :cond_10
    invoke-virtual {p0, v7, v1}, Landroid/support/wearable/view/ActionLabel;->setMeasuredDimension(II)V

    goto :goto_2
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 424
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 425
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 426
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 388
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 389
    iput p1, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    .line 390
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 392
    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 283
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    iput p1, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    .line 285
    iput p2, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    .line 287
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 289
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 290
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 293
    :cond_1
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "lines"    # I

    .prologue
    .line 372
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    if-eq v0, p1, :cond_0

    .line 373
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mOldMaxLines:I

    .line 374
    iput p1, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 376
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 377
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 379
    :cond_0
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 182
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/support/wearable/view/ActionLabel;->setMaxTextSize(IF)V

    .line 183
    return-void
.end method

.method public setMaxTextSize(IF)V
    .locals 2
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 192
    .local v0, "sizePx":F
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 193
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mOldMaxTextSize:F

    .line 194
    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    .line 195
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 196
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 198
    :cond_0
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 159
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/support/wearable/view/ActionLabel;->setMinTextSize(IF)V

    .line 160
    return-void
.end method

.method public setMinTextSize(IF)V
    .locals 2
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 169
    .local v0, "sizePx":F
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 170
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mOldMinTextSize:F

    .line 171
    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    .line 172
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 173
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 175
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 147
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 148
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 150
    :cond_2
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 324
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    .line 325
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->updateTextColors()V

    .line 326
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 339
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    .line 340
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->updateTextColors()V

    .line 341
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 209
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 211
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 213
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 216
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 224
    if-lez p2, :cond_4

    .line 225
    if-nez p1, :cond_1

    .line 226
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 231
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/ActionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 234
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 235
    .local v0, "need":I
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 236
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 242
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 228
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 233
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 236
    goto :goto_2

    .line 238
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 239
    iget-object v2, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 240
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/ActionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "typefaceIndex"    # I
    .param p3, "styleIndex"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    .line 255
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/ActionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    :goto_0
    return-void

    .line 261
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 275
    :goto_1
    invoke-virtual {p0, v0, p3}, Landroid/support/wearable/view/ActionLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 263
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 264
    goto :goto_1

    .line 267
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 268
    goto :goto_1

    .line 271
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
