.class public Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "BoxInsetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/BoxInsetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BOX_ALL:I = 0xf

.field public static final BOX_BOTTOM:I = 0x8

.field public static final BOX_LEFT:I = 0x1

.field public static final BOX_NONE:I = 0x0

.field public static final BOX_RIGHT:I = 0x4

.field public static final BOX_TOP:I = 0x2


# instance fields
.field public boxedEdges:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 390
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 391
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 394
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 395
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I
    .param p4, "boxed"    # I

    .prologue
    .line 398
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 399
    iput p4, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 383
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 380
    iput v2, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 384
    sget-object v1, Landroid/support/wearable/R$styleable;->BoxInsetLayout_Layout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 385
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/wearable/R$styleable;->BoxInsetLayout_Layout_layout_box:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 386
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 387
    return-void
.end method

.method public constructor <init>(Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    .prologue
    .line 415
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 416
    iget v0, p1, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 417
    iget v0, p1, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->gravity:I

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->gravity:I

    .line 418
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 403
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 407
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 408
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 412
    return-void
.end method
