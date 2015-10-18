.class Landroid/support/wearable/view/GridViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "GridViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/GridViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/GridViewPager;


# direct methods
.method private constructor <init>(Landroid/support/wearable/view/GridViewPager;)V
    .locals 0

    .prologue
    .line 2282
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager$PagerObserver;->this$0:Landroid/support/wearable/view/GridViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/GridViewPager;Landroid/support/wearable/view/GridViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/wearable/view/GridViewPager;
    .param p2, "x1"    # Landroid/support/wearable/view/GridViewPager$1;

    .prologue
    .line 2282
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager$PagerObserver;-><init>(Landroid/support/wearable/view/GridViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager$PagerObserver;->this$0:Landroid/support/wearable/view/GridViewPager;

    # invokes: Landroid/support/wearable/view/GridViewPager;->dataSetChanged()V
    invoke-static {v0}, Landroid/support/wearable/view/GridViewPager;->access$400(Landroid/support/wearable/view/GridViewPager;)V

    .line 2286
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2290
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager$PagerObserver;->this$0:Landroid/support/wearable/view/GridViewPager;

    # invokes: Landroid/support/wearable/view/GridViewPager;->dataSetChanged()V
    invoke-static {v0}, Landroid/support/wearable/view/GridViewPager;->access$400(Landroid/support/wearable/view/GridViewPager;)V

    .line 2291
    return-void
.end method
