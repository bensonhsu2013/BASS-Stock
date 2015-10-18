.class public Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
.super Ljava/lang/Object;
.source "WatchFaceStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/watchface/WatchFaceStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAmbientPeekMode:I

.field private mBackgroundVisibility:I

.field private mCardPeekMode:I

.field private mCardProgressMode:I

.field private final mComponent:Landroid/content/ComponentName;

.field private mHotwordIndicatorGravity:I

.field private mPeekOpacityMode:I

.field private mShowSystemUiTime:Z

.field private mShowUnreadCountIndicator:Z

.field private mStatusBarGravity:I

.field private mViewProtectionMode:I


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 2
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    .line 435
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/content/ComponentName;)V

    .line 436
    return-void
.end method

.method private constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardPeekMode:I

    .line 396
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardProgressMode:I

    .line 398
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mBackgroundVisibility:I

    .line 400
    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowSystemUiTime:Z

    .line 402
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mAmbientPeekMode:I

    .line 404
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mPeekOpacityMode:I

    .line 406
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mViewProtectionMode:I

    .line 408
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mStatusBarGravity:I

    .line 410
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mHotwordIndicatorGravity:I

    .line 412
    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowUnreadCountIndicator:Z

    .line 446
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mComponent:Landroid/content/ComponentName;

    .line 447
    return-void
.end method

.method public static forActivity(Landroid/app/Activity;)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 428
    if-nez p0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public static forComponentName(Landroid/content/ComponentName;)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 418
    if-nez p0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "component must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public static forDefault()Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2

    .prologue
    .line 442
    new-instance v1, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    const/4 v0, 0x0

    check-cast v0, Landroid/content/ComponentName;

    invoke-direct {v1, v0}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/content/ComponentName;)V

    return-object v1
.end method


# virtual methods
.method public build()Landroid/support/wearable/watchface/WatchFaceStyle;
    .locals 13

    .prologue
    .line 634
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardPeekMode:I

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardProgressMode:I

    iget v4, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mBackgroundVisibility:I

    iget-boolean v5, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowSystemUiTime:Z

    iget v6, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mAmbientPeekMode:I

    iget v7, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mPeekOpacityMode:I

    iget v8, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mViewProtectionMode:I

    iget v9, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mStatusBarGravity:I

    iget v10, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mHotwordIndicatorGravity:I

    iget-boolean v11, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowUnreadCountIndicator:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/support/wearable/watchface/WatchFaceStyle;-><init>(Landroid/content/ComponentName;IIIZIIIIIZLandroid/support/wearable/watchface/WatchFaceStyle$1;)V

    return-object v0
.end method

.method public setAmbientPeekMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2
    .param p1, "ambientPeekMode"    # I

    .prologue
    .line 519
    packed-switch p1, :pswitch_data_0

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ambient peek mode must be AMBIENT_PEEK_MODE_VISIBLE or AMBIENT_PEEK_MODE_HIDDEN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :pswitch_0
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mAmbientPeekMode:I

    .line 523
    return-object p0

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundVisibility(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2
    .param p1, "backgroundVisibility"    # I

    .prologue
    .line 488
    packed-switch p1, :pswitch_data_0

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "backgroundVisibility must be BACKGROUND_VISIBILITY_INTERRUPTIVE or BACKGROUND_VISIBILITY_PERSISTENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :pswitch_0
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mBackgroundVisibility:I

    .line 492
    return-object p0

    .line 488
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCardPeekMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2
    .param p1, "peekMode"    # I

    .prologue
    .line 455
    packed-switch p1, :pswitch_data_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "peekMode must be PEEK_MODE_VARIABLE or PEEK_MODE_SHORT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :pswitch_0
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardPeekMode:I

    .line 459
    return-object p0

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCardProgressMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2
    .param p1, "progressMode"    # I

    .prologue
    .line 470
    packed-switch p1, :pswitch_data_0

    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progressMode must be PROGRESS_MODE_NONE or PROGRESS_MODE_DISPLAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :pswitch_0
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardProgressMode:I

    .line 474
    return-object p0

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setHotwordIndicatorGravity(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 0
    .param p1, "hotwordIndicatorGravity"    # I

    .prologue
    .line 614
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mHotwordIndicatorGravity:I

    .line 615
    return-object p0
.end method

.method public setPeekOpacityMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2
    .param p1, "peekOpacityMode"    # I

    .prologue
    .line 537
    packed-switch p1, :pswitch_data_0

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Peek card opacity must be PEEK_OPACITY_MODE_OPAQUE or PEEK_OPACITY_MODE_TRANSLUCENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :pswitch_0
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mPeekOpacityMode:I

    .line 541
    return-object p0

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowSystemUiTime(Z)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 0
    .param p1, "showSystemUiTime"    # Z

    .prologue
    .line 507
    iput-boolean p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowSystemUiTime:Z

    .line 508
    return-object p0
.end method

.method public setShowUnreadCountIndicator(Z)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 626
    iput-boolean p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowUnreadCountIndicator:Z

    .line 627
    return-object p0
.end method

.method public setStatusBarGravity(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 0
    .param p1, "statusBarGravity"    # I

    .prologue
    .line 596
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mStatusBarGravity:I

    .line 597
    return-object p0
.end method

.method public setViewProtection(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 1
    .param p1, "viewProtection"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->setViewProtectionMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setViewProtectionMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2
    .param p1, "viewProtectionMode"    # I

    .prologue
    .line 574
    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View protection must be combination PROTECT_STATUS_BAR, PROTECT_HOTWORD_INDICATOR or PROTECT_WHOLE_SCREEN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mViewProtectionMode:I

    .line 581
    return-object p0
.end method
