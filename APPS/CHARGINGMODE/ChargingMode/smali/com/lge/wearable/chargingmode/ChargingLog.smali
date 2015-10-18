.class public Lcom/lge/wearable/chargingmode/ChargingLog;
.super Ljava/lang/Object;
.source "ChargingLog.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "ChargingMode"

.field private static logEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wearable/chargingmode/ChargingLog;->logEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMe"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-boolean v0, Lcom/lge/wearable/chargingmode/ChargingLog;->logEnable:Z

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "ChargingMode"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMe"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-boolean v0, Lcom/lge/wearable/chargingmode/ChargingLog;->logEnable:Z

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "ChargingMode"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "logMe"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 55
    sget-boolean v0, Lcom/lge/wearable/chargingmode/ChargingLog;->logEnable:Z

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "ChargingMode"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_0
    return-void
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS/E"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMe"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-boolean v0, Lcom/lge/wearable/chargingmode/ChargingLog;->logEnable:Z

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "ChargingMode"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMe"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-boolean v0, Lcom/lge/wearable/chargingmode/ChargingLog;->logEnable:Z

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "ChargingMode"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMe"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-boolean v0, Lcom/lge/wearable/chargingmode/ChargingLog;->logEnable:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "ChargingMode"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMe"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-boolean v0, Lcom/lge/wearable/chargingmode/ChargingLog;->logEnable:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "ChargingMode"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method
