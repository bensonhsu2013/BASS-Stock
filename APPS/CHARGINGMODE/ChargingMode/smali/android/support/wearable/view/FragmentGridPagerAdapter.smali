.class public abstract Landroid/support/wearable/view/FragmentGridPagerAdapter;
.super Landroid/support/wearable/view/GridPagerAdapter;
.source "FragmentGridPagerAdapter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;
    }
.end annotation


# static fields
.field private static final MAX_ROWS:I = 0xffff

.field private static final NOOP_BACKGROUND_OBSERVER:Landroid/support/wearable/view/GridPageOptions$BackgroundListener;


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mFragmentPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Point;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Landroid/support/wearable/view/FragmentGridPagerAdapter$1;

    invoke-direct {v0}, Landroid/support/wearable/view/FragmentGridPagerAdapter$1;-><init>()V

    sput-object v0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->NOOP_BACKGROUND_OBSERVER:Landroid/support/wearable/view/GridPageOptions$BackgroundListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/wearable/view/GridPagerAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentPositions:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    .line 44
    return-void
.end method

.method static synthetic access$100(Landroid/support/wearable/view/FragmentGridPagerAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/view/FragmentGridPagerAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentPositions:Ljava/util/Map;

    return-object v0
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 3
    .param p0, "viewId"    # I
    .param p1, "id"    # J

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;IILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "row"    # I
    .param p3, "column"    # I
    .param p4, "object"    # Ljava/lang/Object;

    .prologue
    .line 130
    iget-object v2, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v2, :cond_0

    .line 131
    iget-object v2, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    :cond_0
    move-object v0, p4

    .line 133
    check-cast v0, Landroid/app/Fragment;

    .line 134
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Landroid/support/wearable/view/GridPageOptions;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 137
    check-cast v2, Landroid/support/wearable/view/GridPageOptions;

    sget-object v3, Landroid/support/wearable/view/FragmentGridPagerAdapter;->NOOP_BACKGROUND_OBSERVER:Landroid/support/wearable/view/GridPageOptions$BackgroundListener;

    invoke-interface {v2, v3}, Landroid/support/wearable/view/GridPageOptions;->setBackgroundListener(Landroid/support/wearable/view/GridPageOptions$BackgroundListener;)V

    .line 139
    :cond_1
    iget-object v2, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 140
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p3, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 141
    .local v1, "position":Landroid/graphics/Point;
    iget-object v2, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentPositions:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v2, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iput-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 195
    iput-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 196
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method public getBackgroundForPage(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 177
    invoke-virtual {p0, p1, p2}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->getFragmentBackground(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFragment(II)Landroid/app/Fragment;
.end method

.method public final getFragmentBackground(II)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 154
    iget-object v3, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 156
    .local v1, "f":Landroid/app/Fragment;
    sget-object v0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->BACKGROUND_NONE:Landroid/graphics/drawable/Drawable;

    .line 157
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/support/wearable/view/GridPageOptions;

    if-eqz v3, :cond_0

    .line 158
    check-cast v1, Landroid/support/wearable/view/GridPageOptions;

    .end local v1    # "f":Landroid/app/Fragment;
    invoke-interface {v1}, Landroid/support/wearable/view/GridPageOptions;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    :cond_0
    return-object v0
.end method

.method public getFragmentId(II)J
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 75
    const v0, 0xffff

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;II)Landroid/app/Fragment;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 80
    iget-object v6, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v6, :cond_0

    .line 81
    iget-object v6, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    iput-object v6, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 84
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->getFragmentId(II)J

    move-result-wide v2

    .line 85
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v2, v3}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "tag":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 89
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez v1, :cond_1

    .line 90
    invoke-virtual {p0, p2, p3}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->getFragment(II)Landroid/app/Fragment;

    move-result-object v1

    .line 91
    iget-object v6, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    invoke-virtual {v6, v7, v1, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 93
    :cond_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p3, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 94
    .local v4, "position":Landroid/graphics/Point;
    iget-object v6, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v6, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentPositions:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    instance-of v6, v1, Landroid/support/wearable/view/GridPageOptions;

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 97
    check-cast v0, Landroid/support/wearable/view/GridPageOptions;

    .line 98
    .local v0, "backgroundProvider":Landroid/support/wearable/view/GridPageOptions;
    new-instance v6, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v5, v7}, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;-><init>(Landroid/support/wearable/view/FragmentGridPagerAdapter;Ljava/lang/String;Landroid/support/wearable/view/FragmentGridPagerAdapter$1;)V

    invoke-interface {v0, v6}, Landroid/support/wearable/view/GridPageOptions;->setBackgroundListener(Landroid/support/wearable/view/GridPageOptions$BackgroundListener;)V

    .line 100
    .end local v0    # "backgroundProvider":Landroid/support/wearable/view/GridPageOptions;
    :cond_2
    return-object v1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;II)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
