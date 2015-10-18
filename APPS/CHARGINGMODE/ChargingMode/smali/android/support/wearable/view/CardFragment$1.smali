.class Landroid/support/wearable/view/CardFragment$1;
.super Ljava/lang/Object;
.source "CardFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/view/CardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/CardFragment;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/CardFragment;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    # getter for: Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;
    invoke-static {v0}, Landroid/support/wearable/view/CardFragment;->access$000(Landroid/support/wearable/view/CardFragment;)Landroid/support/wearable/view/CardScrollView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/CardScrollView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 295
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    # getter for: Landroid/support/wearable/view/CardFragment;->mScrollToTop:Z
    invoke-static {v0}, Landroid/support/wearable/view/CardFragment;->access$100(Landroid/support/wearable/view/CardFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    # setter for: Landroid/support/wearable/view/CardFragment;->mScrollToTop:Z
    invoke-static {v0, v1}, Landroid/support/wearable/view/CardFragment;->access$102(Landroid/support/wearable/view/CardFragment;Z)Z

    .line 297
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-virtual {v0}, Landroid/support/wearable/view/CardFragment;->scrollToTop()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    # getter for: Landroid/support/wearable/view/CardFragment;->mScrollToBottom:Z
    invoke-static {v0}, Landroid/support/wearable/view/CardFragment;->access$200(Landroid/support/wearable/view/CardFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    # setter for: Landroid/support/wearable/view/CardFragment;->mScrollToBottom:Z
    invoke-static {v0, v1}, Landroid/support/wearable/view/CardFragment;->access$202(Landroid/support/wearable/view/CardFragment;Z)Z

    .line 300
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-virtual {v0}, Landroid/support/wearable/view/CardFragment;->scrollToBottom()V

    goto :goto_0
.end method
