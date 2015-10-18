.class Landroid/support/wearable/view/DismissOverlayView$2;
.super Ljava/lang/Object;
.source "DismissOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/view/DismissOverlayView;->showIntroIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/DismissOverlayView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/DismissOverlayView;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Landroid/support/wearable/view/DismissOverlayView$2;->this$0:Landroid/support/wearable/view/DismissOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView$2;->this$0:Landroid/support/wearable/view/DismissOverlayView;

    # invokes: Landroid/support/wearable/view/DismissOverlayView;->hide()V
    invoke-static {v0}, Landroid/support/wearable/view/DismissOverlayView;->access$000(Landroid/support/wearable/view/DismissOverlayView;)V

    .line 115
    return-void
.end method
