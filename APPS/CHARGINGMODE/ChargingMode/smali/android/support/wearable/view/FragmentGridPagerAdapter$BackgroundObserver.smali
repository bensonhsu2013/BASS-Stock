.class Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;
.super Ljava/lang/Object;
.source "FragmentGridPagerAdapter.java"

# interfaces
.implements Landroid/support/wearable/view/GridPageOptions$BackgroundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/FragmentGridPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundObserver"
.end annotation


# instance fields
.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/wearable/view/FragmentGridPagerAdapter;


# direct methods
.method private constructor <init>(Landroid/support/wearable/view/FragmentGridPagerAdapter;Ljava/lang/String;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;->this$0:Landroid/support/wearable/view/FragmentGridPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;->mTag:Ljava/lang/String;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/FragmentGridPagerAdapter;Ljava/lang/String;Landroid/support/wearable/view/FragmentGridPagerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/wearable/view/FragmentGridPagerAdapter;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/support/wearable/view/FragmentGridPagerAdapter$1;

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;-><init>(Landroid/support/wearable/view/FragmentGridPagerAdapter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public notifyBackgroundChanged()V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;->this$0:Landroid/support/wearable/view/FragmentGridPagerAdapter;

    # getter for: Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentPositions:Ljava/util/Map;
    invoke-static {v1}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->access$100(Landroid/support/wearable/view/FragmentGridPagerAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 117
    .local v0, "pos":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;->this$0:Landroid/support/wearable/view/FragmentGridPagerAdapter;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2, v3}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->notifyPageBackgroundChanged(II)V

    .line 120
    :cond_0
    return-void
.end method
