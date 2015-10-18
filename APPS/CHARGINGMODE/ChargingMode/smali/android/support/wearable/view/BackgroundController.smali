.class Landroid/support/wearable/view/BackgroundController;
.super Ljava/lang/Object;
.source "BackgroundController.java"

# interfaces
.implements Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;
.implements Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;
.implements Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/BackgroundController$Direction;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

.field private final mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

.field private final mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

.field private final mBaseSourcePage:Landroid/graphics/Point;

.field private mBaseXPos:F

.field private mBaseXSteps:I

.field private mBaseYPos:F

.field private mBaseYSteps:I

.field private final mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

.field private mCrossfadeXPos:F

.field private mCrossfadeYPos:F

.field private final mCurrentPage:Landroid/graphics/Point;

.field private mDirection:Landroid/support/wearable/view/BackgroundController$Direction;

.field private final mFadeSourcePage:Landroid/graphics/Point;

.field private mFadeXSteps:I

.field private mFadeYSteps:I

.field private final mLastPageScrolled:Landroid/graphics/Point;

.field private final mLastSelectedPage:Landroid/graphics/Point;

.field private final mPageBackgrounds:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRowBackgrounds:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollRelativeX:F

.field private mScrollRelativeY:F

.field private mUsingCrossfadeLayer:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->NONE:Landroid/support/wearable/view/BackgroundController$Direction;

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mDirection:Landroid/support/wearable/view/BackgroundController$Direction;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    .line 28
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mLastSelectedPage:Landroid/graphics/Point;

    .line 80
    new-instance v0, Landroid/support/wearable/view/BackgroundController$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/support/wearable/view/BackgroundController$1;-><init>(Landroid/support/wearable/view/BackgroundController;I)V

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mRowBackgrounds:Landroid/support/v4/util/LruCache;

    .line 89
    new-instance v0, Landroid/support/wearable/view/BackgroundController$2;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/support/wearable/view/BackgroundController$2;-><init>(Landroid/support/wearable/view/BackgroundController;I)V

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mPageBackgrounds:Landroid/support/v4/util/LruCache;

    .line 99
    new-instance v0, Landroid/support/wearable/view/ViewportDrawable;

    invoke-direct {v0}, Landroid/support/wearable/view/ViewportDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

    .line 100
    new-instance v0, Landroid/support/wearable/view/ViewportDrawable;

    invoke-direct {v0}, Landroid/support/wearable/view/ViewportDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    .line 101
    new-instance v0, Landroid/support/wearable/view/CrossfadeDrawable;

    invoke-direct {v0}, Landroid/support/wearable/view/CrossfadeDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

    .line 103
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mLastPageScrolled:Landroid/graphics/Point;

    .line 106
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mFadeSourcePage:Landroid/graphics/Point;

    .line 108
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBaseSourcePage:Landroid/graphics/Point;

    .line 127
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

    invoke-virtual {v0, v2}, Landroid/support/wearable/view/CrossfadeDrawable;->setFilterBitmap(Z)V

    .line 128
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v0, v2}, Landroid/support/wearable/view/ViewportDrawable;->setFilterBitmap(Z)V

    .line 129
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v0, v2}, Landroid/support/wearable/view/ViewportDrawable;->setFilterBitmap(Z)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/BackgroundController;)Landroid/support/wearable/view/GridPagerAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/BackgroundController;

    .prologue
    .line 22
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    return-object v0
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 22
    invoke-static {p0}, Landroid/support/wearable/view/BackgroundController;->unpackX(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 22
    invoke-static {p0}, Landroid/support/wearable/view/BackgroundController;->unpackY(I)I

    move-result v0

    return v0
.end method

.method private static pack(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 31
    shl-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0
.end method

.method private static pack(Landroid/graphics/Point;)I
    .locals 2
    .param p0, "p"    # Landroid/graphics/Point;

    .prologue
    .line 35
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Landroid/support/wearable/view/BackgroundController;->pack(II)I

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    sget-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->NONE:Landroid/support/wearable/view/BackgroundController$Direction;

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mDirection:Landroid/support/wearable/view/BackgroundController$Direction;

    .line 340
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mPageBackgrounds:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 341
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mRowBackgrounds:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 342
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ViewportDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ViewportDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    return-void
.end method

.method private static unpackX(I)I
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 39
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static unpackY(I)I
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 43
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method private updateBackgrounds(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/support/wearable/view/BackgroundController$Direction;FF)V
    .locals 8
    .param p1, "current"    # Landroid/graphics/Point;
    .param p2, "scrolling"    # Landroid/graphics/Point;
    .param p3, "dir"    # Landroid/support/wearable/view/BackgroundController$Direction;
    .param p4, "relX"    # F
    .param p5, "relY"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 200
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v1}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 201
    invoke-direct {p0, p1, p4, p5}, Landroid/support/wearable/view/BackgroundController;->updateBaseLayer(Landroid/graphics/Point;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 203
    .local v6, "base":Landroid/graphics/drawable/Drawable;
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_0

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, p5

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_0

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    iget-object v2, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, p5

    iget-object v2, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v2}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_0
    const/4 v7, 0x1

    .line 209
    .local v7, "overScrolling":Z
    :goto_0
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mDirection:Landroid/support/wearable/view/BackgroundController$Direction;

    sget-object v2, Landroid/support/wearable/view/BackgroundController$Direction;->NONE:Landroid/support/wearable/view/BackgroundController$Direction;

    if-eq v1, v2, :cond_1

    if-eqz v7, :cond_3

    .line 210
    :cond_1
    iput-boolean v0, p0, Landroid/support/wearable/view/BackgroundController;->mUsingCrossfadeLayer:Z

    .line 211
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v0, v5}, Landroid/support/wearable/view/ViewportDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

    invoke-virtual {v0, v4}, Landroid/support/wearable/view/CrossfadeDrawable;->setProgress(F)V

    .line 221
    .end local v6    # "base":Landroid/graphics/drawable/Drawable;
    .end local v7    # "overScrolling":Z
    :goto_1
    return-void

    .restart local v6    # "base":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v7, v0

    .line 203
    goto :goto_0

    .restart local v7    # "overScrolling":Z
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 214
    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/BackgroundController;->updateFadingLayer(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/support/wearable/view/BackgroundController$Direction;FFLandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 217
    .end local v6    # "base":Landroid/graphics/drawable/Drawable;
    .end local v7    # "overScrolling":Z
    :cond_4
    iput-boolean v0, p0, Landroid/support/wearable/view/BackgroundController;->mUsingCrossfadeLayer:Z

    .line 218
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v0, v5}, Landroid/support/wearable/view/ViewportDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v0, v5}, Landroid/support/wearable/view/ViewportDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateBaseLayer(Landroid/graphics/Point;FF)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "current"    # Landroid/graphics/Point;
    .param p2, "relX"    # F
    .param p3, "relY"    # F

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 226
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mPageBackgrounds:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Landroid/support/wearable/view/BackgroundController;->pack(Landroid/graphics/Point;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 227
    .local v0, "base":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mBaseSourcePage:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 228
    sget-object v1, Landroid/support/wearable/view/GridPagerAdapter;->BACKGROUND_NONE:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mRowBackgrounds:Landroid/support/v4/util/LruCache;

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "base":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 231
    .restart local v0    # "base":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/wearable/view/BackgroundController;->mBaseXSteps:I

    .line 232
    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/wearable/view/BackgroundController;->mBaseXPos:F

    .line 239
    :goto_0
    iput v5, p0, Landroid/support/wearable/view/BackgroundController;->mBaseYSteps:I

    .line 240
    iput v4, p0, Landroid/support/wearable/view/BackgroundController;->mBaseYPos:F

    .line 242
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v1, v0}, Landroid/support/wearable/view/ViewportDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

    iget v2, p0, Landroid/support/wearable/view/BackgroundController;->mBaseXSteps:I

    iget v3, p0, Landroid/support/wearable/view/BackgroundController;->mBaseYSteps:I

    invoke-virtual {v1, v2, v3}, Landroid/support/wearable/view/ViewportDrawable;->setStops(II)V

    .line 244
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

    iget v2, p0, Landroid/support/wearable/view/BackgroundController;->mBaseXPos:F

    add-float/2addr v2, p2

    iget v3, p0, Landroid/support/wearable/view/BackgroundController;->mBaseYPos:F

    add-float/2addr v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/support/wearable/view/ViewportDrawable;->setPosition(FF)V

    .line 245
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

    iget-object v2, p0, Landroid/support/wearable/view/BackgroundController;->mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/CrossfadeDrawable;->setBase(Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-object v0

    .line 235
    :cond_0
    iput v5, p0, Landroid/support/wearable/view/BackgroundController;->mBaseXSteps:I

    .line 236
    iput v4, p0, Landroid/support/wearable/view/BackgroundController;->mBaseXPos:F

    goto :goto_0
.end method

.method private updateFadingLayer(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/support/wearable/view/BackgroundController$Direction;FFLandroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "current"    # Landroid/graphics/Point;
    .param p2, "scrolling"    # Landroid/graphics/Point;
    .param p3, "dir"    # Landroid/support/wearable/view/BackgroundController$Direction;
    .param p4, "relX"    # F
    .param p5, "relY"    # F
    .param p6, "base"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 252
    iget v6, p2, Landroid/graphics/Point;->y:I

    sget-object v5, Landroid/support/wearable/view/BackgroundController$Direction;->DOWN:Landroid/support/wearable/view/BackgroundController$Direction;

    if-ne p3, v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    add-int v1, v6, v5

    .line 253
    .local v1, "crossfadeY":I
    iget v6, p2, Landroid/graphics/Point;->x:I

    sget-object v5, Landroid/support/wearable/view/BackgroundController$Direction;->RIGHT:Landroid/support/wearable/view/BackgroundController$Direction;

    if-ne p3, v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    add-int v0, v6, v5

    .line 256
    .local v0, "crossfadeX":I
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-eq v1, v5, :cond_0

    .line 257
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v6, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v1, v6}, Landroid/support/wearable/view/GridPagerAdapter;->getCurrentColumnForRow(II)I

    move-result v0

    .line 259
    :cond_0
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mPageBackgrounds:Landroid/support/v4/util/LruCache;

    invoke-static {v0, v1}, Landroid/support/wearable/view/BackgroundController;->pack(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 260
    .local v2, "fade":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mFadeSourcePage:Landroid/graphics/Point;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, "fadeIsRowBg":Z
    sget-object v5, Landroid/support/wearable/view/GridPagerAdapter;->BACKGROUND_NONE:Landroid/graphics/drawable/Drawable;

    if-ne v2, v5, :cond_1

    .line 263
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mRowBackgrounds:Landroid/support/v4/util/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fade":Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 264
    .restart local v2    # "fade":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    .line 266
    :cond_1
    if-ne p6, v2, :cond_4

    .line 271
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/support/wearable/view/BackgroundController;->mUsingCrossfadeLayer:Z

    .line 272
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/wearable/view/ViewportDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/wearable/view/CrossfadeDrawable;->setFading(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/wearable/view/CrossfadeDrawable;->setProgress(F)V

    .line 299
    :goto_2
    return-void

    .line 252
    .end local v0    # "crossfadeX":I
    .end local v1    # "crossfadeY":I
    .end local v2    # "fade":Landroid/graphics/drawable/Drawable;
    .end local v3    # "fadeIsRowBg":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 253
    .restart local v1    # "crossfadeY":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 276
    .restart local v0    # "crossfadeX":I
    .restart local v2    # "fade":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "fadeIsRowBg":Z
    :cond_4
    if-eqz v3, :cond_6

    .line 278
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v6}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v5, v6}, Landroid/support/wearable/view/Func;->clamp(III)I

    move-result v4

    .line 279
    .local v4, "physRow":I
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v5, v4}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroid/support/wearable/view/BackgroundController;->mFadeXSteps:I

    .line 280
    invoke-virtual {p3}, Landroid/support/wearable/view/BackgroundController$Direction;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 281
    iget v5, p1, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeXPos:F

    .line 290
    .end local v4    # "physRow":I
    :goto_3
    const/4 v5, 0x3

    iput v5, p0, Landroid/support/wearable/view/BackgroundController;->mFadeYSteps:I

    .line 291
    # getter for: Landroid/support/wearable/view/BackgroundController$Direction;->y:I
    invoke-static {p3}, Landroid/support/wearable/view/BackgroundController$Direction;->access$400(Landroid/support/wearable/view/BackgroundController$Direction;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeYPos:F

    .line 293
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/support/wearable/view/BackgroundController;->mUsingCrossfadeLayer:Z

    .line 294
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v5, v2}, Landroid/support/wearable/view/ViewportDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    iget v6, p0, Landroid/support/wearable/view/BackgroundController;->mFadeXSteps:I

    iget v7, p0, Landroid/support/wearable/view/BackgroundController;->mFadeYSteps:I

    invoke-virtual {v5, v6, v7}, Landroid/support/wearable/view/ViewportDrawable;->setStops(II)V

    .line 296
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    iget v6, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeXPos:F

    add-float/2addr v6, p4

    iget v7, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeYPos:F

    add-float/2addr v7, p5

    invoke-virtual {v5, v6, v7}, Landroid/support/wearable/view/ViewportDrawable;->setPosition(FF)V

    .line 297
    iget-object v5, p0, Landroid/support/wearable/view/BackgroundController;->mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

    iget-object v6, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v5, v6}, Landroid/support/wearable/view/CrossfadeDrawable;->setFading(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 283
    .restart local v4    # "physRow":I
    :cond_5
    add-int/lit8 v5, v0, 0x1

    int-to-float v5, v5

    iput v5, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeXPos:F

    goto :goto_3

    .line 286
    .end local v4    # "physRow":I
    :cond_6
    const/4 v5, 0x3

    iput v5, p0, Landroid/support/wearable/view/BackgroundController;->mFadeXSteps:I

    .line 287
    # getter for: Landroid/support/wearable/view/BackgroundController$Direction;->x:I
    invoke-static {p3}, Landroid/support/wearable/view/BackgroundController$Direction;->access$300(Landroid/support/wearable/view/BackgroundController$Direction;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeXPos:F

    goto :goto_3
.end method


# virtual methods
.method public attachTo(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

    return-object v0
.end method

.method public onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V
    .locals 2
    .param p1, "oldAdapter"    # Landroid/support/wearable/view/GridPagerAdapter;
    .param p2, "newAdapter"    # Landroid/support/wearable/view/GridPagerAdapter;

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-direct {p0}, Landroid/support/wearable/view/BackgroundController;->reset()V

    .line 328
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mLastSelectedPage:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 329
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 330
    iput-object p2, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 331
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/support/wearable/view/BackgroundController;->reset()V

    .line 336
    return-void
.end method

.method public onPageBackgroundChanged(II)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mPageBackgrounds:Landroid/support/v4/util/LruCache;

    invoke-static {p2, p1}, Landroid/support/wearable/view/BackgroundController;->pack(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    sget-object v3, Landroid/support/wearable/view/BackgroundController$Direction;->NONE:Landroid/support/wearable/view/BackgroundController$Direction;

    iget v4, p0, Landroid/support/wearable/view/BackgroundController;->mScrollRelativeX:F

    iget v5, p0, Landroid/support/wearable/view/BackgroundController;->mScrollRelativeY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/wearable/view/BackgroundController;->updateBackgrounds(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/support/wearable/view/BackgroundController$Direction;FF)V

    .line 313
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    sget-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->NONE:Landroid/support/wearable/view/BackgroundController$Direction;

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mDirection:Landroid/support/wearable/view/BackgroundController$Direction;

    .line 145
    :cond_0
    return-void
.end method

.method public onPageScrolled(IIFFII)V
    .locals 8
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "rowOffset"    # F
    .param p4, "colOffset"    # F
    .param p5, "rowOffsetPx"    # I
    .param p6, "colOffsetPx"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 152
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mDirection:Landroid/support/wearable/view/BackgroundController$Direction;

    sget-object v1, Landroid/support/wearable/view/BackgroundController$Direction;->NONE:Landroid/support/wearable/view/BackgroundController$Direction;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mLastSelectedPage:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mLastPageScrolled:Landroid/graphics/Point;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 155
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mLastPageScrolled:Landroid/graphics/Point;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Point;->set(II)V

    .line 157
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mLastSelectedPage:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/support/wearable/view/BackgroundController;->mLastSelectedPage:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, "relX":F
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p1, v0

    invoke-static {v0, v3, v7}, Landroid/support/wearable/view/Func;->clamp(III)I

    move-result v0

    int-to-float v0, v0

    add-float v5, v0, p3

    .line 168
    .local v5, "relY":F
    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p2, v0

    invoke-static {v0, v3, v7}, Landroid/support/wearable/view/Func;->clamp(III)I

    move-result v0

    int-to-float v0, v0

    add-float v4, v0, p4

    .line 172
    :cond_1
    invoke-static {v4, v5}, Landroid/support/wearable/view/BackgroundController$Direction;->fromOffset(FF)Landroid/support/wearable/view/BackgroundController$Direction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mDirection:Landroid/support/wearable/view/BackgroundController$Direction;

    .line 173
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/support/wearable/view/BackgroundController;->mLastPageScrolled:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/support/wearable/view/BackgroundController;->mDirection:Landroid/support/wearable/view/BackgroundController$Direction;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/wearable/view/BackgroundController;->updateBackgrounds(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/support/wearable/view/BackgroundController$Direction;FF)V

    .line 184
    :goto_0
    iput v4, p0, Landroid/support/wearable/view/BackgroundController;->mScrollRelativeX:F

    .line 185
    iput v5, p0, Landroid/support/wearable/view/BackgroundController;->mScrollRelativeY:F

    .line 186
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

    iget v1, p0, Landroid/support/wearable/view/BackgroundController;->mBaseXPos:F

    add-float/2addr v1, v4

    iget v2, p0, Landroid/support/wearable/view/BackgroundController;->mBaseYPos:F

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/view/ViewportDrawable;->setPosition(FF)V

    .line 187
    iget-boolean v0, p0, Landroid/support/wearable/view/BackgroundController;->mUsingCrossfadeLayer:Z

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mDirection:Landroid/support/wearable/view/BackgroundController$Direction;

    invoke-virtual {v0}, Landroid/support/wearable/view/BackgroundController$Direction;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 189
    .local v6, "progress":F
    :goto_1
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBackground:Landroid/support/wearable/view/CrossfadeDrawable;

    invoke-virtual {v0, v6}, Landroid/support/wearable/view/CrossfadeDrawable;->setProgress(F)V

    .line 190
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    iget v1, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeXPos:F

    add-float/2addr v1, v4

    iget v2, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeYPos:F

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/view/ViewportDrawable;->setPosition(FF)V

    .line 192
    .end local v6    # "progress":F
    :cond_2
    return-void

    .line 176
    .end local v4    # "relX":F
    .end local v5    # "relY":F
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mDirection:Landroid/support/wearable/view/BackgroundController$Direction;

    invoke-virtual {v0}, Landroid/support/wearable/view/BackgroundController$Direction;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    const/4 v4, 0x0

    .line 178
    .restart local v4    # "relX":F
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p1, v0

    invoke-static {v0, v3, v7}, Landroid/support/wearable/view/Func;->clamp(III)I

    move-result v0

    int-to-float v0, v0

    add-float v5, v0, p3

    .restart local v5    # "relY":F
    goto :goto_0

    .line 180
    .end local v4    # "relX":F
    .end local v5    # "relY":F
    :cond_4
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p2, v0

    invoke-static {v0, v3, v7}, Landroid/support/wearable/view/Func;->clamp(III)I

    move-result v0

    int-to-float v0, v0

    add-float v4, v0, p4

    .line 181
    .restart local v4    # "relX":F
    const/4 v5, 0x0

    .restart local v5    # "relY":F
    goto :goto_0

    .line 188
    :cond_5
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    goto :goto_1
.end method

.method public onPageSelected(II)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 303
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mLastSelectedPage:Landroid/graphics/Point;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Point;->set(II)V

    .line 304
    return-void
.end method

.method public onRowBackgroundChanged(I)V
    .locals 6
    .param p1, "row"    # I

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mRowBackgrounds:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 319
    iget-object v1, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/support/wearable/view/BackgroundController;->mCurrentPage:Landroid/graphics/Point;

    sget-object v3, Landroid/support/wearable/view/BackgroundController$Direction;->NONE:Landroid/support/wearable/view/BackgroundController$Direction;

    iget v4, p0, Landroid/support/wearable/view/BackgroundController;->mScrollRelativeX:F

    iget v5, p0, Landroid/support/wearable/view/BackgroundController;->mScrollRelativeY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/wearable/view/BackgroundController;->updateBackgrounds(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/support/wearable/view/BackgroundController$Direction;FF)V

    .line 322
    :cond_0
    return-void
.end method

.method public setBackgroundStepSizePct(F)V
    .locals 1
    .param p1, "stepSizePct"    # F

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mBaseLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/ViewportDrawable;->setStepSizePct(F)V

    .line 348
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController;->mCrossfadeLayer:Landroid/support/wearable/view/ViewportDrawable;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/ViewportDrawable;->setStepSizePct(F)V

    .line 349
    return-void
.end method
