.class public Lcom/lge/wearable/chargingmode/GageWidget;
.super Landroid/view/View;
.source "GageWidget.java"


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private batteryPaint:Landroid/graphics/Paint;

.field private fakeAnimatorLevel:F

.field private gageWidth:F

.field private height:I

.field private isAmbientMode:Z

.field private margin:I

.field private oval:Landroid/graphics/RectF;

.field private realCurrentLevel:F

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->isAmbientMode:Z

    .line 22
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->gageWidth:F

    .line 23
    const/16 v0, 0x13

    iput v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->margin:I

    .line 28
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->isAmbientMode:Z

    .line 22
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->gageWidth:F

    .line 23
    const/16 v0, 0x13

    iput v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->margin:I

    .line 39
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->isAmbientMode:Z

    .line 22
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->gageWidth:F

    .line 23
    const/16 v0, 0x13

    iput v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->margin:I

    .line 34
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->init()V

    .line 35
    return-void
.end method

.method private initResource()V
    .locals 7

    .prologue
    const/16 v1, 0x140

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    iput v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->width:I

    .line 51
    iput v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->height:I

    .line 52
    iget v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->width:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->x:I

    .line 53
    iget v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->height:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->y:I

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lge/wearable/chargingmode/GageWidget;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wearable/chargingmode/GageWidget;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wearable/chargingmode/GageWidget;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wearable/chargingmode/GageWidget;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 56
    .local v0, "l":[I
    invoke-virtual {p0, v0}, Lcom/lge/wearable/chargingmode/GageWidget;->getLocationOnScreen([I)V

    .line 57
    new-instance v1, Landroid/graphics/RectF;

    aget v2, v0, v5

    iget v3, p0, Lcom/lge/wearable/chargingmode/GageWidget;->margin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aget v3, v0, v6

    iget v4, p0, Lcom/lge/wearable/chargingmode/GageWidget;->margin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    aget v4, v0, v5

    iget v5, p0, Lcom/lge/wearable/chargingmode/GageWidget;->width:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/wearable/chargingmode/GageWidget;->margin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aget v5, v0, v6

    iget v6, p0, Lcom/lge/wearable/chargingmode/GageWidget;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lge/wearable/chargingmode/GageWidget;->margin:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->oval:Landroid/graphics/RectF;

    .line 59
    return-void
.end method

.method private refreshResources()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->batteryPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->realCurrentLevel:F

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 66
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->batteryPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    iget v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->x:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->y:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->isAmbientMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f050008

    :goto_0
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-boolean v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->isAmbientMode:Z

    if-eqz v0, :cond_1

    const v0, 0x7f05000c

    :goto_1
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 75
    :goto_2
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->batteryPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->gageWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->batteryPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->batteryPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->backgroundPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->backgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->gageWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    return-void

    .line 66
    :cond_0
    const v0, 0x7f050006

    goto :goto_0

    :cond_1
    const v0, 0x7f05000a

    goto :goto_1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->batteryPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    iget v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->x:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->y:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->isAmbientMode:Z

    if-eqz v0, :cond_3

    const v0, 0x7f050009

    :goto_3
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-boolean v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->isAmbientMode:Z

    if-eqz v0, :cond_4

    const v0, 0x7f05000d

    :goto_4
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_3
    const v0, 0x7f050007

    goto :goto_3

    :cond_4
    const v0, 0x7f05000b

    goto :goto_4
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "init"

    invoke-static {v0}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->initResource()V

    .line 46
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->refreshResources()V

    .line 47
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x40a00000    # 5.0f

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->oval:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/lge/wearable/chargingmode/GageWidget;->backgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 90
    const/high16 v0, 0x43870000    # 270.0f

    iget v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/lge/wearable/chargingmode/GageWidget;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 91
    iget-object v1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/lge/wearable/chargingmode/GageWidget;->fakeAnimatorLevel:F

    const v3, 0x40633333    # 3.55f

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/lge/wearable/chargingmode/GageWidget;->batteryPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 92
    return-void
.end method

.method public setGageTo(FFZ)V
    .locals 0
    .param p1, "realCurrentLevel"    # F
    .param p2, "fakeAnimatorLevel"    # F
    .param p3, "isAmbientMode"    # Z

    .prologue
    .line 106
    iput-boolean p3, p0, Lcom/lge/wearable/chargingmode/GageWidget;->isAmbientMode:Z

    .line 107
    iput p2, p0, Lcom/lge/wearable/chargingmode/GageWidget;->fakeAnimatorLevel:F

    .line 108
    iput p1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->realCurrentLevel:F

    .line 109
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->invalidate()V

    .line 110
    return-void
.end method

.method public setGageTo(FZ)V
    .locals 0
    .param p1, "level"    # F
    .param p2, "isAmbientMode"    # Z

    .prologue
    .line 95
    invoke-virtual {p0, p1, p1, p2}, Lcom/lge/wearable/chargingmode/GageWidget;->setGageTo(FFZ)V

    .line 96
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->refreshResources()V

    .line 97
    return-void
.end method

.method public setIsAmbient(Z)V
    .locals 0
    .param p1, "amb"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/lge/wearable/chargingmode/GageWidget;->isAmbientMode:Z

    .line 101
    invoke-direct {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->refreshResources()V

    .line 102
    invoke-virtual {p0}, Lcom/lge/wearable/chargingmode/GageWidget;->invalidate()V

    .line 103
    return-void
.end method
