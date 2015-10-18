.class Landroid/support/wearable/view/Func;
.super Ljava/lang/Object;
.source "Func.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clamp(FII)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 17
    int-to-float v0, p1

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 18
    int-to-float p0, p1

    .line 22
    .end local p0    # "value":F
    :cond_0
    :goto_0
    return p0

    .line 19
    .restart local p0    # "value":F
    :cond_1
    int-to-float v0, p2

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 20
    int-to-float p0, p2

    goto :goto_0
.end method

.method static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 26
    if-ge p0, p1, :cond_0

    .line 31
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 28
    .restart local p1    # "min":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    .line 29
    goto :goto_0

    :cond_1
    move p1, p0

    .line 31
    goto :goto_0
.end method

.method static getWindowOverscan(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    .local v1, "ctx":Landroid/content/Context;
    const/4 v2, 0x0

    .line 37
    .local v2, "res":Z
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 38
    check-cast v0, Landroid/app/Activity;

    .line 39
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 40
    .local v3, "windowFlags":I
    const/high16 v4, 0x2000000

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 42
    .end local v0    # "act":Landroid/app/Activity;
    .end local v3    # "windowFlags":I
    :cond_0
    :goto_0
    return v2

    .line 40
    .restart local v0    # "act":Landroid/app/Activity;
    .restart local v3    # "windowFlags":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
