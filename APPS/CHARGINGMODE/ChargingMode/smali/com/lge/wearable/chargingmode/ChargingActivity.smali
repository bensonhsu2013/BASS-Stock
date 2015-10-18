.class public Lcom/lge/wearable/chargingmode/ChargingActivity;
.super Landroid/support/wearable/activity/WearableActivity;
.source "ChargingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wearable/chargingmode/ChargingActivity$ChargingContentObserver;
    }
.end annotation


# static fields
.field public static ANIMATION_DURATION:I = 0x0

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_NORMAL:I = 0x2

.field public static final STATE_PLAY:I = 0x1


# instance fields
.field protected ACTIVE_INTERVAL_MS:J

.field private ampmTextView:Landroid/widget/TextView;

.field private batteryPercentTextView:Landroid/widget/TextView;

.field private batteryRemainTimeTextView:Landroid/widget/TextView;

.field private batteryTextView:Landroid/widget/TextView;

.field private color_blue:I

.field private color_gray:I

.field private color_orange:I

.field private gageWidget:Lcom/lge/wearable/chargingmode/GageWidget;

.field private iconIcon:Landroid/widget/ImageView;

.field private iconLayout:Landroid/widget/FrameLayout;

.field private mBatteryLevel:I

.field private mRegistered:Z

.field private mRemainTime:J

.field private mState:I

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private status:Lcom/android/internal/app/IBatteryStats;

.field private timeTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x9c4

    sput v0, Lcom/lge/wearable/chargingmode/ChargingActivity;->ANIMATION_DURATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/wearable/activity/WearableActivity;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mRemainTime:J

    .line 55
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->ACTIVE_INTERVAL_MS:J

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mState:I

    .line 63
    new-instance v0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/wearable/chargingmode/ChargingActivity$1;-><init>(Lcom/lge/wearable/chargingmode/ChargingActivity;)V

    iput-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 443
    return-void
.end method

.method static synthetic access$000(Lcom/lge/wearable/chargingmode/ChargingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/wearable/chargingmode/ChargingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/wearable/chargingmode/ChargingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mRemainTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/lge/wearable/chargingmode/ChargingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mState:I

    return p1
.end method

.method static synthetic access$102(Lcom/lge/wearable/chargingmode/ChargingActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mRemainTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/lge/wearable/chargingmode/ChargingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->refreshBattery()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/wearable/chargingmode/ChargingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->refreshTimeTextView()V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/wearable/chargingmode/ChargingActivity;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->status:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/wearable/chargingmode/ChargingActivity;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;
    .param p1, "x1"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getRemainTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/wearable/chargingmode/ChargingActivity;)Lcom/lge/wearable/chargingmode/GageWidget;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->gageWidget:Lcom/lge/wearable/chargingmode/GageWidget;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/wearable/chargingmode/ChargingActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;
    .param p1, "x1"    # F

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->setRotateBatteryIcon(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/lge/wearable/chargingmode/ChargingActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;
    .param p1, "x1"    # F

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->setIconColorAnimation(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/wearable/chargingmode/ChargingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wearable/chargingmode/ChargingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getRemainTime(J)Ljava/lang/String;
    .locals 11
    .param p1, "time"    # J

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x3c

    .line 408
    div-long v2, p1, v8

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 409
    .local v0, "h":I
    div-long v2, p1, v8

    div-long/2addr v2, v4

    rem-long/2addr v2, v4

    long-to-int v1, v2

    .line 410
    .local v1, "m":I
    if-gtz v0, :cond_0

    .line 411
    const v2, 0x7f060002

    invoke-virtual {p0, v2}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 413
    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private interpolate(IIF)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "proportion"    # F

    .prologue
    .line 424
    int-to-float v0, p1

    sub-int v1, p2, p1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private interpolateColor(IIF)I
    .locals 9
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "proportion"    # F

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 429
    new-array v1, v8, [I

    .line 430
    .local v1, "rgba":[I
    new-array v2, v8, [I

    .line 431
    .local v2, "rgbb":[I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    aput v3, v1, v5

    .line 432
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    aput v3, v1, v6

    .line 433
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    aput v3, v1, v7

    .line 434
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    aput v3, v2, v5

    .line 435
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    aput v3, v2, v6

    .line 436
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    aput v3, v2, v7

    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 438
    aget v3, v1, v0

    aget v4, v2, v0

    invoke-direct {p0, v3, v4, p3}, Lcom/lge/wearable/chargingmode/ChargingActivity;->interpolate(IIF)I

    move-result v3

    aput v3, v2, v0

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    aget v3, v2, v5

    aget v4, v2, v6

    aget v5, v2, v7

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method private playAnimation(I)V
    .locals 4
    .param p1, "animDuration"    # I

    .prologue
    .line 210
    const-string v1, "playAnimation"

    invoke-static {v1}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 211
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 212
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 213
    new-instance v1, Lcom/lge/wearable/chargingmode/ChargingActivity$2;

    invoke-direct {v1, p0}, Lcom/lge/wearable/chargingmode/ChargingActivity$2;-><init>(Lcom/lge/wearable/chargingmode/ChargingActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    new-instance v1, Lcom/lge/wearable/chargingmode/ChargingActivity$3;

    invoke-direct {v1, p0}, Lcom/lge/wearable/chargingmode/ChargingActivity$3;-><init>(Lcom/lge/wearable/chargingmode/ChargingActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 248
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 249
    return-void
.end method

.method private refreshBattery()V
    .locals 6

    .prologue
    .line 376
    const-string v1, "refreshBattery"

    invoke-static {v1}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 377
    iget v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f050001

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_gray:I

    .line 380
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f050004

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_orange:I

    .line 382
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f050005

    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_blue:I

    .line 385
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f020006

    :goto_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 388
    .local v0, "newDrawable":Landroid/graphics/drawable/GradientDrawable;
    iget v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_5

    iget v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_orange:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 389
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->iconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGageTo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%, isAmbientMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->gageWidget:Lcom/lge/wearable/chargingmode/GageWidget;

    iget v2, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/wearable/chargingmode/GageWidget;->setGageTo(FZ)V

    .line 392
    const-string v1, "setRotateBatteryIcon"

    invoke-static {v1}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 393
    iget v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->setRotateBatteryIcon(F)V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextBattery.setText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batteryRemainTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mRemainTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 397
    iget-wide v2, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mRemainTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 398
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryRemainTimeTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryRemainTimeTextView:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mRemainTime:J

    invoke-direct {p0, v2, v3}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getRemainTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryRemainTimeTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 405
    .end local v0    # "newDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    :goto_5
    return-void

    .line 378
    :cond_1
    const/high16 v1, 0x7f050000

    goto/16 :goto_0

    .line 380
    :cond_2
    const v1, 0x7f050002

    goto/16 :goto_1

    .line 382
    :cond_3
    const v1, 0x7f050003

    goto/16 :goto_2

    .line 385
    :cond_4
    const v1, 0x7f020005

    goto/16 :goto_3

    .line 388
    .restart local v0    # "newDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_5
    iget v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_blue:I

    goto/16 :goto_4

    .line 402
    :cond_6
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryRemainTimeTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private refreshTimeTextView()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xa

    .line 177
    const-string v6, "refreshTimeTextView"

    invoke-static {v6}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 179
    .local v0, "calendar":Ljava/util/Calendar;
    const-string v4, ""

    .line 180
    .local v4, "stringHour":Ljava/lang/String;
    const-string v5, ""

    .line 181
    .local v5, "stringMin":Ljava/lang/String;
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 182
    .local v1, "intHour":I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 183
    .local v2, "intMin":I
    const/16 v6, 0x9

    const/4 v7, 0x1

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v6, v7, v8}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "stringAmPM":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 185
    if-nez v1, :cond_0

    .line 186
    const/16 v1, 0xc

    .line 188
    :cond_0
    if-le v1, v10, :cond_1

    .line 189
    add-int/lit8 v1, v1, -0xc

    .line 191
    :cond_1
    iget-object v6, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->ampmTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v6, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->ampmTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    if-ge v1, v9, :cond_3

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 201
    :goto_1
    if-ge v2, v9, :cond_4

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    :goto_2
    iget-object v6, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->timeTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void

    .line 194
    :cond_2
    iget-object v6, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->ampmTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 204
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private refreshView()V
    .locals 1

    .prologue
    .line 290
    const-string v0, "refreshView"

    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->refreshBattery()V

    .line 292
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->refreshTimeTextView()V

    .line 293
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->gageWidget:Lcom/lge/wearable/chargingmode/GageWidget;

    invoke-virtual {v0}, Lcom/lge/wearable/chargingmode/GageWidget;->invalidate()V

    .line 294
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 260
    iget-boolean v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mRegistered:Z

    if-nez v1, :cond_0

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mRegistered:Z

    .line 274
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setIconColorAnimation(F)V
    .locals 4
    .param p1, "level"    # F

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f050001

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_gray:I

    .line 362
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f050004

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_orange:I

    .line 364
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f050005

    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_blue:I

    .line 367
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f020006

    :goto_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 370
    .local v0, "newDrawable":Landroid/graphics/drawable/GradientDrawable;
    iget v2, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_gray:I

    iget v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    const/16 v3, 0xf

    if-ge v1, v3, :cond_4

    iget v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_orange:I

    :goto_4
    iget v3, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-direct {p0, v2, v1, v3}, Lcom/lge/wearable/chargingmode/ChargingActivity;->interpolateColor(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 372
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->iconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 373
    return-void

    .line 360
    .end local v0    # "newDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    const/high16 v1, 0x7f050000

    goto :goto_0

    .line 362
    :cond_1
    const v1, 0x7f050002

    goto :goto_1

    .line 364
    :cond_2
    const v1, 0x7f050003

    goto :goto_2

    .line 367
    :cond_3
    const v1, 0x7f020005

    goto :goto_3

    .line 370
    .restart local v0    # "newDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_4
    iget v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->color_blue:I

    goto :goto_4
.end method

.method private setRotateBatteryIcon(F)V
    .locals 4
    .param p1, "level"    # F

    .prologue
    const v3, 0x40633333    # 3.55f

    .line 418
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->iconLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v2, p1, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 419
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->iconIcon:Landroid/widget/ImageView;

    const/high16 v1, -0x3f600000    # -5.0f

    mul-float v2, p1, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 421
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mRegistered:Z

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public getBatteryLevel()F
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 347
    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/lge/wearable/chargingmode/ChargingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 349
    .local v0, "batteryIntent":Landroid/content/Intent;
    const-string v3, "level"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 350
    .local v1, "level":I
    const-string v3, "scale"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 352
    .local v2, "scale":I
    if-eq v1, v6, :cond_0

    if-ne v2, v6, :cond_1

    .line 353
    :cond_0
    const/high16 v3, 0x42480000    # 50.0f

    .line 355
    :goto_0
    return v3

    :cond_1
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    goto :goto_0
.end method

.method protected onAmbientModeChanged(Z)V
    .locals 1
    .param p1, "isAmbient"    # Z

    .prologue
    .line 284
    const-string v0, "onAmbientModeChanged"

    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->gageWidget:Lcom/lge/wearable/chargingmode/GageWidget;

    invoke-virtual {v0, p1}, Lcom/lge/wearable/chargingmode/GageWidget;->setIsAmbient(Z)V

    .line 286
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->refreshView()V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 140
    invoke-super {p0, p1}, Landroid/support/wearable/activity/WearableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->setContentView(I)V

    .line 143
    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->status:Lcom/android/internal/app/IBatteryStats;

    .line 145
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getBatteryLevel()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    .line 147
    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->iconIcon:Landroid/widget/ImageView;

    .line 148
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->iconLayout:Landroid/widget/FrameLayout;

    .line 149
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/wearable/chargingmode/GageWidget;

    iput-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->gageWidget:Lcom/lge/wearable/chargingmode/GageWidget;

    .line 150
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryTextView:Landroid/widget/TextView;

    .line 151
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryRemainTimeTextView:Landroid/widget/TextView;

    .line 152
    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryPercentTextView:Landroid/widget/TextView;

    .line 153
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->timeTextView:Landroid/widget/TextView;

    .line 154
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->ampmTextView:Landroid/widget/TextView;

    .line 156
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->ampmTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 157
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->timeTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryPercentTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 159
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->batteryRemainTimeTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->refreshTimeTextView()V

    .line 163
    sget v1, Lcom/lge/wearable/chargingmode/ChargingActivity;->ANIMATION_DURATION:I

    div-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I

    mul-int v0, v1, v2

    .line 165
    .local v0, "animDuration":I
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->iconLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 166
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity;->iconLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x431b0000    # 155.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 167
    invoke-direct {p0, v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->playAnimation(I)V

    .line 168
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->setAmbientEnabled()V

    .line 169
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->isAmbient()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity;->onAmbientModeChanged(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/lge/wearable/chargingmode/ChargingActivity$ChargingContentObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/lge/wearable/chargingmode/ChargingActivity$ChargingContentObserver;-><init>(Lcom/lge/wearable/chargingmode/ChargingActivity;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->unregisterReceiver()V

    .line 255
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lge/wearable/chargingmode/ChargingApplication;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/wearable/chargingmode/ChargingApplication;->mDockState:I

    .line 256
    invoke-super {p0}, Landroid/support/wearable/activity/WearableActivity;->onDestroy()V

    .line 257
    return-void
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "ambientDetails"    # Landroid/os/Bundle;

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/support/wearable/activity/WearableActivity;->onEnterAmbient(Landroid/os/Bundle;)V

    .line 299
    const-string v0, "onEnterAmbient"

    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->onAmbientModeChanged(Z)V

    .line 301
    return-void
.end method

.method public onExitAmbient()V
    .locals 1

    .prologue
    .line 311
    const-string v0, "onExitAmbient"

    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->onAmbientModeChanged(Z)V

    .line 313
    invoke-super {p0}, Landroid/support/wearable/activity/WearableActivity;->onExitAmbient()V

    .line 314
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 324
    move-object v0, p0

    .line 325
    .local v0, "ctx":Landroid/app/Activity;
    const-string v2, "onNewIntent"

    invoke-static {v2}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 326
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 327
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/lge/wearable/chargingmode/ChargingActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/lge/wearable/chargingmode/ChargingActivity$4;-><init>(Lcom/lge/wearable/chargingmode/ChargingActivity;Landroid/app/Activity;)V

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    invoke-super {p0, p1}, Landroid/support/wearable/activity/WearableActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 336
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/support/wearable/activity/WearableActivity;->onPause()V

    .line 319
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Landroid/support/wearable/activity/WearableActivity;->onResume()V

    .line 341
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->registerReceiver()V

    .line 344
    return-void
.end method

.method public onUpdateAmbient()V
    .locals 1

    .prologue
    .line 305
    const-string v0, "onUpdateAmbient"

    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/ChargingActivity;->refreshView()V

    .line 307
    return-void
.end method
