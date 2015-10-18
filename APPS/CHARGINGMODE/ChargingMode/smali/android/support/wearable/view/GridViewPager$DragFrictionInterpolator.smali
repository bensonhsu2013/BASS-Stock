.class final Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;
.super Ljava/lang/Object;
.source "GridViewPager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/GridViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DragFrictionInterpolator"
.end annotation


# static fields
.field private static final DEFAULT_FALLOFF:F = 4.0f


# instance fields
.field private final falloffRate:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2267
    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;-><init>(F)V

    .line 2268
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "falloffRate"    # F

    .prologue
    .line 2270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2271
    iput p1, p0, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;->falloffRate:F

    .line 2272
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2277
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    iget v3, p0, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;->falloffRate:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 2278
    .local v0, "e":D
    sub-double v2, v0, v4

    add-double/2addr v4, v0

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;->falloffRate:F

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    return v2
.end method
