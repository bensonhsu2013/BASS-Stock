.class public Landroid/support/wearable/activity/ConfirmationActivity;
.super Landroid/app/Activity;
.source "ConfirmationActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final EXTRA_ANIMATION_TYPE:Ljava/lang/String; = "animation_type"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final FAILURE_ANIMATION:I = 0x3

.field public static final OPEN_ON_PHONE_ANIMATION:I = 0x2

.field public static final SUCCESS_ANIMATION:I = 0x1

.field private static final TEXT_FADE_OFFSET_TIME_MS:I = 0x32


# instance fields
.field private mActionPage:Landroid/support/wearable/view/ActionPage;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static getAnimationDuration(Landroid/graphics/drawable/AnimationDrawable;)J
    .locals 6
    .param p0, "animation"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 129
    .local v0, "count":I
    const-wide/16 v2, 0x0

    .line 130
    .local v2, "duration":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 131
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/activity/ConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 60
    .local v14, "intent":Landroid/content/Intent;
    const-string v18, "animation_type"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 61
    .local v5, "animationType":I
    const-string v18, "message"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 63
    .local v16, "message":Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v5, v0, :cond_0

    .line 65
    sget v18, Landroid/support/wearable/R$layout;->error_layout:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/wearable/activity/ConfirmationActivity;->setContentView(I)V

    .line 66
    sget v18, Landroid/support/wearable/R$id;->message:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/wearable/activity/ConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 67
    .local v17, "text":Landroid/widget/TextView;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const-wide/16 v6, 0x7d0

    .line 117
    .end local v17    # "text":Landroid/widget/TextView;
    .local v6, "displayDurationMs":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/support/wearable/view/ActionPage;->setKeepScreenOn(Z)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/activity/ConfirmationActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v19, Landroid/support/wearable/activity/ConfirmationActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/activity/ConfirmationActivity$2;-><init>(Landroid/support/wearable/activity/ConfirmationActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    return-void

    .line 70
    .end local v6    # "displayDurationMs":J
    :cond_0
    new-instance v18, Landroid/support/wearable/view/ActionPage;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/wearable/view/ActionPage;->setColor(I)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/wearable/activity/ConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 73
    if-eqz v16, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ActionPage;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    packed-switch v5, :pswitch_data_0

    .line 88
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown type of animation: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 80
    :pswitch_0
    sget v8, Landroid/support/wearable/R$drawable;->go_to_phone_animation:I

    .line 81
    .local v8, "drawableRes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    move-object/from16 v18, v0

    sget v19, Landroid/support/wearable/R$drawable;->go_to_phone_animation:I

    invoke-virtual/range {v18 .. v19}, Landroid/support/wearable/view/ActionPage;->setImageResource(I)V

    .line 92
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    move-object/from16 v18, v0

    sget v19, Landroid/support/wearable/view/ActionPage;->SCALE_MODE_CENTER:I

    invoke-virtual/range {v18 .. v19}, Landroid/support/wearable/view/ActionPage;->setImageScaleMode(I)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/activity/ConfirmationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 94
    .local v9, "image":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/support/wearable/view/ActionPage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v4, v9

    .line 96
    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 98
    .local v4, "animatedDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v4}, Landroid/support/wearable/activity/ConfirmationActivity;->getAnimationDuration(Landroid/graphics/drawable/AnimationDrawable;)J

    move-result-wide v6

    .line 99
    .restart local v6    # "displayDurationMs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/wearable/view/ActionPage;->getLabel()Landroid/support/wearable/view/ActionLabel;

    move-result-object v15

    .line 100
    .local v15, "label":Landroid/support/wearable/view/ActionLabel;
    invoke-virtual {v15}, Landroid/support/wearable/view/ActionLabel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v10

    .line 101
    .local v10, "fadeDuration":J
    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x2

    const-wide/16 v22, 0x32

    add-long v22, v22, v10

    mul-long v20, v20, v22

    sub-long v20, v6, v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 103
    .local v12, "fadeOutDelay":J
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 104
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/wearable/view/ActionLabel;->setAlpha(F)V

    .line 105
    invoke-virtual {v15}, Landroid/support/wearable/view/ActionLabel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const-wide/16 v20, 0x32

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    new-instance v19, Landroid/support/wearable/activity/ConfirmationActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v12, v13}, Landroid/support/wearable/activity/ConfirmationActivity$1;-><init>(Landroid/support/wearable/activity/ConfirmationActivity;Landroid/support/wearable/view/ActionLabel;J)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 84
    .end local v4    # "animatedDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v6    # "displayDurationMs":J
    .end local v8    # "drawableRes":I
    .end local v9    # "image":Landroid/graphics/drawable/Drawable;
    .end local v10    # "fadeDuration":J
    .end local v12    # "fadeOutDelay":J
    .end local v15    # "label":Landroid/support/wearable/view/ActionLabel;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    move-object/from16 v18, v0

    sget v19, Landroid/support/wearable/R$drawable;->confirmation_animation:I

    invoke-virtual/range {v18 .. v19}, Landroid/support/wearable/view/ActionPage;->setImageResource(I)V

    .line 85
    sget v8, Landroid/support/wearable/R$drawable;->confirmation_animation:I

    .line 86
    .restart local v8    # "drawableRes":I
    goto/16 :goto_1

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
