.class Landroid/support/wearable/view/BackgroundController$1;
.super Landroid/support/v4/util/LruCache;
.source "BackgroundController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/BackgroundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/BackgroundController;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/BackgroundController;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 81
    iput-object p1, p0, Landroid/support/wearable/view/BackgroundController$1;->this$0:Landroid/support/wearable/view/BackgroundController;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "key"    # Ljava/lang/Integer;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/wearable/view/BackgroundController$1;->this$0:Landroid/support/wearable/view/BackgroundController;

    # getter for: Landroid/support/wearable/view/BackgroundController;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;
    invoke-static {v0}, Landroid/support/wearable/view/BackgroundController;->access$000(Landroid/support/wearable/view/BackgroundController;)Landroid/support/wearable/view/GridPagerAdapter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/GridPagerAdapter;->getBackgroundForRow(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/BackgroundController$1;->create(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method