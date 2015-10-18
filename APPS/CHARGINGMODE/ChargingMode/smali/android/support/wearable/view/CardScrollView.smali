.class public Landroid/support/wearable/view/CardScrollView;
.super Landroid/widget/FrameLayout;
.source "CardScrollView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final CARD_SHADOW_WIDTH_DP:I = 0x8

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CardScrollView"


# instance fields
.field private mCardFrame:Landroid/support/wearable/view/CardFrame;

.field private final mCardShadowWidth:I

.field private mRoundDisplay:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/CardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/CardScrollView;->mCardShadowWidth:I

    .line 40
    return-void
.end method

.method private hasCardFrame()Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    if-nez v0, :cond_0

    .line 103
    const-string v0, "CardScrollView"

    const-string v1, "No CardFrame has been added."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    instance-of v0, p1, Landroid/support/wearable/view/CardFrame;

    if-nez v0, :cond_1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardScrollView may contain only a single CardFrame."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 90
    check-cast p1, Landroid/support/wearable/view/CardFrame;

    .end local p1    # "child":Landroid/view/View;
    iput-object p1, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    .line 91
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableScrollDelta(I)I
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x0

    .line 257
    invoke-direct {p0}, Landroid/support/wearable/view/CardScrollView;->hasCardFrame()Z

    move-result v8

    if-nez v8, :cond_1

    move v0, v7

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getPaddingBottom()I

    move-result v9

    add-int v5, v8, v9

    .line 261
    .local v5, "paddingHeight":I
    iget-object v8, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v8}, Landroid/support/wearable/view/CardFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v4, v8, v9

    .line 263
    .local v4, "marginHeight":I
    iget-object v8, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v8}, Landroid/support/wearable/view/CardFrame;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    add-int v1, v8, v4

    .line 264
    .local v1, "cardVerticalSpan":I
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getMeasuredHeight()I

    move-result v8

    if-gt v1, v8, :cond_2

    move v0, v7

    .line 265
    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getMeasuredHeight()I

    move-result v8

    sub-int v2, v1, v8

    .line 268
    .local v2, "extra":I
    const/4 v0, 0x0

    .line 269
    .local v0, "avail":I
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getScrollY()I

    move-result v6

    .line 270
    .local v6, "sy":I
    iget-object v8, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v8}, Landroid/support/wearable/view/CardFrame;->getExpansionDirection()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 272
    if-ltz v6, :cond_3

    .line 273
    if-gez p1, :cond_4

    .line 276
    neg-int v0, v6

    .line 297
    :cond_3
    :goto_1
    const-string v8, "CardScrollView"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 298
    const-string v8, "CardScrollView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getVerticalScrollableDistance: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_4
    if-lez p1, :cond_3

    .line 280
    sub-int v8, v2, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 283
    :cond_5
    iget-object v8, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v8}, Landroid/support/wearable/view/CardFrame;->getExpansionDirection()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 285
    if-gtz v6, :cond_3

    .line 286
    if-lez p1, :cond_6

    .line 289
    neg-int v0, v6

    goto :goto_1

    .line 290
    :cond_6
    if-gez p1, :cond_3

    .line 293
    add-int v8, v2, v6

    neg-int v0, v8

    goto :goto_1
.end method

.method public getCardGravity()I
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/support/wearable/view/CardScrollView;->hasCardFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v1}, Landroid/support/wearable/view/CardFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 236
    .local v0, "existing":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 238
    .end local v0    # "existing":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExpansionDirection()I
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/support/wearable/view/CardScrollView;->hasCardFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0}, Landroid/support/wearable/view/CardFrame;->getExpansionDirection()I

    move-result v0

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpansionFactor()F
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/support/wearable/view/CardScrollView;->hasCardFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0}, Landroid/support/wearable/view/CardFrame;->getExpansionFactor()F

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpansionEnabled()Z
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/support/wearable/view/CardScrollView;->hasCardFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0}, Landroid/support/wearable/view/CardFrame;->isExpansionEnabled()Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v2

    .line 51
    .local v2, "round":Z
    iget-boolean v3, p0, Landroid/support/wearable/view/CardScrollView;->mRoundDisplay:Z

    if-eq v3, v2, :cond_0

    .line 52
    iput-boolean v2, p0, Landroid/support/wearable/view/CardScrollView;->mRoundDisplay:Z

    .line 55
    iget-object v3, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v3}, Landroid/support/wearable/view/CardFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Landroid/support/wearable/view/CardScrollView;->mCardShadowWidth:I

    neg-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 57
    iget v3, p0, Landroid/support/wearable/view/CardScrollView;->mCardShadowWidth:I

    neg-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 58
    iget v3, p0, Landroid/support/wearable/view/CardScrollView;->mCardShadowWidth:I

    neg-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 59
    iget-object v3, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v3, v1}, Landroid/support/wearable/view/CardFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    if-lez v3, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 71
    .local v0, "bottomInset":I
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 72
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    .line 73
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 76
    .end local v0    # "bottomInset":I
    :cond_1
    iget-boolean v3, p0, Landroid/support/wearable/view/CardScrollView;->mRoundDisplay:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    if-eqz v3, :cond_2

    .line 78
    iget-object v3, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v3, p1}, Landroid/support/wearable/view/CardFrame;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 80
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->requestLayout()V

    .line 81
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 45
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->requestApplyInsets()V

    .line 46
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 96
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CardScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/support/wearable/view/CardFrame;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    const-string v0, "CardScrollView"

    const-string v1, "No CardFrame has been added!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 331
    iget-object v10, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    if-eqz v10, :cond_1

    .line 332
    iget-object v10, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v10}, Landroid/support/wearable/view/CardFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 333
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v10}, Landroid/support/wearable/view/CardFrame;->getMeasuredHeight()I

    move-result v2

    .line 334
    .local v2, "cardHeight":I
    iget-object v10, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v10}, Landroid/support/wearable/view/CardFrame;->getMeasuredWidth()I

    move-result v3

    .line 335
    .local v3, "cardWidth":I
    sub-int v7, p5, p3

    .line 336
    .local v7, "parentHeight":I
    const/4 v0, 0x0

    .line 337
    .local v0, "alignBottom":Z
    if-gt v2, v7, :cond_3

    .line 338
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x70

    const/16 v11, 0x50

    if-ne v10, v11, :cond_2

    const/4 v0, 0x1

    .line 343
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getPaddingLeft()I

    move-result v10

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v5, v10, v11

    .line 344
    .local v5, "l":I
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getPaddingTop()I

    move-result v10

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v9, v10, v11

    .line 345
    .local v9, "t":I
    add-int v8, v5, v3

    .line 346
    .local v8, "r":I
    add-int v1, v9, v2

    .line 347
    .local v1, "b":I
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getPaddingBottom()I

    move-result v10

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    sub-int v1, v7, v10

    .line 349
    sub-int v9, v1, v2

    .line 355
    :cond_0
    iget-object v10, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v10, v5, v9, v8, v1}, Landroid/support/wearable/view/CardFrame;->layout(IIII)V

    .line 357
    .end local v0    # "alignBottom":Z
    .end local v1    # "b":I
    .end local v2    # "cardHeight":I
    .end local v3    # "cardWidth":I
    .end local v5    # "l":I
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "parentHeight":I
    .end local v8    # "r":I
    .end local v9    # "t":I
    :cond_1
    return-void

    .line 338
    .restart local v0    # "alignBottom":Z
    .restart local v2    # "cardHeight":I
    .restart local v3    # "cardWidth":I
    .restart local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7    # "parentHeight":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :cond_3
    iget-object v10, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v10}, Landroid/support/wearable/view/CardFrame;->getExpansionDirection()I

    move-result v4

    .line 341
    .local v4, "dir":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_4

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 305
    iget-object v7, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    if-eqz v7, :cond_0

    .line 306
    iget-object v7, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v7}, Landroid/support/wearable/view/CardFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 309
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getPaddingRight()I

    move-result v8

    add-int v5, v7, v8

    .line 310
    .local v5, "paddingWidth":I
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getPaddingBottom()I

    move-result v8

    add-int v4, v7, v8

    .line 311
    .local v4, "paddingHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    sub-int v0, v7, v4

    .line 312
    .local v0, "availableHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    sub-int v1, v7, v5

    .line 313
    .local v1, "availableWidth":I
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    sub-int/2addr v1, v7

    .line 314
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    sub-int/2addr v0, v7

    .line 315
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 316
    .local v6, "widthSpec":I
    const/high16 v7, -0x80000000

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 317
    .local v2, "heightSpec":I
    iget-object v7, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v7, v6, v2}, Landroid/support/wearable/view/CardFrame;->measure(II)V

    .line 324
    .end local v0    # "availableHeight":I
    .end local v1    # "availableWidth":I
    .end local v2    # "heightSpec":I
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "paddingHeight":I
    .end local v5    # "paddingWidth":I
    .end local v6    # "widthSpec":I
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v7, p1}, Landroid/support/wearable/view/CardScrollView;->getDefaultSize(II)I

    move-result v7

    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v8, p2}, Landroid/support/wearable/view/CardScrollView;->getDefaultSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/support/wearable/view/CardScrollView;->setMeasuredDimension(II)V

    .line 327
    return-void
.end method

.method roundAwayFromZero(F)I
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 360
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    double-to-int v0, v0

    return v0

    :cond_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method roundTowardZero(F)I
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 364
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    double-to-int v0, v0

    return v0

    :cond_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public setCardGravity(I)V
    .locals 5
    .param p1, "gravity"    # I

    .prologue
    .line 214
    const-string v1, "CardScrollView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "CardScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCardGravity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/view/CardScrollView;->hasCardFrame()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    and-int/lit8 p1, p1, 0x70

    .line 219
    iget-object v1, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v1}, Landroid/support/wearable/view/CardFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    .local v0, "existing":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v1, p1, :cond_1

    .line 221
    iget-object v1, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/CardFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->requestLayout()V

    .line 226
    .end local v0    # "existing":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public setExpansionDirection(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 152
    const-string v1, "CardScrollView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "CardScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExpansionDirection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/view/CardScrollView;->hasCardFrame()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v1}, Landroid/support/wearable/view/CardFrame;->getExpansionDirection()I

    move-result v0

    .line 157
    .local v0, "curDirection":I
    if-eq p1, v0, :cond_2

    .line 158
    iget-object v1, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v1, p1}, Landroid/support/wearable/view/CardFrame;->setExpansionDirection(I)V

    .line 159
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getScrollY()I

    move-result v1

    if-gez v1, :cond_3

    .line 160
    invoke-virtual {p0, v4, v4}, Landroid/support/wearable/view/CardScrollView;->scrollTo(II)V

    .line 164
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->requestLayout()V

    .line 167
    .end local v0    # "curDirection":I
    :cond_2
    return-void

    .line 161
    .restart local v0    # "curDirection":I
    :cond_3
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/wearable/view/CardScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_1

    .line 162
    invoke-virtual {p0, v4, v4}, Landroid/support/wearable/view/CardScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setExpansionEnabled(Z)V
    .locals 5
    .param p1, "enableExpansion"    # Z

    .prologue
    const/4 v4, 0x0

    .line 118
    const-string v1, "CardScrollView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "CardScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExpansionEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/view/CardScrollView;->hasCardFrame()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v1}, Landroid/support/wearable/view/CardFrame;->isExpansionEnabled()Z

    move-result v0

    .line 123
    .local v0, "wasEnabled":Z
    if-eq p1, v0, :cond_1

    .line 124
    iget-object v1, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v1, p1}, Landroid/support/wearable/view/CardFrame;->setExpansionEnabled(Z)V

    .line 125
    if-nez p1, :cond_1

    .line 126
    invoke-virtual {p0, v4, v4}, Landroid/support/wearable/view/CardScrollView;->scrollTo(II)V

    .line 130
    .end local v0    # "wasEnabled":Z
    :cond_1
    return-void
.end method

.method public setExpansionFactor(F)V
    .locals 3
    .param p1, "expansionFactor"    # F

    .prologue
    .line 187
    const-string v0, "CardScrollView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "CardScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpansionFactor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/view/CardScrollView;->hasCardFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Landroid/support/wearable/view/CardScrollView;->mCardFrame:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CardFrame;->setExpansionFactor(F)V

    .line 193
    :cond_1
    return-void
.end method
