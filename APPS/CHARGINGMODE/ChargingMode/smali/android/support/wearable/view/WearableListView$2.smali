.class Landroid/support/wearable/view/WearableListView$2;
.super Ljava/lang/Object;
.source "WearableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/WearableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$2;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$2;->this$0:Landroid/support/wearable/view/WearableListView;

    # invokes: Landroid/support/wearable/view/WearableListView;->releasePressedItem()V
    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$200(Landroid/support/wearable/view/WearableListView;)V

    .line 127
    return-void
.end method
