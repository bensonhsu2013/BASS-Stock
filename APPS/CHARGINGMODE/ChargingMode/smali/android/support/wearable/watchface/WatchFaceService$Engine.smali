.class public abstract Landroid/support/wearable/watchface/WatchFaceService$Engine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "WatchFaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/watchface/WatchFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Engine"
.end annotation


# instance fields
.field private final mAmbientTimeTickFilter:Landroid/content/IntentFilter;

.field private mInAmbientMode:Z

.field private final mInteractiveTimeTickFilter:Landroid/content/IntentFilter;

.field private mInterruptionFilter:I

.field private mLastWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

.field private final mPeekCardPosition:Landroid/graphics/Rect;

.field private final mTimeTickReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeTickRegistered:Z

.field private mUnreadCount:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatchFaceService:Landroid/support/wearable/watchface/IWatchFaceService;

.field private mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

.field final synthetic this$0:Landroid/support/wearable/watchface/WatchFaceService;


# direct methods
.method public constructor <init>(Landroid/support/wearable/watchface/WatchFaceService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    .line 188
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 176
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceService$Engine$1;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine$1;-><init>(Landroid/support/wearable/watchface/WatchFaceService$Engine;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    iput-boolean v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mPeekCardPosition:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    .line 190
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInteractiveTimeTickFilter:Landroid/content/IntentFilter;

    .line 194
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInteractiveTimeTickFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private dispatchAmbientModeChanged()V
    .locals 3

    .prologue
    .line 453
    const-string v0, "WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "WatchFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchAmbientModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onAmbientModeChanged(Z)V

    .line 457
    invoke-direct {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->updateTimeTickReceiver()V

    .line 458
    return-void
.end method

.method private maybeUpdateAmbientMode(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 443
    const-string v1, "ambient_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const-string v1, "ambient_mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 445
    .local v0, "inAmbientMode":Z
    iget-boolean v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    if-eq v1, v0, :cond_0

    .line 446
    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    .line 447
    invoke-direct {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->dispatchAmbientModeChanged()V

    .line 450
    .end local v0    # "inAmbientMode":Z
    :cond_0
    return-void
.end method

.method private maybeUpdateInterruptionFilter(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 422
    const-string v1, "interruption_filter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    const-string v1, "interruption_filter"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 425
    .local v0, "interruptionFilter":I
    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInterruptionFilter:I

    if-eq v0, v1, :cond_0

    .line 426
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInterruptionFilter:I

    .line 427
    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onInterruptionFilterChanged(I)V

    .line 430
    .end local v0    # "interruptionFilter":I
    :cond_0
    return-void
.end method

.method private maybeUpdatePeekCardPosition(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 433
    const-string v1, "card_location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const-string v1, "card_location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 435
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mPeekCardPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mPeekCardPosition:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 437
    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onPeekCardPositionUpdate(Landroid/graphics/Rect;)V

    .line 440
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private maybeUpdateUnreadCount(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 461
    const-string v1, "unread_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    const-string v1, "unread_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 463
    .local v0, "unreadCount":I
    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mUnreadCount:I

    if-eq v0, v1, :cond_0

    .line 464
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mUnreadCount:I

    .line 465
    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mUnreadCount:I

    invoke-virtual {p0, v1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onUnreadCountChanged(I)V

    .line 468
    .end local v0    # "unreadCount":I
    :cond_0
    return-void
.end method

.method private onSetBinder(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 232
    const-string v2, "binder"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 234
    invoke-static {v0}, Landroid/support/wearable/watchface/IWatchFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/wearable/watchface/IWatchFaceService;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceService:Landroid/support/wearable/watchface/IWatchFaceService;

    .line 235
    iget-object v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    if-eqz v2, :cond_0

    .line 237
    :try_start_0
    iget-object v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceService:Landroid/support/wearable/watchface/IWatchFaceService;

    iget-object v3, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    invoke-interface {v2, v3}, Landroid/support/wearable/watchface/IWatchFaceService;->setStyle(Landroid/support/wearable/watchface/WatchFaceStyle;)V

    .line 238
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WatchFaceService"

    const-string v3, "Failed to set WatchFaceStyle"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 244
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "WatchFaceService"

    const-string v3, "Binder is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTimeTickReceiver()V
    .locals 3

    .prologue
    .line 476
    const-string v0, "WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const-string v0, "WatchFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTimeTickReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/wearable/watchface/WatchFaceService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    .line 486
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    if-eqz v0, :cond_3

    .line 488
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mAmbientTimeTickFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/watchface/WatchFaceService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 492
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    .line 497
    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onTimeTick()V

    .line 499
    :cond_2
    return-void

    .line 490
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInteractiveTimeTickFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/watchface/WatchFaceService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public final getInterruptionFilter()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInterruptionFilter:I

    return v0
.end method

.method public final getPeekCardPosition()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mPeekCardPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getUnreadCount()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mUnreadCount:I

    return v0
.end method

.method public final isInAmbientMode()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    return v0
.end method

.method public onAmbientModeChanged(Z)V
    .locals 0
    .param p1, "inAmbientMode"    # Z

    .prologue
    .line 299
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .prologue
    const/4 v3, 0x3

    .line 200
    const-string v0, "WatchFaceService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "WatchFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    const-string v0, "com.google.android.wearable.action.BACKGROUND_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->maybeUpdateAmbientMode(Landroid/os/Bundle;)V

    .line 205
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->maybeUpdateInterruptionFilter(Landroid/os/Bundle;)V

    .line 206
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->maybeUpdatePeekCardPosition(Landroid/os/Bundle;)V

    .line 207
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->maybeUpdateUnreadCount(Landroid/os/Bundle;)V

    .line 228
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_2
    const-string v0, "com.google.android.wearable.action.AMBIENT_UPDATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mInAmbientMode:Z

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "WatchFaceService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    const-string v0, "WatchFaceService"

    const-string v1, "ambient mode update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 214
    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onTimeTick()V

    .line 215
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 217
    :cond_4
    const-string v0, "com.google.android.wearable.action.SET_PROPERTIES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    invoke-virtual {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onPropertiesChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 219
    :cond_5
    const-string v0, "com.google.android.wearable.action.SET_BINDER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    invoke-direct {p0, p5}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSetBinder(Landroid/os/Bundle;)V

    goto :goto_0

    .line 221
    :cond_6
    const-string v0, "com.google.android.wearable.action.REQUEST_STYLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mLastWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    if-eqz v0, :cond_7

    .line 223
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mLastWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->setWatchFaceStyle(Landroid/support/wearable/watchface/WatchFaceStyle;)V

    goto :goto_0

    .line 224
    :cond_7
    const-string v0, "WatchFaceService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const-string v0, "WatchFaceService"

    const-string v1, "Last watch face style is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 349
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    invoke-direct {v0, v1}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/app/Service;)V

    invoke-virtual {v0}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->build()Landroid/support/wearable/watchface/WatchFaceStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    .line 350
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/support/wearable/watchface/WatchFaceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "WatchFaceService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 354
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 355
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickRegistered:Z

    .line 361
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/wearable/watchface/WatchFaceService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    :cond_0
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 364
    return-void
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 309
    return-void
.end method

.method public onPeekCardPositionUpdate(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 317
    return-void
.end method

.method public onPropertiesChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "properties"    # Landroid/os/Bundle;

    .prologue
    .line 333
    return-void
.end method

.method public onTimeTick()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public onUnreadCountChanged(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 325
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 374
    const-string v1, "WatchFaceService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "WatchFaceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVisibilityChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.wearable.watchfaces.action.REQUEST_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/WatchFaceService;

    invoke-virtual {v1, v0}, Landroid/support/wearable/watchface/WatchFaceService;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    invoke-direct {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->updateTimeTickReceiver()V

    .line 385
    return-void
.end method

.method public setWatchFaceStyle(Landroid/support/wearable/watchface/WatchFaceStyle;)V
    .locals 4
    .param p1, "watchFaceStyle"    # Landroid/support/wearable/watchface/WatchFaceStyle;

    .prologue
    .line 277
    const-string v1, "WatchFaceService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "WatchFaceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWatchFaceStyle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    .line 283
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mLastWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;

    .line 284
    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceService:Landroid/support/wearable/watchface/IWatchFaceService;

    if-eqz v1, :cond_1

    .line 286
    :try_start_0
    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceService:Landroid/support/wearable/watchface/IWatchFaceService;

    invoke-interface {v1, p1}, Landroid/support/wearable/watchface/IWatchFaceService;->setStyle(Landroid/support/wearable/watchface/WatchFaceStyle;)V

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/wearable/watchface/WatchFaceService$Engine;->mWatchFaceStyle:Landroid/support/wearable/watchface/WatchFaceStyle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WatchFaceService"

    const-string v2, "Failed to set WatchFaceStyle: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
