.class public Landroid/support/wearable/view/WearableFrameLayout;
.super Landroid/view/ViewGroup;
.source "WearableFrameLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033

.field private static final TAG:Ljava/lang/String; = "WearableFrameLayout"


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field mForegroundBoundsChanged:Z

.field private mForegroundGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mForegroundInPadding:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundTintList:Landroid/content/res/ColorStateList;

.field private mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mHasForegroundTint:Z

.field private mHasForegroundTintMode:Z

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private mRound:Z

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMeasureAllChildren:Z

    .line 71
    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 72
    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 73
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    .line 74
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTintMode:Z

    .line 76
    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 79
    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 82
    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 85
    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 91
    const/16 v0, 0x77

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    .line 94
    iput-boolean v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    .line 97
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 101
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/WearableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/WearableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    iput-boolean v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMeasureAllChildren:Z

    .line 71
    iput-object v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 72
    iput-object v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 73
    iput-boolean v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    .line 74
    iput-boolean v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTintMode:Z

    .line 76
    iput v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 79
    iput v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 82
    iput v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 85
    iput v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    .line 88
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 89
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 91
    const/16 v2, 0x77

    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    .line 94
    iput-boolean v5, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    .line 97
    iput-boolean v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 101
    iput-boolean v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    .line 119
    sget-object v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_foregroundGravity:I

    iget v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    .line 125
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_foreground:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 126
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_0
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_measureAllChildren:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {p0, v5}, Landroid/support/wearable/view/WearableFrameLayout;->setMeasureAllChildren(Z)V

    .line 134
    :cond_1
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_foregroundTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_foregroundTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 137
    iput-boolean v5, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    .line 140
    :cond_2
    sget v2, Landroid/support/wearable/R$styleable;->WearableFrameLayout_foregroundInsidePadding:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->applyForegroundTint()V

    .line 146
    return-void
.end method

.method private applyForegroundTint()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTintMode:Z

    if-eqz v0, :cond_3

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 380
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 384
    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTintMode:Z

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 390
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 394
    :cond_3
    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    .prologue
    .line 412
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottom()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottom()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    .prologue
    .line 407
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1
    .param p1, "params"    # Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .prologue
    .line 622
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMarginRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private getParamsGravity(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1
    .param p1, "params"    # Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .prologue
    .line 626
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private getParamsHeight(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1
    .param p1, "params"    # Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .prologue
    .line 606
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1
    .param p1, "params"    # Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .prologue
    .line 610
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMarginRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1
    .param p1, "params"    # Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .prologue
    .line 618
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMarginRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1
    .param p1, "params"    # Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .prologue
    .line 614
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMarginRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private getParamsWidth(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1
    .param p1, "params"    # Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .prologue
    .line 602
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 714
    instance-of v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 643
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 645
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 646
    iget-object v6, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 648
    .local v6, "foreground":Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    if-eqz v0, :cond_0

    .line 649
    iput-boolean v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    .line 650
    iget-object v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 651
    .local v3, "selfBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 653
    .local v4, "overlayBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getLeft()I

    move-result v1

    sub-int v8, v0, v1

    .line 654
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getTop()I

    move-result v1

    sub-int v7, v0, v1

    .line 656
    .local v7, "h":I
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_2

    .line 657
    invoke-virtual {v3, v2, v2, v8, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 663
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getLayoutDirection()I

    move-result v5

    .line 664
    .local v5, "layoutDirection":I
    iget v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 667
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 670
    .end local v3    # "selfBounds":Landroid/graphics/Rect;
    .end local v4    # "overlayBounds":Landroid/graphics/Rect;
    .end local v5    # "layoutDirection":I
    .end local v7    # "h":I
    .end local v8    # "w":I
    :cond_0
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 672
    .end local v6    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 659
    .restart local v3    # "selfBounds":Landroid/graphics/Rect;
    .restart local v4    # "overlayBounds":Landroid/graphics/Rect;
    .restart local v6    # "foreground":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "h":I
    .restart local v8    # "w":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRight()I

    move-result v2

    sub-int v2, v8, v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottom()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {v3, v0, v1, v2, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    .line 251
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 254
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 242
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 245
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 263
    new-instance v0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->generateDefaultLayoutParams()Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 701
    new-instance v0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 719
    new-instance v0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    check-cast p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;-><init>(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)V

    return-object v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    return v0
.end method

.method public getForegroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getForegroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getMeasureAllChildren()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method getPaddingLeftWithForeground()I
    .locals 2

    .prologue
    .line 397
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getPaddingRightWithForeground()I
    .locals 2

    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 233
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 234
    :cond_0
    return-void
.end method

.method layoutChildren(IIIIZ)V
    .locals 20
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "forceLeftGravity"    # Z

    .prologue
    .line 536
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getChildCount()I

    move-result v6

    .line 538
    .local v6, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeftWithForeground()I

    move-result v13

    .line 539
    .local v13, "parentLeft":I
    sub-int v18, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRightWithForeground()I

    move-result v19

    sub-int v14, v18, v19

    .line 541
    .local v14, "parentRight":I
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTopWithForeground()I

    move-result v15

    .line 542
    .local v15, "parentTop":I
    sub-int v18, p4, p2

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottomWithForeground()I

    move-result v19

    sub-int v12, v18, v19

    .line 544
    .local v12, "parentBottom":I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    .line 546
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_3

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/wearable/view/WearableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 548
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 549
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .line 551
    .local v11, "lp":Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 552
    .local v17, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 557
    .local v8, "height":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsGravity(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v7

    .line 558
    .local v7, "gravity":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    .line 559
    const v7, 0x800033

    .line 562
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getLayoutDirection()I

    move-result v10

    .line 563
    .local v10, "layoutDirection":I
    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 564
    .local v2, "absoluteGravity":I
    and-int/lit8 v16, v7, 0x70

    .line 566
    .local v16, "verticalGravity":I
    and-int/lit8 v18, v2, 0x7

    sparse-switch v18, :sswitch_data_0

    .line 578
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v18

    add-int v4, v13, v18

    .line 581
    .local v4, "childLeft":I
    :goto_1
    sparse-switch v16, :sswitch_data_1

    .line 593
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v18

    add-int v5, v15, v18

    .line 596
    .local v5, "childTop":I
    :goto_2
    add-int v18, v4, v17

    add-int v19, v5, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 546
    .end local v2    # "absoluteGravity":I
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v10    # "layoutDirection":I
    .end local v11    # "lp":Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    .end local v16    # "verticalGravity":I
    .end local v17    # "width":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 568
    .restart local v2    # "absoluteGravity":I
    .restart local v7    # "gravity":I
    .restart local v8    # "height":I
    .restart local v10    # "layoutDirection":I
    .restart local v11    # "lp":Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    .restart local v16    # "verticalGravity":I
    .restart local v17    # "width":I
    :sswitch_0
    sub-int v18, v14, v13

    sub-int v18, v18, v17

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v19

    sub-int v4, v18, v19

    .line 570
    .restart local v4    # "childLeft":I
    goto :goto_1

    .line 572
    .end local v4    # "childLeft":I
    :sswitch_1
    if-nez p5, :cond_1

    .line 573
    sub-int v18, v14, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v19

    sub-int v4, v18, v19

    .line 574
    .restart local v4    # "childLeft":I
    goto :goto_1

    .line 583
    :sswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v18

    add-int v5, v15, v18

    .line 584
    .restart local v5    # "childTop":I
    goto :goto_2

    .line 586
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v18, v12, v15

    sub-int v18, v18, v8

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v19

    sub-int v5, v18, v19

    .line 588
    .restart local v5    # "childTop":I
    goto :goto_2

    .line 590
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v18, v12, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v19

    sub-int v5, v18, v19

    .line 591
    .restart local v5    # "childTop":I
    goto :goto_2

    .line 599
    .end local v2    # "absoluteGravity":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v10    # "layoutDirection":I
    .end local v11    # "lp":Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    .end local v16    # "verticalGravity":I
    .end local v17    # "width":I
    :cond_3
    return-void

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 581
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .line 516
    .local v2, "lp":Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v2}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v2}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-direct {p0, v2}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsWidth(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v4

    invoke-static {p2, v3, v4}, Landroid/support/wearable/view/WearableFrameLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 519
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v2}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v2}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    invoke-direct {p0, v2}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsHeight(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v4

    invoke-static {p4, v3, v4}, Landroid/support/wearable/view/WearableFrameLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 523
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 524
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 156
    iget-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 157
    .local v0, "changed":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->requestLayout()V

    .line 161
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    .line 156
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 151
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->requestApplyInsets()V

    .line 152
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 725
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 726
    const-class v0, Landroid/support/wearable/view/WearableFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 727
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 731
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 732
    const-class v0, Landroid/support/wearable/view/WearableFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 733
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 531
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/wearable/view/WearableFrameLayout;->layoutChildren(IIIIZ)V

    .line 532
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getChildCount()I

    move-result v10

    .line 424
    .local v10, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_4

    :cond_0
    const/16 v16, 0x1

    .line 427
    .local v16, "measureMatchParentChildren":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 429
    const/4 v14, 0x0

    .line 430
    .local v14, "maxHeight":I
    const/4 v15, 0x0

    .line 431
    .local v15, "maxWidth":I
    const/4 v8, 0x0

    .line 433
    .local v8, "childState":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_5

    .line 434
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/wearable/view/WearableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 435
    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/WearableFrameLayout;->mMeasureAllChildren:Z

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    .line 436
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/wearable/view/WearableFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 437
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .line 438
    .local v13, "lp":Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 440
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 442
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Landroid/support/wearable/view/WearableFrameLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 443
    if-eqz v16, :cond_3

    .line 444
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsWidth(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsHeight(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 446
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .end local v13    # "lp":Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 424
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "childState":I
    .end local v12    # "i":I
    .end local v14    # "maxHeight":I
    .end local v15    # "maxWidth":I
    .end local v16    # "measureMatchParentChildren":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 453
    .restart local v8    # "childState":I
    .restart local v12    # "i":I
    .restart local v14    # "maxHeight":I
    .restart local v15    # "maxWidth":I
    .restart local v16    # "measureMatchParentChildren":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v15, v1

    .line 454
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v14, v1

    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 462
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_6

    .line 463
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 464
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 467
    :cond_6
    move/from16 v0, p1

    invoke-static {v15, v0, v8}, Landroid/support/wearable/view/WearableFrameLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v3, v8, 0x10

    move/from16 v0, p2

    invoke-static {v14, v0, v3}, Landroid/support/wearable/view/WearableFrameLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Landroid/support/wearable/view/WearableFrameLayout;->setMeasuredDimension(II)V

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 472
    const/4 v1, 0x1

    if-le v10, v1, :cond_9

    .line 473
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_9

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 476
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .line 481
    .restart local v13    # "lp":Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsWidth(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_7

    .line 482
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeftWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    sub-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    sub-int/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 493
    .local v9, "childWidthMeasureSpec":I
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsHeight(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_8

    .line 494
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTopWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    sub-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    sub-int/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 505
    .local v7, "childHeightMeasureSpec":I
    :goto_4
    invoke-virtual {v2, v9, v7}, Landroid/view/View;->measure(II)V

    .line 473
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 487
    .end local v7    # "childHeightMeasureSpec":I
    .end local v9    # "childWidthMeasureSpec":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsWidth(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    move/from16 v0, p1

    invoke-static {v0, v1, v3}, Landroid/support/wearable/view/WearableFrameLayout;->getChildMeasureSpec(III)I

    move-result v9

    .restart local v9    # "childWidthMeasureSpec":I
    goto :goto_3

    .line 499
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsHeight(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v1, v3}, Landroid/support/wearable/view/WearableFrameLayout;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7    # "childHeightMeasureSpec":I
    goto :goto_4

    .line 508
    .end local v2    # "child":Landroid/view/View;
    .end local v7    # "childHeightMeasureSpec":I
    .end local v9    # "childWidthMeasureSpec":I
    .end local v13    # "lp":Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    :cond_9
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 634
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    .line 636
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 276
    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 278
    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 282
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 283
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 284
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 285
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    .line 287
    if-eqz p1, :cond_4

    .line 288
    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableFrameLayout;->setWillNotDraw(Z)V

    .line 289
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 291
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 294
    :cond_1
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->applyForegroundTint()V

    .line 295
    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    .line 296
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 297
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 299
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 300
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 301
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    .line 307
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->requestLayout()V

    .line 308
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->invalidate()V

    .line 310
    :cond_3
    return-void

    .line 305
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 4
    .param p1, "foregroundGravity"    # I

    .prologue
    const/4 v3, 0x0

    .line 183
    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    if-eq v1, p1, :cond_3

    .line 184
    const v1, 0x800007

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 185
    const v1, 0x800003

    or-int/2addr p1, v1

    .line 188
    :cond_0
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_1

    .line 189
    or-int/lit8 p1, p1, 0x30

    .line 192
    :cond_1
    iput p1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    .line 195
    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 197
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 199
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 200
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 201
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    .line 210
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->requestLayout()V

    .line 212
    :cond_3
    return-void

    .line 204
    :cond_4
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 205
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 206
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 207
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    goto :goto_0
.end method

.method public setForegroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 336
    iput-object p1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    .line 339
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->applyForegroundTint()V

    .line 340
    return-void
.end method

.method public setForegroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 361
    iput-object p1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTintMode:Z

    .line 364
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->applyForegroundTint()V

    .line 365
    return-void
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .param p1, "measureAll"    # Z

    .prologue
    .line 683
    iput-boolean p1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMeasureAllChildren:Z

    .line 684
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 218
    iget-object v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 220
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 218
    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
