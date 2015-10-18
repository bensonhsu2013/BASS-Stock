.class final Landroid/support/wearable/view/GridPagerAdapter$NoOpDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GridPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/GridPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpDrawable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/GridPagerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/wearable/view/GridPagerAdapter$1;

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/support/wearable/view/GridPagerAdapter$NoOpDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 282
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 285
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 288
    return-void
.end method
