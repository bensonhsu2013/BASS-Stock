.class Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "CircularButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/CircularButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleOutlineProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/CircularButton;


# direct methods
.method private constructor <init>(Landroid/support/wearable/view/CircularButton;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;->this$0:Landroid/support/wearable/view/CircularButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/CircularButton;Landroid/support/wearable/view/CircularButton$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/wearable/view/CircularButton;
    .param p2, "x1"    # Landroid/support/wearable/view/CircularButton$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;-><init>(Landroid/support/wearable/view/CircularButton;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 274
    return-void
.end method
