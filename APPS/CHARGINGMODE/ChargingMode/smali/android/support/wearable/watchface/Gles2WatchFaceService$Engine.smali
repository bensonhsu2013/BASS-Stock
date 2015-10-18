.class public Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;
.super Landroid/support/wearable/watchface/WatchFaceService$Engine;
.source "Gles2WatchFaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/watchface/Gles2WatchFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation


# static fields
.field private static final MSG_INVALIDATE:I


# instance fields
.field private mCalledOnGlContextCreated:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDestroyed:Z

.field private mDrawRequested:Z

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mInsetBottom:I

.field private mInsetLeft:I

.field final synthetic this$0:Landroid/support/wearable/watchface/Gles2WatchFaceService;


# direct methods
.method public constructor <init>(Landroid/support/wearable/watchface/Gles2WatchFaceService;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->this$0:Landroid/support/wearable/watchface/Gles2WatchFaceService;

    invoke-direct {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;-><init>(Landroid/support/wearable/watchface/WatchFaceService;)V

    .line 80
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mChoreographer:Landroid/view/Choreographer;

    .line 82
    new-instance v0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$1;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$1;-><init>(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 95
    new-instance v0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$2;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine$2;-><init>(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDrawRequested:Z

    return v0
.end method

.method static synthetic access$200(Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->drawFrame()V

    return-void
.end method

.method private createEglContext()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_1

    .line 108
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 109
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 110
    const-string v0, "Gles2WatchFaceService"

    const-string v1, "eglGetDisplay returned EGL_NO_DISPLAY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-object v4, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 142
    :goto_0
    return v2

    .line 115
    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 116
    .local v8, "version":[I
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v8, v2, v8, v9}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    const-string v0, "Gles2WatchFaceService"

    const-string v1, "eglInitialize failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-object v4, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    goto :goto_0

    .line 123
    .end local v8    # "version":[I
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_3

    .line 124
    new-array v6, v9, [I

    .line 125
    .local v6, "numEglConfigs":[I
    new-array v3, v9, [Landroid/opengl/EGLConfig;

    .line 126
    .local v3, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    # getter for: Landroid/support/wearable/watchface/Gles2WatchFaceService;->EGL_CONFIG_ATTRIB_LIST:[I
    invoke-static {}, Landroid/support/wearable/watchface/Gles2WatchFaceService;->access$300()[I

    move-result-object v1

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    const-string v0, "Gles2WatchFaceService"

    const-string v1, "eglChooseConfig failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_2
    aget-object v0, v3, v2

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 134
    .end local v3    # "eglConfigs":[Landroid/opengl/EGLConfig;
    .end local v6    # "numEglConfigs":[I
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 135
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    # getter for: Landroid/support/wearable/watchface/Gles2WatchFaceService;->EGL_CONTEXT_ATTRIB_LIST:[I
    invoke-static {}, Landroid/support/wearable/watchface/Gles2WatchFaceService;->access$400()[I

    move-result-object v5

    invoke-static {v0, v1, v4, v5, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglContext:Landroid/opengl/EGLContext;

    .line 137
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 138
    const-string v0, "Gles2WatchFaceService"

    const-string v1, "eglCreateContext returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v2, v9

    .line 142
    goto :goto_0
.end method

.method private drawFrame()V
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDrawRequested:Z

    .line 269
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->makeContextCurrent()V

    .line 277
    :try_start_0
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->onDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private makeContextCurrent()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 151
    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDrawRequested:Z

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDrawRequested:Z

    .line 247
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 251
    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 183
    const-string v1, "Gles2WatchFaceService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Gles2WatchFaceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplyWindowInsets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    .line 189
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 190
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iput v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetLeft:I

    .line 191
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetBottom:I

    .line 192
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->makeContextCurrent()V

    .line 193
    iget v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetBottom:I

    neg-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 194
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 155
    const-string v0, "Gles2WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gles2WatchFaceService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 157
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->createEglContext()Z

    .line 158
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mDestroyed:Z

    .line 163
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 165
    invoke-super {p0}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onDestroy()V

    .line 166
    return-void
.end method

.method public onDraw()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onGlContextCreated()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onGlSurfaceCreated(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 179
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 198
    const-string v0, "Gles2WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gles2WatchFaceService"

    const-string v1, "onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 201
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 204
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    # getter for: Landroid/support/wearable/watchface/Gles2WatchFaceService;->EGL_SURFACE_ATTRIB_LIST:[I
    invoke-static {}, Landroid/support/wearable/watchface/Gles2WatchFaceService;->access$500()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 207
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->makeContextCurrent()V

    .line 208
    iget v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetLeft:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mInsetBottom:I

    neg-int v1, v1

    invoke-static {v0, v1, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 209
    iget-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mCalledOnGlContextCreated:Z

    if-nez v0, :cond_2

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mCalledOnGlContextCreated:Z

    .line 211
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->onGlContextCreated()V

    .line 213
    :cond_2
    invoke-virtual {p0, p3, p4}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->onGlSurfaceCreated(II)V

    .line 215
    invoke-virtual {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->invalidate()V

    .line 216
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 230
    const-string v0, "Gles2WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gles2WatchFaceService"

    const-string v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mEglSurface:Landroid/opengl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    throw v0
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 220
    const-string v0, "Gles2WatchFaceService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gles2WatchFaceService"

    const-string v1, "onSurfaceRedrawNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/WatchFaceService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 225
    invoke-direct {p0}, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->drawFrame()V

    .line 226
    return-void
.end method

.method public final postInvalidate()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/wearable/watchface/Gles2WatchFaceService$Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    return-void
.end method
