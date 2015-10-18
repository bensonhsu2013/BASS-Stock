.class public Lcom/lge/wearable/chargingmode/ChargingApplication;
.super Landroid/app/Application;
.source "ChargingApplication.java"


# instance fields
.field public mDockState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wearable/chargingmode/ChargingApplication;->mDockState:I

    return-void
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 31
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 32
    .local v3, "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    .local v2, "prop":Ljava/lang/String;
    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "false"

    .line 51
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "prop":Ljava/lang/String;
    .end local v3    # "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 34
    .restart local v1    # "getMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "prop":Ljava/lang/String;
    .restart local v3    # "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string v4, "true"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    .line 35
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "prop":Ljava/lang/String;
    .end local v3    # "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/wearable/chargingmode/ChargingLog;->e(Ljava/lang/String;)V

    .line 51
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    const-string v4, "true"

    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/wearable/chargingmode/ChargingLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/wearable/chargingmode/ChargingLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 41
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/wearable/chargingmode/ChargingLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 43
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/wearable/chargingmode/ChargingLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 45
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/wearable/chargingmode/ChargingLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/wearable/chargingmode/ChargingLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    const-string v1, "persist.lge.charging_mode"

    invoke-static {v1}, Lcom/lge/wearable/chargingmode/ChargingApplication;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 19
    .local v0, "chargingProp":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate] chargingProp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/ChargingApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.lge.wearable.chargingmode.ChargingActivity"

    invoke-direct {v4, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 27
    return-void

    .line 21
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
