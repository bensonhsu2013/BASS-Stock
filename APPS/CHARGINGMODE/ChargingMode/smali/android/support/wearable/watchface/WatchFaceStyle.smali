.class public Landroid/support/wearable/watchface/WatchFaceStyle;
.super Ljava/lang/Object;
.source "WatchFaceStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    }
.end annotation


# static fields
.field public static final AMBIENT_PEEK_MODE_HIDDEN:I = 0x1

.field public static final AMBIENT_PEEK_MODE_VISIBLE:I = 0x0

.field public static final BACKGROUND_VISIBILITY_INTERRUPTIVE:I = 0x0

.field public static final BACKGROUND_VISIBILITY_PERSISTENT:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/wearable/watchface/WatchFaceStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_AMBIENT_PEEK_MODE:Ljava/lang/String; = "ambientPeekMode"

.field public static final KEY_BACKGROUND_VISIBILITY:Ljava/lang/String; = "backgroundVisibility"

.field public static final KEY_CARD_PEEK_MODE:Ljava/lang/String; = "cardPeekMode"

.field public static final KEY_CARD_PROGRESS_MODE:Ljava/lang/String; = "cardProgressMode"

.field public static final KEY_COMPONENT:Ljava/lang/String; = "component"

.field public static final KEY_HOTWORD_INDICATOR_GRAVITY:Ljava/lang/String; = "hotwordIndicatorGravity"

.field public static final KEY_PEEK_CARD_OPACITY:Ljava/lang/String; = "peekOpacityMode"

.field public static final KEY_SHOW_SYSTEM_UI_TIME:Ljava/lang/String; = "showSystemUiTime"

.field public static final KEY_SHOW_UNREAD_INDICATOR:Ljava/lang/String; = "showUnreadIndicator"

.field public static final KEY_STATUS_BAR_GRAVITY:Ljava/lang/String; = "statusBarGravity"

.field public static final KEY_VIEW_PROTECTION_MODE:Ljava/lang/String; = "viewProtectionMode"

.field public static final PEEK_MODE_SHORT:I = 0x1

.field public static final PEEK_MODE_VARIABLE:I = 0x0

.field public static final PEEK_OPACITY_MODE_OPAQUE:I = 0x0

.field public static final PEEK_OPACITY_MODE_TRANSLUCENT:I = 0x1

.field public static final PROGRESS_MODE_DISPLAY:I = 0x1

.field public static final PROGRESS_MODE_NONE:I = 0x0

.field public static final PROTECT_HOTWORD_INDICATOR:I = 0x2

.field public static final PROTECT_STATUS_BAR:I = 0x1

.field public static final PROTECT_WHOLE_SCREEN:I = 0x4


# instance fields
.field private final ambientPeekMode:I

.field private final backgroundVisibility:I

.field private final cardPeekMode:I

.field private final cardProgressMode:I

.field private final component:Landroid/content/ComponentName;

.field private final hotwordIndicatorGravity:I

.field private final peekOpacityMode:I

.field private final showSystemUiTime:Z

.field private final showUnreadCountIndicator:Z

.field private final statusBarGravity:I

.field private final viewProtectionMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle$1;

    invoke-direct {v0}, Landroid/support/wearable/watchface/WatchFaceStyle$1;-><init>()V

    sput-object v0, Landroid/support/wearable/watchface/WatchFaceStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/ComponentName;IIIZIIIIIZ)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "cardPeekMode"    # I
    .param p3, "cardProgressMode"    # I
    .param p4, "backgroundVisibility"    # I
    .param p5, "showSystemUiTime"    # Z
    .param p6, "ambientPeekMode"    # I
    .param p7, "peekOpacityMode"    # I
    .param p8, "viewProtectionMode"    # I
    .param p9, "statusBarGravity"    # I
    .param p10, "hotwordIndicatorGravity"    # I
    .param p11, "showUnreadCountIndicator"    # Z

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    .line 172
    iput p6, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    .line 173
    iput p4, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    .line 174
    iput p2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    .line 175
    iput p3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    .line 176
    iput p10, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    .line 177
    iput p7, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    .line 178
    iput-boolean p5, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    .line 179
    iput-boolean p11, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    .line 180
    iput p9, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    .line 181
    iput p8, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;IIIZIIIIIZLandroid/support/wearable/watchface/WatchFaceStyle$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/ComponentName;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # Z
    .param p12, "x11"    # Landroid/support/wearable/watchface/WatchFaceStyle$1;

    .prologue
    .line 25
    invoke-direct/range {p0 .. p11}, Landroid/support/wearable/watchface/WatchFaceStyle;-><init>(Landroid/content/ComponentName;IIIZIIIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const-string v0, "component"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    .line 200
    const-string v0, "ambientPeekMode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    .line 201
    const-string v0, "backgroundVisibility"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    .line 203
    const-string v0, "cardPeekMode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    .line 204
    const-string v0, "cardProgressMode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    .line 205
    const-string v0, "hotwordIndicatorGravity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    .line 206
    const-string v0, "peekOpacityMode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    .line 207
    const-string v0, "showSystemUiTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    .line 208
    const-string v0, "showUnreadIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    .line 209
    const-string v0, "statusBarGravity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    .line 210
    const-string v0, "viewProtectionMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    .line 211
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 235
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/support/wearable/watchface/WatchFaceStyle;

    if-nez v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 238
    check-cast v0, Landroid/support/wearable/watchface/WatchFaceStyle;

    .line 239
    .local v0, "other":Landroid/support/wearable/watchface/WatchFaceStyle;
    iget-object v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    iget v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    iget v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    iget v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    iget-boolean v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    iget v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    iget v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    iget v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    iget v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    iget v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    iget-boolean v3, v0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAmbientPeekMode()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    return v0
.end method

.method public getBackgroundVisibility()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    return v0
.end method

.method public getCardPeekMode()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    return v0
.end method

.method public getCardProgressMode()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getHotwordIndicatorGravity()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    return v0
.end method

.method public getPeekOpacityMode()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    return v0
.end method

.method public getShowSystemUiTime()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    return v0
.end method

.method public getShowUnreadCountIndicator()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    return v0
.end method

.method public getStatusBarGravity()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    return v0
.end method

.method public getViewProtectionMode()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 254
    const/16 v1, 0xb

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    aput v1, v0, v3

    iget v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    aput v1, v0, v2

    const/4 v1, 0x2

    iget v4, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    aput v4, v0, v1

    const/4 v1, 0x3

    iget v4, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    aput v4, v0, v1

    const/4 v4, 0x4

    iget-boolean v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    aput v1, v0, v4

    const/4 v1, 0x5

    iget v4, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    aput v4, v0, v1

    const/4 v1, 0x6

    iget v4, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    aput v4, v0, v1

    const/4 v1, 0x7

    iget v4, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    aput v4, v0, v1

    const/16 v1, 0x8

    iget v4, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    aput v4, v0, v1

    const/16 v1, 0x9

    iget v4, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    aput v4, v0, v1

    const/16 v1, 0xa

    iget-boolean v4, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    if-eqz v4, :cond_1

    :goto_1
    aput v2, v0, v1

    .line 258
    .local v0, "values":[I
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    return v1

    .end local v0    # "values":[I
    :cond_0
    move v1, v3

    .line 254
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "component"

    iget-object v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 220
    const-string v1, "ambientPeekMode"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v1, "backgroundVisibility"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string v1, "cardPeekMode"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v1, "cardProgressMode"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v1, "hotwordIndicatorGravity"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v1, "peekOpacityMode"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v1, "showSystemUiTime"

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    const-string v1, "showUnreadIndicator"

    iget-boolean v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    const-string v1, "statusBarGravity"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string v1, "viewProtectionMode"

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 264
    const-string v1, "watch face %s (card %d/%d bg %d time %s ambientPeek %d peekOpacityMode %d viewProtectionMode %d  statusBarGravity %d hotwordIndicatorGravity %d showUnreadCountIndicator %s)"

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string v0, "default"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardPeekMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->cardProgressMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->backgroundVisibility:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-boolean v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showSystemUiTime:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->ambientPeekMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->peekOpacityMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->viewProtectionMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->statusBarGravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x9

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->hotwordIndicatorGravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xa

    iget-boolean v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->showUnreadCountIndicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/support/wearable/watchface/WatchFaceStyle;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method
