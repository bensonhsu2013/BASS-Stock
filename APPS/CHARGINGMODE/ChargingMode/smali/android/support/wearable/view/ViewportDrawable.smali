.class Landroid/support/wearable/view/ViewportDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ViewportDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_STEP_SIZE_PCT:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "ViewportDrawable"


# instance fields
.field private mAlpha:I

.field private mCenterOffsetX:I

.field private mCenterOffsetY:I

.field private mChangingConfigs:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorFilterColor:I

.field private mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

.field private mDither:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDrawableBounds:Landroid/graphics/Rect;

.field private mFilterBitmap:Z

.field private mHeightStepSize:F

.field private mMaxPosX:I

.field private mMaxPosY:I

.field private mPositionX:F

.field private mPositionY:F

.field private mScale:F

.field private mSrcHeight:I

.field private mSrcWidth:I

.field private mStepSizePct:F

.field private mWidthStepSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/view/ViewportDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 89
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mAlpha:I

    .line 51
    iput-boolean v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mDither:Z

    .line 55
    iput-boolean v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mFilterBitmap:Z

    .line 59
    iput v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    .line 60
    iput v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    .line 63
    iput v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    .line 64
    iput v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    .line 75
    iput v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    .line 83
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mStepSizePct:F

    .line 90
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/ViewportDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method private static limit(FII)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 315
    int-to-float v0, p1

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 316
    int-to-float p0, p1

    .line 319
    .end local p0    # "value":F
    :cond_0
    :goto_0
    return p0

    .line 317
    .restart local p0    # "value":F
    :cond_1
    int-to-float v0, p2

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 318
    int-to-float p0, p2

    goto :goto_0
.end method

.method private recomputeScale()V
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 238
    iget-object v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    iget-object v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcWidth:I

    .line 251
    iget-object v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcHeight:I

    .line 252
    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcWidth:I

    if-eq v4, v6, :cond_2

    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcHeight:I

    if-ne v4, v6, :cond_3

    .line 259
    :cond_2
    iget-object v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcWidth:I

    .line 260
    iget-object v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcHeight:I

    .line 261
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    .line 262
    iput v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mWidthStepSize:F

    .line 263
    iput v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mHeightStepSize:F

    .line 264
    iput v7, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetX:I

    .line 265
    iput v7, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetY:I

    goto :goto_0

    .line 268
    :cond_3
    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mStepSizePct:F

    iget-object v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mWidthStepSize:F

    .line 269
    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mStepSizePct:F

    iget-object v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mHeightStepSize:F

    .line 274
    iget-object v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/wearable/view/ViewportDrawable;->mWidthStepSize:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 275
    .local v1, "minWidth":F
    iget-object v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/wearable/view/ViewportDrawable;->mHeightStepSize:F

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 283
    .local v0, "minHeight":F
    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcWidth:I

    int-to-float v4, v4

    div-float v4, v1, v4

    iget v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcHeight:I

    int-to-float v5, v5

    div-float v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    .line 284
    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    mul-float v3, v4, v5

    .line 285
    .local v3, "scaledWidth":F
    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcHeight:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    mul-float v2, v4, v5

    .line 291
    .local v2, "scaledHeight":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_4

    .line 292
    sub-float v4, v3, v1

    div-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetX:I

    .line 293
    iput v7, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetY:I

    goto/16 :goto_0

    .line 295
    :cond_4
    sub-float v4, v2, v0

    div-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetY:I

    .line 296
    iput v7, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetX:I

    goto/16 :goto_0
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    .line 357
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 361
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 302
    iget-object v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 304
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 305
    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetX:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mWidthStepSize:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 306
    .local v0, "tx":F
    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetY:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mHeightStepSize:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 307
    .local v1, "ty":F
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    iget v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 309
    iget-object v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 312
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mChangingConfigs:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 368
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 233
    invoke-direct {p0}, Landroid/support/wearable/view/ViewportDrawable;->recomputeScale()V

    .line 234
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->invalidateSelf()V

    .line 235
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 454
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 416
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 417
    iput p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mAlpha:I

    .line 418
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 422
    :cond_0
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .prologue
    .line 372
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mChangingConfigs:I

    if-eq v0, p1, :cond_0

    .line 373
    iput p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mChangingConfigs:I

    .line 374
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 378
    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 344
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterColor:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p2, :cond_1

    .line 345
    :cond_0
    iput p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterColor:I

    .line 346
    iput-object p2, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    .line 347
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 351
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 427
    iput-object p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 428
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 432
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 334
    iget-boolean v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDither:Z

    if-eq v0, p1, :cond_0

    .line 335
    iput-boolean p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mDither:Z

    .line 336
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 340
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 94
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v3, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 98
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 103
    :cond_2
    iput-object p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 106
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 107
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 108
    .local v2, "w":I
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 109
    .local v1, "h":I
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 110
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 117
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    :goto_1
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_3

    .line 127
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 129
    :cond_3
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_4

    .line 130
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterColor:I

    iget-object v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 132
    :cond_4
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mDither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 133
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mFilterBitmap:Z

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 134
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 135
    invoke-direct {p0}, Landroid/support/wearable/view/ViewportDrawable;->recomputeScale()V

    .line 136
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->invalidateSelf()V

    goto/16 :goto_0

    .line 123
    :cond_5
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 324
    iget-boolean v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mFilterBitmap:Z

    if-eq v0, p1, :cond_0

    .line 325
    iput-boolean p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mFilterBitmap:Z

    .line 326
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 330
    :cond_0
    return-void
.end method

.method public setHorizontalPosition(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 179
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    invoke-virtual {p0, p1, v0}, Landroid/support/wearable/view/ViewportDrawable;->setPosition(FF)V

    .line 180
    return-void
.end method

.method public setHorizontalStops(I)V
    .locals 1
    .param p1, "stops"    # I

    .prologue
    .line 214
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/wearable/view/ViewportDrawable;->setStops(II)V

    .line 215
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 151
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    invoke-static {p1, v1, v0}, Landroid/support/wearable/view/ViewportDrawable;->limit(FII)F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    .line 156
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    invoke-static {p2, v1, v0}, Landroid/support/wearable/view/ViewportDrawable;->limit(FII)F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    .line 157
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->invalidateSelf()V

    .line 159
    :cond_1
    return-void
.end method

.method public setStepSizePct(F)V
    .locals 0
    .param p1, "stepSizePct"    # F

    .prologue
    .line 464
    iput p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mStepSizePct:F

    .line 465
    return-void
.end method

.method public setStops(II)V
    .locals 5
    .param p1, "xStops"    # I
    .param p2, "yStops"    # I

    .prologue
    const/4 v4, 0x0

    .line 192
    add-int/lit8 v2, p1, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 193
    .local v0, "maxX":I
    add-int/lit8 v2, p2, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 194
    .local v1, "maxY":I
    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    if-eq v1, v2, :cond_1

    .line 198
    :cond_0
    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    .line 199
    iput v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    .line 200
    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    iget v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    invoke-static {v2, v4, v3}, Landroid/support/wearable/view/ViewportDrawable;->limit(FII)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    .line 201
    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    iget v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    invoke-static {v2, v4, v3}, Landroid/support/wearable/view/ViewportDrawable;->limit(FII)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    .line 202
    invoke-direct {p0}, Landroid/support/wearable/view/ViewportDrawable;->recomputeScale()V

    .line 203
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->invalidateSelf()V

    .line 205
    :cond_1
    return-void
.end method

.method public setVerticalPosition(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 168
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    invoke-virtual {p0, v0, p1}, Landroid/support/wearable/view/ViewportDrawable;->setPosition(FF)V

    .line 169
    return-void
.end method

.method public setVerticalStops(I)V
    .locals 1
    .param p1, "stops"    # I

    .prologue
    .line 224
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/wearable/view/ViewportDrawable;->setStops(II)V

    .line 225
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 461
    :cond_0
    return-void
.end method
