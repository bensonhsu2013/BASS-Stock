.class Landroid/support/wearable/activity/ConfirmationActivity$2;
.super Ljava/lang/Object;
.source "ConfirmationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/activity/ConfirmationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/activity/ConfirmationActivity;


# direct methods
.method constructor <init>(Landroid/support/wearable/activity/ConfirmationActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Landroid/support/wearable/activity/ConfirmationActivity$2;->this$0:Landroid/support/wearable/activity/ConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity$2;->this$0:Landroid/support/wearable/activity/ConfirmationActivity;

    invoke-virtual {v0}, Landroid/support/wearable/activity/ConfirmationActivity;->finish()V

    .line 122
    iget-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity$2;->this$0:Landroid/support/wearable/activity/ConfirmationActivity;

    const/4 v1, 0x0

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/activity/ConfirmationActivity;->overridePendingTransition(II)V

    .line 123
    return-void
.end method
