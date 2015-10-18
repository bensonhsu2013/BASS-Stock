.class public Landroid/support/wearable/view/BoxInsetLayout;
.super Landroid/widget/FrameLayout;
.source "BoxInsetLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033

.field private static FACTOR:F


# instance fields
.field private mForegroundPadding:Landroid/graphics/Rect;

.field private mInsets:Landroid/graphics/Rect;

.field private mLastKnownRound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const v0, 0x3e15fb72    # 0.146467f

    sput v0, Landroid/support/wearable/view/BoxInsetLayout;->FACTOR:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/BoxInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/BoxInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iget-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    .line 50
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    .line 53
    :cond_1
    return-void
.end method

.method private layoutBoxChildren(IIIIZ)V
    .locals 26
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "forceLeftGravity"    # Z

    .prologue
    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getChildCount()I

    move-result v7

    .line 229
    .local v7, "count":I
    sget v23, Landroid/support/wearable/view/BoxInsetLayout;->FACTOR:F

    sub-int v24, p3, p1

    sub-int v25, p4, p2

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v3, v0

    .line 231
    .local v3, "boxInset":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v18, v23, v24

    .line 232
    .local v18, "parentLeft":I
    sub-int v23, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingRight()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v19, v23, v24

    .line 234
    .local v19, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v20, v23, v24

    .line 235
    .local v20, "parentTop":I
    sub-int v23, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingBottom()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 237
    .local v17, "parentBottom":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_d

    .line 238
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 239
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 240
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    .line 242
    .local v12, "lp":Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 243
    .local v22, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 248
    .local v9, "height":I
    iget v8, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->gravity:I

    .line 249
    .local v8, "gravity":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_0

    .line 250
    const v8, 0x800033

    .line 253
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getLayoutDirection()I

    move-result v11

    .line 254
    .local v11, "layoutDirection":I
    invoke-static {v8, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 255
    .local v2, "absoluteGravity":I
    and-int/lit8 v21, v8, 0x70

    .line 258
    .local v21, "verticalGravity":I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    .line 259
    .local v14, "paddingLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    .line 260
    .local v15, "paddingRight":I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    .line 261
    .local v16, "paddingTop":I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    .line 265
    .local v13, "paddingBottom":I
    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->width:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 266
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_1

    .line 267
    move v14, v3

    .line 269
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x4

    if-eqz v23, :cond_2

    .line 270
    move v15, v3

    .line 272
    :cond_2
    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v5, v18, v23

    .line 304
    .local v5, "childLeft":I
    :goto_1
    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->height:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 305
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_3

    .line 306
    move/from16 v16, v3

    .line 308
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_4

    .line 309
    move v13, v3

    .line 311
    :cond_4
    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    add-int v6, v20, v23

    .line 339
    .local v6, "childTop":I
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v4, v14, v0, v15, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 340
    add-int v23, v5, v22

    add-int v24, v6, v9

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 237
    .end local v2    # "absoluteGravity":I
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v8    # "gravity":I
    .end local v9    # "height":I
    .end local v11    # "layoutDirection":I
    .end local v12    # "lp":Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    .end local v13    # "paddingBottom":I
    .end local v14    # "paddingLeft":I
    .end local v15    # "paddingRight":I
    .end local v16    # "paddingTop":I
    .end local v21    # "verticalGravity":I
    .end local v22    # "width":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 274
    .restart local v2    # "absoluteGravity":I
    .restart local v8    # "gravity":I
    .restart local v9    # "height":I
    .restart local v11    # "layoutDirection":I
    .restart local v12    # "lp":Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    .restart local v13    # "paddingBottom":I
    .restart local v14    # "paddingLeft":I
    .restart local v15    # "paddingRight":I
    .restart local v16    # "paddingTop":I
    .restart local v21    # "verticalGravity":I
    .restart local v22    # "width":I
    :cond_6
    and-int/lit8 v23, v2, 0x7

    sparse-switch v23, :sswitch_data_0

    .line 292
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_9

    .line 293
    move v14, v3

    .line 294
    const/4 v5, 0x0

    .restart local v5    # "childLeft":I
    goto :goto_1

    .line 276
    .end local v5    # "childLeft":I
    :sswitch_0
    sub-int v23, v19, v18

    sub-int v23, v23, v22

    div-int/lit8 v23, v23, 0x2

    add-int v23, v23, v18

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->rightMargin:I

    move/from16 v24, v0

    sub-int v5, v23, v24

    .line 278
    .restart local v5    # "childLeft":I
    goto :goto_1

    .line 280
    .end local v5    # "childLeft":I
    :sswitch_1
    if-nez p5, :cond_7

    .line 281
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x4

    if-eqz v23, :cond_8

    .line 283
    move v15, v3

    .line 284
    sub-int v23, p3, p1

    sub-int v5, v23, v22

    .restart local v5    # "childLeft":I
    goto/16 :goto_1

    .line 286
    .end local v5    # "childLeft":I
    :cond_8
    sub-int v23, v19, v22

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->rightMargin:I

    move/from16 v24, v0

    sub-int v5, v23, v24

    .line 288
    .restart local v5    # "childLeft":I
    goto/16 :goto_1

    .line 296
    .end local v5    # "childLeft":I
    :cond_9
    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v5, v18, v23

    .restart local v5    # "childLeft":I
    goto/16 :goto_1

    .line 313
    :cond_a
    sparse-switch v21, :sswitch_data_1

    .line 335
    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    add-int v6, v20, v23

    .restart local v6    # "childTop":I
    goto :goto_2

    .line 315
    .end local v6    # "childTop":I
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_b

    .line 316
    move/from16 v16, v3

    .line 317
    const/4 v6, 0x0

    .restart local v6    # "childTop":I
    goto/16 :goto_2

    .line 319
    .end local v6    # "childTop":I
    :cond_b
    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    add-int v6, v20, v23

    .line 321
    .restart local v6    # "childTop":I
    goto/16 :goto_2

    .line 323
    .end local v6    # "childTop":I
    :sswitch_3
    sub-int v23, v17, v20

    sub-int v23, v23, v9

    div-int/lit8 v23, v23, 0x2

    add-int v23, v23, v20

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v6, v23, v24

    .line 325
    .restart local v6    # "childTop":I
    goto/16 :goto_2

    .line 327
    .end local v6    # "childTop":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_c

    .line 328
    move v13, v3

    .line 329
    sub-int v23, p4, p2

    sub-int v6, v23, v9

    .restart local v6    # "childTop":I
    goto/16 :goto_2

    .line 331
    .end local v6    # "childTop":I
    :cond_c
    sub-int v23, v17, v9

    iget v0, v12, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v6, v23, v24

    .line 333
    .restart local v6    # "childTop":I
    goto/16 :goto_2

    .line 343
    .end local v2    # "absoluteGravity":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v8    # "gravity":I
    .end local v9    # "height":I
    .end local v11    # "layoutDirection":I
    .end local v12    # "lp":Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    .end local v13    # "paddingBottom":I
    .end local v14    # "paddingLeft":I
    .end local v15    # "paddingRight":I
    .end local v16    # "paddingTop":I
    .end local v21    # "verticalGravity":I
    .end local v22    # "width":I
    :cond_d
    return-void

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 313
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 355
    instance-of v0, p1, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 365
    new-instance v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/BoxInsetLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 360
    new-instance v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/BoxInsetLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isRound()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    .line 65
    .local v0, "round":Z
    iget-boolean v1, p0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eq v0, v1, :cond_0

    .line 66
    iput-boolean v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    .line 67
    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->requestLayout()V

    .line 69
    :cond_0
    iget-object v1, p0, Landroid/support/wearable/view/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 58
    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->requestApplyInsets()V

    .line 59
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 223
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/wearable/view/BoxInsetLayout;->layoutBoxChildren(IIIIZ)V

    .line 224
    return-void
.end method

.method protected onMeasure(II)V
    .locals 28
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getChildCount()I

    move-result v12

    .line 96
    .local v12, "count":I
    const/16 v21, 0x0

    .line 97
    .local v21, "maxWidth":I
    const/16 v20, 0x0

    .line 98
    .local v20, "maxHeight":I
    const/4 v10, 0x0

    .line 99
    .local v10, "childState":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_6

    .line 100
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/wearable/view/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 101
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    .line 103
    .local v15, "lp":Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    const/16 v17, 0x0

    .line 104
    .local v17, "marginLeft":I
    const/16 v18, 0x0

    .line 105
    .local v18, "marginRight":I
    const/16 v19, 0x0

    .line 106
    .local v19, "marginTop":I
    const/16 v16, 0x0

    .line 107
    .local v16, "marginBottom":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v2, :cond_5

    .line 109
    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 110
    iget v0, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    .line 112
    :cond_0
    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    .line 113
    iget v0, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    .line 115
    :cond_1
    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 116
    iget v0, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    .line 118
    :cond_2
    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_3

    .line 119
    iget v0, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    .line 128
    :cond_3
    :goto_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/support/wearable/view/BoxInsetLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, v17

    add-int v2, v2, v18

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 131
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v2, v19

    add-int v2, v2, v16

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 133
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v10, v2}, Landroid/support/wearable/view/BoxInsetLayout;->combineMeasuredStates(II)I

    move-result v10

    .line 99
    .end local v15    # "lp":Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    .end local v16    # "marginBottom":I
    .end local v17    # "marginLeft":I
    .end local v18    # "marginRight":I
    .end local v19    # "marginTop":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 123
    .restart local v15    # "lp":Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    .restart local v16    # "marginBottom":I
    .restart local v17    # "marginLeft":I
    .restart local v18    # "marginRight":I
    .restart local v19    # "marginTop":I
    :cond_5
    iget v0, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    .line 124
    iget v0, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    .line 125
    iget v0, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    .line 126
    iget v0, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    goto :goto_1

    .line 137
    .end local v3    # "child":Landroid/view/View;
    .end local v15    # "lp":Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    .end local v16    # "marginBottom":I
    .end local v17    # "marginLeft":I
    .end local v18    # "marginRight":I
    .end local v19    # "marginTop":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    add-int v21, v21, v2

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    add-int v20, v20, v2

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 148
    .local v13, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_7

    .line 149
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 150
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 153
    :cond_7
    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1, v10}, Landroid/support/wearable/view/BoxInsetLayout;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v10, 0x10

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Landroid/support/wearable/view/BoxInsetLayout;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/support/wearable/view/BoxInsetLayout;->setMeasuredDimension(II)V

    .line 158
    sget v2, Landroid/support/wearable/view/BoxInsetLayout;->FACTOR:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v8, v2

    .line 160
    .local v8, "boxInset":I
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_e

    .line 161
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/wearable/view/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 163
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    .line 166
    .restart local v15    # "lp":Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int v23, v2, v4

    .line 167
    .local v23, "plwf":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingRight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int v24, v2, v4

    .line 168
    .local v24, "prwf":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v25, v2, v4

    .line 169
    .local v25, "ptwf":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingBottom()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v22, v2, v4

    .line 172
    .local v22, "pbwf":I
    const/16 v27, 0x0

    .line 173
    .local v27, "totalPadding":I
    const/16 v26, 0x0

    .line 175
    .local v26, "totalMargin":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v2, :cond_8

    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 176
    add-int v27, v27, v8

    .line 180
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v2, :cond_9

    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    .line 181
    add-int v27, v27, v8

    .line 185
    :goto_4
    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v2, v26

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 195
    .local v11, "childWidthMeasureSpec":I
    :goto_5
    const/16 v27, 0x0

    .line 196
    const/16 v26, 0x0

    .line 197
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v2, :cond_b

    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b

    .line 198
    add-int v27, v27, v8

    .line 202
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v2, :cond_c

    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_c

    .line 203
    add-int v27, v27, v8

    .line 208
    :goto_7
    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_d

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v2, v26

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 216
    .local v9, "childHeightMeasureSpec":I
    :goto_8
    invoke-virtual {v3, v11, v9}, Landroid/view/View;->measure(II)V

    .line 160
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 178
    .end local v9    # "childHeightMeasureSpec":I
    .end local v11    # "childWidthMeasureSpec":I
    :cond_8
    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    add-int v2, v2, v23

    add-int v26, v26, v2

    goto :goto_3

    .line 183
    :cond_9
    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->rightMargin:I

    add-int v2, v2, v24

    add-int v26, v26, v2

    goto :goto_4

    .line 190
    :cond_a
    add-int v2, v27, v26

    iget v4, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v2, v4}, Landroid/support/wearable/view/BoxInsetLayout;->getChildMeasureSpec(III)I

    move-result v11

    .restart local v11    # "childWidthMeasureSpec":I
    goto :goto_5

    .line 200
    :cond_b
    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    add-int v2, v2, v25

    add-int v26, v26, v2

    goto :goto_6

    .line 205
    :cond_c
    iget v2, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->bottomMargin:I

    add-int v2, v2, v22

    add-int v26, v26, v2

    goto :goto_7

    .line 212
    :cond_d
    add-int v2, v27, v26

    iget v4, v15, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v2, v4}, Landroid/support/wearable/view/BoxInsetLayout;->getChildMeasureSpec(III)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto :goto_8

    .line 218
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childHeightMeasureSpec":I
    .end local v11    # "childWidthMeasureSpec":I
    .end local v15    # "lp":Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    .end local v22    # "pbwf":I
    .end local v23    # "plwf":I
    .end local v24    # "prwf":I
    .end local v25    # "ptwf":I
    .end local v26    # "totalMargin":I
    .end local v27    # "totalPadding":I
    :cond_e
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    .line 350
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 351
    return-void
.end method
