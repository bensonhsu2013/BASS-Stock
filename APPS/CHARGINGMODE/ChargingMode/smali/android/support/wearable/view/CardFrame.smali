.class public Landroid/support/wearable/view/CardFrame;
.super Landroid/view/ViewGroup;
.source "CardFrame.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/CardFrame$EdgeFade;
    }
.end annotation


# static fields
.field private static BOX_FACTOR:F = 0.0f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CONTENT_PADDING_DP:I = 0xc

.field private static final DEFAULT_CONTENT_PADDING_TOP_DP:I = 0x8

.field private static final EDGE_FADE_DISTANCE_DP:I = 0x28

.field public static final EXPAND_DOWN:I = 0x1

.field public static final EXPAND_UP:I = -0x1

.field public static final NO_EXPANSION:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "CardFrame"


# instance fields
.field private mBoxInset:I

.field private mCanExpand:Z

.field private mCardBaseHeight:I

.field private final mChildClipBounds:Landroid/graphics/Rect;

.field private final mContentPadding:Landroid/graphics/Rect;

.field private final mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

.field private final mEdgeFadeDistance:I

.field private mExpansionDirection:I

.field private mExpansionEnabled:Z

.field private mExpansionFactor:F

.field private mHasBottomInset:Z

.field private final mInsetPadding:Landroid/graphics/Rect;

.field private mRoundDisplay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x3e15fb72    # 0.146467f

    sput v0, Landroid/support/wearable/view/CardFrame;->BOX_FACTOR:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/wearable/view/CardFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/CardFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-boolean v5, p0, Landroid/support/wearable/view/CardFrame;->mExpansionEnabled:Z

    .line 67
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/support/wearable/view/CardFrame;->mExpansionFactor:F

    .line 74
    iput v5, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    .line 77
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    .line 82
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    .line 83
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    .line 404
    new-instance v4, Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-direct {v4}, Landroid/support/wearable/view/CardFrame$EdgeFade;-><init>()V

    iput-object v4, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 98
    .local v2, "density":F
    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFadeDistance:I

    .line 99
    sget v4, Landroid/support/wearable/R$drawable;->card_background:I

    invoke-virtual {p0, v4}, Landroid/support/wearable/view/CardFrame;->setBackgroundResource(I)V

    .line 100
    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v2

    float-to-int v0, v4

    .line 102
    .local v0, "defaultContentPadding":I
    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v2

    float-to-int v1, v4

    .line 104
    .local v1, "defaultContentPaddingTop":I
    invoke-virtual {p0, v0, v1, v0, v0}, Landroid/support/wearable/view/CardFrame;->setContentPadding(IIII)V

    .line 106
    return-void
.end method

.method public static getDefaultSize(IIZ)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "greedy"    # Z

    .prologue
    .line 386
    move v0, p0

    .line 387
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 388
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 390
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 401
    :goto_0
    return v0

    .line 392
    :sswitch_0
    move v0, p0

    .line 393
    goto :goto_0

    .line 395
    :sswitch_1
    if-eqz p2, :cond_0

    move v0, v2

    .line 396
    :goto_1
    goto :goto_0

    :cond_0
    move v0, p0

    .line 395
    goto :goto_1

    .line 398
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 390
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardFrame can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 513
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 517
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 518
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardFrame can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 522
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardFrame can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 539
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardFrame can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFadeDistance:I

    .line 430
    .local v10, "fadeDistance":I
    const/4 v12, 0x0

    .line 431
    .local v12, "more":Z
    const/4 v8, 0x0

    .line 432
    .local v8, "bottomFade":Z
    const/4 v15, 0x0

    .line 433
    .local v15, "topFade":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v2

    add-int v13, v1, v2

    .line 439
    .local v13, "paddingHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 440
    .local v9, "contentHeight":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    if-eqz v1, :cond_0

    .line 442
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    add-int v1, v9, v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 444
    const/4 v15, 0x1

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 452
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v14

    .line 453
    .local v14, "saveCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 455
    const/4 v11, 0x4

    .line 456
    .local v11, "flags":I
    if-eqz v15, :cond_1

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    int-to-float v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 464
    :cond_1
    if-eqz v8, :cond_2

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v10

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 473
    :cond_2
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v12

    .line 475
    if-eqz v15, :cond_3

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v10

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->shader:Landroid/graphics/Shader;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$100(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Shader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->paint:Landroid/graphics/Paint;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$200(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->shader:Landroid/graphics/Shader;
    invoke-static {v2}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$100(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->paint:Landroid/graphics/Paint;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$200(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 489
    :cond_3
    if-eqz v8, :cond_4

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v10

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->shader:Landroid/graphics/Shader;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$100(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Shader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->matrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->paint:Landroid/graphics/Paint;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$200(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->shader:Landroid/graphics/Shader;
    invoke-static {v2}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$100(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v10

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    # getter for: Landroid/support/wearable/view/CardFrame$EdgeFade;->paint:Landroid/graphics/Paint;
    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$200(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 503
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 504
    return v12

    .line 446
    .end local v11    # "flags":I
    .end local v14    # "saveCount":I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int v1, v9, v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 448
    const/4 v8, 0x1

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getExpansionDirection()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    return v0
.end method

.method public getExpansionFactor()F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Landroid/support/wearable/view/CardFrame;->mExpansionFactor:F

    return v0
.end method

.method public isExpansionEnabled()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFrame;->mExpansionEnabled:Z

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    .line 220
    .local v1, "round":Z
    iget-boolean v2, p0, Landroid/support/wearable/view/CardFrame;->mRoundDisplay:Z

    if-eq v1, v2, :cond_0

    .line 221
    iput-boolean v1, p0, Landroid/support/wearable/view/CardFrame;->mRoundDisplay:Z

    .line 222
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 225
    .local v0, "inset":Z
    :goto_0
    iget-boolean v2, p0, Landroid/support/wearable/view/CardFrame;->mHasBottomInset:Z

    if-eq v0, v2, :cond_1

    .line 226
    iput-boolean v0, p0, Landroid/support/wearable/view/CardFrame;->mHasBottomInset:Z

    .line 227
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 229
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    return-object v2

    .line 224
    .end local v0    # "inset":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 211
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestApplyInsets()V

    .line 212
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 563
    const-class v0, Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 564
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 568
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 569
    const-class v0, Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 570
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 425
    :goto_0
    return-void

    .line 411
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/support/wearable/view/CardFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 412
    .local v1, "content":Landroid/view/View;
    sub-int v3, p5, p3

    .line 414
    .local v3, "parentHeight":I
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v2, v6, v7

    .line 415
    .local v2, "l":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v4, v2, v6

    .line 416
    .local v4, "r":I
    iget v6, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 417
    move v0, v3

    .line 418
    .local v0, "b":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    sub-int v5, v0, v6

    .line 424
    .local v5, "t":I
    :goto_1
    invoke-virtual {v1, v2, v5, v4, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 421
    .end local v0    # "b":I
    .end local v5    # "t":I
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int v5, v6, v7

    .line 422
    .restart local v5    # "t":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v0, v5, v6

    .restart local v0    # "b":I
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 238
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 239
    .local v14, "logicalWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 241
    .local v13, "logicalHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/CardFrame;->mRoundDisplay:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 248
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->setEmpty()V

    .line 249
    const/16 v17, 0x0

    .line 250
    .local v17, "outsetLeft":I
    const/16 v16, 0x0

    .line 251
    .local v16, "outsetBottom":I
    const/16 v18, 0x0

    .line 252
    .local v18, "outsetRight":I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v23, v0

    if-gez v23, :cond_0

    .line 253
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v17, v0

    .line 254
    sub-int v14, v14, v17

    .line 256
    :cond_0
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    if-gez v23, :cond_1

    .line 257
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v18, v0

    .line 258
    sub-int v14, v14, v18

    .line 260
    :cond_1
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v23, v0

    if-gez v23, :cond_2

    .line 261
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v16, v0

    .line 262
    sub-int v13, v13, v16

    .line 265
    :cond_2
    sget v23, Landroid/support/wearable/view/CardFrame;->BOX_FACTOR:F

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/CardFrame;->mBoxInset:I

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/CardFrame;->mBoxInset:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingLeft()I

    move-result v25

    sub-int v25, v25, v17

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/CardFrame;->mBoxInset:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingRight()I

    move-result v25

    sub-int v25, v25, v18

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/CardFrame;->mHasBottomInset:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/CardFrame;->mBoxInset:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v25

    sub-int v25, v25, v16

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 285
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v16    # "outsetBottom":I
    .end local v17    # "outsetLeft":I
    .end local v18    # "outsetRight":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getSuggestedMinimumWidth()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/support/wearable/view/CardFrame;->getDefaultSize(IIZ)I

    move-result v5

    .line 291
    .local v5, "cardMeasuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getSuggestedMinimumHeight()I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/support/wearable/view/CardFrame;->getDefaultSize(IIZ)I

    move-result v4

    .line 294
    .local v4, "cardMeasuredHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v23

    if-nez v23, :cond_4

    .line 296
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/support/wearable/view/CardFrame;->setMeasuredDimension(II)V

    .line 379
    :goto_0
    return-void

    .line 299
    :cond_4
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 301
    .local v12, "content":Landroid/view/View;
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 302
    .local v22, "parentHeightSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 304
    .local v21, "parentHeightMode":I
    move v10, v5

    .line 305
    .local v10, "childWidthMeasureSpecSize":I
    const/high16 v9, 0x40000000    # 2.0f

    .line 308
    .local v9, "childWidthMeasureSpecMode":I
    const/4 v3, 0x0

    .line 311
    .local v3, "cardHeightMatchContent":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/CardFrame;->mExpansionEnabled:Z

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    .line 313
    if-eqz v21, :cond_5

    if-nez v22, :cond_6

    .line 314
    :cond_5
    const-string v23, "CardFrame"

    const-string v24, "height measure spec passed with mode UNSPECIFIED, or zero height."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    .line 317
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/CardFrame;->mCardBaseHeight:I

    .line 318
    const/4 v4, 0x0

    .line 319
    const/4 v3, 0x1

    .line 320
    const/4 v6, 0x0

    .line 321
    .local v6, "childHeightMeasureSpecMode":I
    const/4 v7, 0x0

    .line 352
    .local v7, "childHeightMeasureSpecSize":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingLeft()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingRight()I

    move-result v24

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v20, v23, v24

    .line 354
    .local v20, "paddingWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingTop()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v24

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v19, v23, v24

    .line 356
    .local v19, "paddingHeight":I
    sub-int v23, v10, v20

    move/from16 v0, v23

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 358
    .local v11, "childWidthSpec":I
    sub-int v23, v7, v19

    move/from16 v0, v23

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 362
    .local v8, "childHeightSpec":I
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 363
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v23, 0x0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v11, v0, v1}, Landroid/support/wearable/view/CardFrame;->getChildMeasureSpec(III)I

    move-result v11

    .line 365
    invoke-virtual {v12, v11, v8}, Landroid/view/View;->measure(II)V

    .line 366
    if-eqz v3, :cond_a

    .line 367
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v4, v23, v19

    .line 378
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/support/wearable/view/CardFrame;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 322
    .end local v6    # "childHeightMeasureSpecMode":I
    .end local v7    # "childHeightMeasureSpecSize":I
    .end local v8    # "childHeightSpec":I
    .end local v11    # "childWidthSpec":I
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "paddingHeight":I
    .end local v20    # "paddingWidth":I
    :cond_6
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 323
    const-string v23, "CardFrame"

    const-string v24, "height measure spec passed with mode EXACT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    .line 325
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/CardFrame;->mCardBaseHeight:I

    .line 326
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/wearable/view/CardFrame;->mCardBaseHeight:I

    .line 327
    const/high16 v6, 0x40000000    # 2.0f

    .line 328
    .restart local v6    # "childHeightMeasureSpecMode":I
    move v7, v4

    .restart local v7    # "childHeightMeasureSpecSize":I
    goto/16 :goto_1

    .line 330
    .end local v6    # "childHeightMeasureSpecMode":I
    .end local v7    # "childHeightMeasureSpecSize":I
    :cond_7
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/wearable/view/CardFrame;->mCardBaseHeight:I

    .line 331
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/wearable/view/CardFrame;->mCardBaseHeight:I

    .line 332
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 333
    int-to-float v0, v4

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/CardFrame;->mExpansionFactor:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v4, v0

    .line 335
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 340
    const/4 v6, 0x0

    .line 341
    .restart local v6    # "childHeightMeasureSpecMode":I
    const/4 v7, 0x0

    .restart local v7    # "childHeightMeasureSpecSize":I
    goto/16 :goto_1

    .line 346
    .end local v6    # "childHeightMeasureSpecMode":I
    .end local v7    # "childHeightMeasureSpecSize":I
    :cond_9
    const/high16 v6, -0x80000000

    .line 347
    .restart local v6    # "childHeightMeasureSpecMode":I
    move v7, v4

    .line 348
    .restart local v7    # "childHeightMeasureSpecSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v23

    add-int v7, v7, v23

    goto/16 :goto_1

    .line 370
    .restart local v8    # "childHeightSpec":I
    .restart local v11    # "childWidthSpec":I
    .restart local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "paddingHeight":I
    .restart local v20    # "paddingWidth":I
    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v19

    move/from16 v0, v23

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 372
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    move/from16 v24, v0

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v25, v4, v19

    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    const/16 v23, 0x1

    :goto_3
    and-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    goto/16 :goto_2

    :cond_b
    const/16 v23, 0x0

    goto :goto_3
.end method

.method public setContentPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 120
    return-void
.end method

.method public setExpansionDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 168
    iput p1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    .line 169
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 170
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->invalidate()V

    .line 171
    return-void
.end method

.method public setExpansionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionEnabled:Z

    .line 158
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 159
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->invalidate()V

    .line 160
    return-void
.end method

.method public setExpansionFactor(F)V
    .locals 0
    .param p1, "expansionFactor"    # F

    .prologue
    .line 178
    iput p1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionFactor:F

    .line 179
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 180
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->invalidate()V

    .line 181
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method
