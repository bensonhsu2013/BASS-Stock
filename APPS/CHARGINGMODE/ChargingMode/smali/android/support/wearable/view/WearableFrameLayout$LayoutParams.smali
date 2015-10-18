.class public Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "WearableFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/WearableFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public bottomMarginRound:I

.field public gravityRound:I

.field public heightRound:I

.field public leftMarginRound:I

.field public rightMarginRound:I

.field public topMarginRound:I

.field public widthRound:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 824
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 745
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 825
    iput p1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    .line 826
    iput p2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    .line 827
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 814
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 745
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 815
    iput p1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    .line 816
    iput p2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    .line 817
    iput p3, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 818
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I
    .param p4, "widthRound"    # I
    .param p5, "heightRound"    # I
    .param p6, "gravityRound"    # I

    .prologue
    .line 804
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 745
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 805
    iput p4, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    .line 806
    iput p5, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    .line 807
    iput p6, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 808
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    .line 759
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 745
    iput v4, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 760
    sget-object v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 761
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_gravityRound:I

    iget v3, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 763
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_widthRound:I

    iget v3, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    .line 765
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_heightRound:I

    iget v3, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    .line 767
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_marginRound:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 769
    .local v1, "marginRound":I
    if-ltz v1, :cond_0

    .line 770
    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMarginRound:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMarginRound:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMarginRound:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMarginRound:I

    .line 782
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 783
    return-void

    .line 773
    :cond_0
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_marginLeftRound:I

    iget v3, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMarginRound:I

    .line 775
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_marginTopRound:I

    iget v3, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMarginRound:I

    .line 777
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_marginRightRound:I

    iget v3, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMarginRound:I

    .line 779
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_marginBottomRound:I

    iget v3, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMarginRound:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .prologue
    .line 833
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 745
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 834
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    .line 835
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    .line 836
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 837
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMarginRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMarginRound:I

    .line 838
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMarginRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMarginRound:I

    .line 839
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMarginRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMarginRound:I

    .line 840
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMarginRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMarginRound:I

    .line 841
    return-void
.end method
