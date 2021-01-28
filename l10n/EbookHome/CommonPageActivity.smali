.class public Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;
.super Landroid/app/Activity;
.source "CommonPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$3;,
        Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$BrowseListGestureListener;,
        Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$ApplicationLauncher;,
        Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$ApplicationsAdapter;,
        Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;
    }
.end annotation


# static fields
.field private static final ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String; = null

.field static final ACTION_THUMBNAIL_UPDATE:Ljava/lang/String; = "com.sony.drbd.ebook.mediascanner.THUMBNAIL_UPDATE"

.field protected static final APPS_PAGE:I = 0x2

.field private static final BUILD_TYPE_ENG:Ljava/lang/String; = "eng"

.field private static final BUILD_TYPE_USER:Ljava/lang/String; = "user"

.field protected static final CATEGORIZED_MULTIMEDIA:I = 0x3

.field protected static final CATEGORIZED_NETWORK:I = 0x1

.field protected static final CATEGORIZED_NONE:I = 0x0

.field protected static final CATEGORIZED_REFERENCE:I = 0x2

.field protected static final CATEGORIZED_SYSTEM:I = 0x4

.field private static final COLLECTION_OFFSET:I = 0x3

.field protected static final FIRST_PAGE:I = 0x1

.field protected static final FIRST_PAGE_APP_NUM:I = 0x4

.field protected static final HOME_FLAG:I = 0x14200000

.field protected static final LAUNCHER_PAGE:I = 0x3

.field private static final NUMBER_CONTENT_MAX:I = 0x98967f

.field private static final NUMBER_CONTENT_MIN:I = 0x0

.field protected static final PAGE_APP_NUM:I = 0xe

.field protected static final TURN_PAGE_FLAG:I = 0x10000000

.field private static final WHERE_CLAUSE:Ljava/lang/String; = "(mime_type in (?, ?, ?, ?))"

.field static mCreateTime:J

.field static mDemoModeKeyCounter:I

.field static mDemoWakeLock:Landroid/os/PowerManager$WakeLock;

.field static mHardResetKeyCounter:I

.field protected static mPageturnPreference:I

.field static mTestModeKeyCounter:I


# instance fields
.field protected final HOME_LOG_TAG:Ljava/lang/String;

.field private countWakeLock:I

.field protected mArrayApps:[Ljava/lang/String;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGrid:Lcom/sony/drbd/ebook/home/views/TurnPageGridView;

.field protected mMountReceiver:Landroid/content/BroadcastReceiver;

.field protected mNextPage:Landroid/widget/Button;

.field protected mPageNumberText:Landroid/widget/TextView;

.field protected mPrevPage:Landroid/widget/Button;

.field protected mSkuName:Ljava/lang/String;

.field protected mTotalPage:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 112
    sput v2, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTestModeKeyCounter:I

    .line 113
    sput v0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoModeKeyCounter:I

    .line 114
    sput v0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    .line 115
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mCreateTime:J

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/x-ms-bmp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const-string v0, "HomeLog"

    iput-object v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->HOME_LOG_TAG:Ljava/lang/String;

    .line 83
    const-string v0, "UC,CEW"

    iput-object v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mSkuName:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->countWakeLock:I

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTotalPage:I

    .line 132
    iput-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1281
    new-instance v0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$2;

    invoke-direct {v0, p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$2;-><init>(Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;)V

    iput-object v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private acquireWakelock(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-string v4, "power"

    const-string v3, "HomeLog"

    .line 277
    iget v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->countWakeLock:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->countWakeLock:I

    .line 278
    const-string v1, "HomeLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakelock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->countWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 280
    const-string v1, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 281
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const-string v1, "HomeLog"

    const-string v1, "acquire Wakelock PARTIAL_WAKE_LOCK"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v1, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "EbookHomeService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 284
    iget-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 287
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method public static enableSpecialOperation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1463
    sput v0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoModeKeyCounter:I

    .line 1464
    sput v0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    .line 1465
    return-void
.end method

.method private releaseWakelock()V
    .locals 3

    .prologue
    const-string v2, "HomeLog"

    .line 291
    iget v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->countWakeLock:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->countWakeLock:I

    .line 292
    const-string v0, "HomeLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseWakelock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->countWakeLock:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->countWakeLock:I

    if-nez v0, :cond_0

    .line 294
    const-string v0, "HomeLog"

    const-string v0, "release Wakelock PARTIAL_WAKE_LOCK"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 298
    :cond_0
    return-void
.end method

.method private setActivityFromId(Lcom/sony/drbd/ebook/home/ApplicationInfo;Ljava/lang/String;)V
    .locals 40
    .parameter "info"
    .parameter "str"

    .prologue
    .line 626
    :try_start_0
    sget-object v3, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$3;->$SwitchMap$com$sony$drbd$ebook$home$activities$CommonPageActivity$Application:[I

    invoke-static/range {p2 .. p2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->toApplication(Ljava/lang/String;)Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 861
    :goto_0
    return-void

    .line 629
    :pswitch_0
    const/4 v4, 0x0

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "android.intent.category.DEFAULT"

    const-string v8, "vnd.android.cursor.dir/vnd.sony.drbd.ebook.book"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 857
    :catch_0
    move-exception v3

    move-object/from16 v39, v3

    .line 859
    .local v39, e:Ljava/lang/Exception;
    const-string v3, "HomeLog"

    const-string v4, "Home:setActivityFromId Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    .end local v39           #e:Ljava/lang/Exception;
    :pswitch_1
    const/4 v4, 0x0

    const/high16 v5, 0x1420

    :try_start_1
    const-string v6, "android.intent.action.VIEW"

    const-string v7, "android.intent.category.DEFAULT"

    const-string v8, "vnd.android.cursor.dir/x-sony-notepad-svg"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :pswitch_2
    const/4 v4, 0x0

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "android.intent.category.DEFAULT"

    const-string v8, "vnd.android.cursor.dir/x-sony-notepad-text"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :pswitch_3
    const/4 v4, 0x0

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "android.intent.category.DEFAULT"

    const-string v8, "vnd.android.cursor.dir/vnd.sony.drbd.ebook.periodicals"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :pswitch_4
    const/4 v4, 0x0

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "android.intent.category.DEFAULT"

    const-string v8, "vnd.android.cursor.dir/vnd.sony.drbd.ebook.collection"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :pswitch_5
    const/4 v4, 0x0

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "android.intent.category.DEFAULT"

    const-string v8, "vnd.android.cursor.dir/vnd.sony.drbd.ebook.markup"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :pswitch_6
    new-instance v4, Landroid/content/ComponentName;

    const-string v3, "com.sony.drbd.ebook.Dictionary"

    const-string v5, "com.sony.drbd.ebook.Dictionary.DictionaryActivity"

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.MAIN"

    const-string v7, "android.intent.category.DEFAULT"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 722
    :pswitch_7
    const/4 v4, 0x0

    const/high16 v5, 0x1420

    const-string v6, "android.settings.SETTINGS"

    const-string v7, "android.intent.category.PREFERENCE"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 735
    :pswitch_8
    const/4 v4, 0x0

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "android.intent.category.DEFAULT"

    const-string v8, "vnd.android.cursor.dir/audio"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 748
    :pswitch_9
    const/4 v4, 0x0

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "android.intent.category.DEFAULT"

    const-string v8, "vnd.android.cursor.dir/image"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 761
    :pswitch_a
    new-instance v4, Landroid/content/ComponentName;

    const-string v3, "com.sony.drbd.ebook.webbrowser"

    const-string v5, "com.sony.drbd.ebook.webbrowser.EbookWebBrowserActivity"

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.MAIN"

    const-string v7, "android.intent.category.DEFAULT"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 773
    :pswitch_b
    new-instance v4, Landroid/content/ComponentName;

    const-string v3, "com.sony.drbd.ebook.netapp"

    const-string v5, "com.sony.drbd.ebook.netapp.SonyStoreFrontActivity"

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.MAIN"

    const-string v7, "android.intent.category.DEFAULT"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 787
    :pswitch_c
    const/4 v3, 0x3

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "success_url"

    aput-object v4, v10, v3

    const/4 v3, 0x1

    const-string v4, "message"

    aput-object v4, v10, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v10, v3

    .line 788
    .local v10, extStrThirdStore:[Ljava/lang/String;
    const/4 v3, 0x3

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v11, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v11, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v11, v3

    .line 789
    .local v11, extDataThirdStore:[Ljava/lang/String;
    const/4 v3, 0x0

    const v4, 0x7f060007

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    .line 790
    const/4 v3, 0x1

    const v4, 0x7f060040

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    .line 791
    const/4 v3, 0x2

    const v4, 0x7f06003f

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    .line 792
    new-instance v4, Landroid/content/ComponentName;

    const-string v3, "com.sony.drbd.ebook.netapp"

    const-string v5, "com.sony.drbd.ebook.netapp.StoreFrontActivity"

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v5, 0x1420

    const-string v6, "android.intent.action.MAIN"

    const-string v7, "android.intent.category.DEFAULT"

    const/4 v8, 0x0

    const v3, 0x7f060007

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 806
    .end local v10           #extStrThirdStore:[Ljava/lang/String;
    .end local v11           #extDataThirdStore:[Ljava/lang/String;
    :pswitch_d
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const-string v4, "mode"

    aput-object v4, v19, v3

    .line 807
    .local v19, extStrGooglePd:[Ljava/lang/String;
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const-string v4, "googlepd"

    aput-object v4, v20, v3

    .line 808
    .local v20, extDataGooglePd:[Ljava/lang/String;
    new-instance v13, Landroid/content/ComponentName;

    const-string v3, "com.sony.drbd.ebook.netapp"

    const-string v4, "com.sony.drbd.ebook.netapp.SonyStoreFrontActivity"

    invoke-direct {v13, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v14, 0x1420

    const-string v15, "android.intent.action.MAIN"

    const-string v16, "android.intent.category.DEFAULT"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v20}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 822
    .end local v19           #extStrGooglePd:[Ljava/lang/String;
    .end local v20           #extDataGooglePd:[Ljava/lang/String;
    :pswitch_e
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v3, 0x0

    const-string v4, "mode"

    aput-object v4, v28, v3

    .line 823
    .local v28, extStrPurchased:[Ljava/lang/String;
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v3, 0x0

    const-string v4, "contents"

    aput-object v4, v29, v3

    .line 824
    .local v29, extDataPurchased:[Ljava/lang/String;
    new-instance v22, Landroid/content/ComponentName;

    const-string v3, "com.sony.drbd.ebook.netapp"

    const-string v4, "com.sony.drbd.ebook.netapp.SonyStoreFrontActivity"

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v23, 0x1420

    const-string v24, "android.intent.action.MAIN"

    const-string v25, "android.intent.category.DEFAULT"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, p1

    invoke-virtual/range {v21 .. v29}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 838
    .end local v28           #extStrPurchased:[Ljava/lang/String;
    .end local v29           #extDataPurchased:[Ljava/lang/String;
    :pswitch_f
    const/4 v3, 0x3

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/4 v3, 0x0

    const-string v4, "success_url"

    aput-object v4, v37, v3

    const/4 v3, 0x1

    const-string v4, "message"

    aput-object v4, v37, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v37, v3

    .line 839
    .local v37, extStrLibrary:[Ljava/lang/String;
    const/4 v3, 0x3

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v38, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v38, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v38, v3

    .line 840
    .local v38, extDataLibrary:[Ljava/lang/String;
    const/4 v3, 0x0

    const v4, 0x7f060008

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v38, v3

    .line 841
    const/4 v3, 0x1

    const v4, 0x7f060041

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v38, v3

    .line 842
    const/4 v3, 0x2

    const v4, 0x7f06003f

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v38, v3

    .line 843
    new-instance v31, Landroid/content/ComponentName;

    const-string v3, "com.sony.drbd.ebook.netapp"

    const-string v4, "com.sony.drbd.ebook.netapp.StoreFrontActivity"

    move-object/from16 v0, v31

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v32, 0x1420

    const-string v33, "android.intent.action.MAIN"

    const-string v34, "android.intent.category.DEFAULT"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v30, p1

    invoke-virtual/range {v30 .. v38}, Lcom/sony/drbd/ebook/home/ApplicationInfo;->setActivity(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_3
    .end packed-switch
.end method

.method private setPowerKeyEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1445
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/devices/platform/mxc_spi.2/spi3.2/sub_cpu_pwrbutton/power_key_enable"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1448
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1449
    .local v2, ostrm:Ljava/io/OutputStream;
    if-eqz p1, :cond_2

    const/16 v3, 0x31

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 1450
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    .end local v2           #ostrm:Ljava/io/OutputStream;
    :cond_0
    :goto_1
    if-nez p1, :cond_3

    sget-object v3, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1456
    sget-object v3, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1460
    :cond_1
    :goto_2
    return-void

    .line 1449
    .restart local v2       #ostrm:Ljava/io/OutputStream;
    :cond_2
    const/16 v3, 0x30

    goto :goto_0

    .line 1451
    .end local v2           #ostrm:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1452
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1457
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    if-eqz p1, :cond_1

    sget-object v3, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1458
    sget-object v3, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2
.end method


# virtual methods
.method protected adaptApplication()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "HomeLog"

    const-string v1, "Home:adaptApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->loadApplications()V

    .line 306
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->bindApplications()V

    .line 307
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->bindButtons()V

    .line 308
    return-void
.end method

.method public bindApplications()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public bindButtons()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 24
    .parameter "event"

    .prologue
    .line 1325
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_b

    .line 1326
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 1327
    .local v13, keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v18

    .line 1328
    .local v18, scanCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    if-nez v20, :cond_7

    .line 1330
    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTestModeKeyCounter:I

    if-nez v20, :cond_0

    const/16 v20, 0x6a

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x16

    move v0, v13

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    :cond_0
    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTestModeKeyCounter:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x4

    move v0, v13

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    :cond_1
    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTestModeKeyCounter:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v20, 0x69

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x15

    move v0, v13

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    :cond_2
    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTestModeKeyCounter:I

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/16 v20, 0x4

    move v0, v13

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1334
    :cond_3
    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTestModeKeyCounter:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTestModeKeyCounter:I

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 1335
    const-string v11, "rVPzp8O1j0m01oOq.crsZVu8crtmXGrc2"

    .line 1336
    .local v11, fname:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    const-string v21, "/sdcard/rVPzp8O1j0m01oOq.crsZVu8crtmXGrc2"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_4

    new-instance v20, Ljava/io/File;

    const-string v21, "/extsd/rVPzp8O1j0m01oOq.crsZVu8crtmXGrc2"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1339
    :cond_4
    :try_start_0
    new-instance v12, Landroid/content/Intent;

    const-string v20, "m0U45ekrd2irxYnG"

    const-string v21, "HErHv1n21Mrn0rRQ://"

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object v0, v12

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1340
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    .end local v12           #intent:Landroid/content/Intent;
    :cond_5
    :goto_0
    const/16 v20, 0x0

    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTestModeKeyCounter:I

    .line 1350
    .end local v11           #fname:Ljava/lang/String;
    :cond_6
    :goto_1
    const/16 v20, -0x1

    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoModeKeyCounter:I

    .line 1351
    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v20, 0x4

    move v0, v13

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/16 v20, 0x2

    :goto_2
    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    .line 1354
    :cond_7
    packed-switch v13, :pswitch_data_0

    .line 1441
    .end local v13           #keyCode:I
    .end local v18           #scanCode:I
    :cond_8
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v20

    :goto_4
    return v20

    .line 1341
    .restart local v11       #fname:Ljava/lang/String;
    .restart local v13       #keyCode:I
    .restart local v18       #scanCode:I
    :catch_0
    move-exception v20

    move-object/from16 v9, v20

    .line 1342
    .local v9, e:Landroid/content/ActivityNotFoundException;
    const-string v20, "HomeLog"

    const-string v21, "Home:launch testmode ActivityNotFoundException"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1348
    .end local v9           #e:Landroid/content/ActivityNotFoundException;
    .end local v11           #fname:Ljava/lang/String;
    :cond_9
    const/16 v20, 0x0

    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTestModeKeyCounter:I

    goto :goto_1

    .line 1351
    :cond_a
    const/16 v20, -0x1

    goto :goto_2

    .line 1357
    :pswitch_0
    const/16 v20, 0x1

    goto :goto_4

    .line 1359
    .end local v13           #keyCode:I
    .end local v18           #scanCode:I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1360
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 1361
    .restart local v13       #keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v18

    .line 1363
    .restart local v18       #scanCode:I
    const/16 v20, 0x69

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    const/16 v20, 0x15

    move v0, v13

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    const/16 v20, 0x4

    move v0, v13

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1364
    :cond_c
    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoModeKeyCounter:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoModeKeyCounter:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoModeKeyCounter:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 1365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sget-wide v22, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mCreateTime:J

    sub-long v7, v20, v22

    .line 1366
    .local v7, diff:J
    const-wide/16 v20, 0x1e14

    cmp-long v20, v7, v20

    if-ltz v20, :cond_d

    .line 1367
    const-string v20, "demo_mode"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1368
    .local v17, prefs:Landroid/content/SharedPreferences;
    const-string v20, "enable"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_12

    const/16 v20, 0x1

    move/from16 v19, v20

    .line 1369
    .local v19, value:Z
    :goto_5
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1370
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "enable"

    move-object v0, v10

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1371
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1372
    if-nez v19, :cond_13

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setPowerKeyEnable(Z)V

    .line 1373
    new-instance v12, Landroid/content/Intent;

    const-string v20, "android.setting.EBOOK_DEMO_MODE_CHANGED"

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1374
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v20, "demo_mode"

    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1375
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1377
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v17           #prefs:Landroid/content/SharedPreferences;
    .end local v19           #value:Z
    :cond_d
    const/16 v20, -0x1

    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoModeKeyCounter:I

    .line 1383
    .end local v7           #diff:J
    :cond_e
    :goto_7
    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    if-eqz v20, :cond_f

    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    :cond_f
    const/16 v20, 0x4

    move v0, v13

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    :cond_10
    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    const/16 v20, 0x6a

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    const/16 v20, 0x16

    move v0, v13

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1385
    :cond_11
    sget v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 1387
    :try_start_1
    new-instance v12, Landroid/content/Intent;

    const-string v20, "android.setting.EBOOK_HARDRESET"

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1388
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1392
    .end local v12           #intent:Landroid/content/Intent;
    :goto_8
    const/16 v20, -0x1

    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    .line 1393
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v20

    goto/16 :goto_4

    .line 1368
    .restart local v7       #diff:J
    .restart local v17       #prefs:Landroid/content/SharedPreferences;
    :cond_12
    const/16 v20, 0x0

    move/from16 v19, v20

    goto/16 :goto_5

    .line 1372
    .restart local v10       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v19       #value:Z
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 1380
    .end local v7           #diff:J
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v17           #prefs:Landroid/content/SharedPreferences;
    .end local v19           #value:Z
    :cond_14
    const/16 v20, -0x1

    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoModeKeyCounter:I

    goto :goto_7

    .line 1389
    :catch_1
    move-exception v20

    move-object/from16 v9, v20

    .line 1390
    .restart local v9       #e:Landroid/content/ActivityNotFoundException;
    const-string v20, "HomeLog"

    const-string v21, "Home:launch hardreset ActivityNotFoundException"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1396
    .end local v9           #e:Landroid/content/ActivityNotFoundException;
    :cond_15
    const/16 v20, -0x1

    sput v20, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mHardResetKeyCounter:I

    .line 1399
    :cond_16
    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_3

    .line 1408
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v20

    const/16 v21, 0x69

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 1409
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->turnPage(Z)V

    goto/16 :goto_3

    .line 1401
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v20

    if-nez v20, :cond_17

    .line 1405
    :cond_17
    const/16 v20, 0x1

    goto/16 :goto_4

    .line 1410
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v20

    const/16 v21, 0x6a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1411
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->turnPage(Z)V

    goto/16 :goto_3

    .line 1418
    :sswitch_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v16

    .line 1419
    .local v16, now:Ljava/util/Date;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1421
    .local v6, date:Ljava/lang/String;
    const-string v20, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 1424
    .local v15, nomgr:Landroid/app/NotificationManager;
    new-instance v14, Landroid/app/Notification;

    const v20, 0x7f02003b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object v0, v14

    move/from16 v1, v20

    move-object v2, v6

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1427
    .local v14, no:Landroid/app/Notification;
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1432
    .local v5, contentIntent:Landroid/app/PendingIntent;
    const-string v20, ""

    const-string v21, ""

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1434
    const v20, 0x7f02003b

    move-object v0, v15

    move/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1435
    const v20, 0x7f02003b

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_3

    .line 1354
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 1399
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "str"

    .prologue
    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$3;->$SwitchMap$com$sony$drbd$ebook$home$activities$CommonPageActivity$Application:[I

    invoke-static {p1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->toApplication(Ljava/lang/String;)Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 984
    :goto_0
    return-object v0

    .line 933
    :pswitch_0
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 934
    goto :goto_0

    .line 936
    :pswitch_1
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 937
    goto :goto_0

    .line 939
    :pswitch_2
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 940
    goto :goto_0

    .line 943
    :pswitch_3
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 944
    goto :goto_0

    .line 946
    :pswitch_4
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 947
    goto :goto_0

    .line 949
    :pswitch_5
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 950
    goto :goto_0

    .line 952
    :pswitch_6
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 953
    goto :goto_0

    .line 955
    :pswitch_7
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 956
    goto :goto_0

    .line 958
    :pswitch_8
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 959
    goto :goto_0

    .line 961
    :pswitch_9
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 962
    goto :goto_0

    .line 964
    :pswitch_a
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 965
    goto/16 :goto_0

    .line 967
    :pswitch_b
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 968
    goto/16 :goto_0

    .line 970
    :pswitch_c
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 971
    goto/16 :goto_0

    .line 973
    :pswitch_d
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 974
    goto/16 :goto_0

    .line 976
    :pswitch_e
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 977
    goto/16 :goto_0

    .line 979
    :pswitch_f
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 980
    goto/16 :goto_0

    .line 931
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_3
    .end packed-switch
.end method

.method public getApplicationTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 868
    const-string v0, ""

    .line 869
    .local v0, title:Ljava/lang/String;
    sget-object v1, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$3;->$SwitchMap$com$sony$drbd$ebook$home$activities$CommonPageActivity$Application:[I

    invoke-static {p1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->toApplication(Ljava/lang/String;)Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 922
    :goto_0
    return-object v0

    .line 871
    :pswitch_0
    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    goto :goto_0

    .line 874
    :pswitch_1
    const v1, 0x7f060019

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 875
    goto :goto_0

    .line 877
    :pswitch_2
    const v1, 0x7f06001a

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 878
    goto :goto_0

    .line 881
    :pswitch_3
    const v1, 0x7f06001b

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 882
    goto :goto_0

    .line 884
    :pswitch_4
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 885
    goto :goto_0

    .line 887
    :pswitch_5
    const v1, 0x7f060017

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 888
    goto :goto_0

    .line 890
    :pswitch_6
    const v1, 0x7f06001d

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 891
    goto :goto_0

    .line 893
    :pswitch_7
    const v1, 0x7f06002d

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 894
    goto :goto_0

    .line 896
    :pswitch_8
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 897
    goto :goto_0

    .line 899
    :pswitch_9
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 900
    goto :goto_0

    .line 902
    :pswitch_a
    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 903
    goto :goto_0

    .line 905
    :pswitch_b
    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 906
    goto :goto_0

    .line 908
    :pswitch_c
    const v1, 0x7f060043

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    goto :goto_0

    .line 911
    :pswitch_d
    const v1, 0x7f060026

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 912
    goto :goto_0

    .line 914
    :pswitch_e
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 915
    goto :goto_0

    .line 917
    :pswitch_f
    const v1, 0x7f060042

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 918
    goto :goto_0

    .line 869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_3
    .end packed-switch
.end method

.method protected getArrayApplicationInfo()[Ljava/lang/String;
    .locals 11

    .prologue
    const v10, 0x7f040003

    const/4 v9, 0x0

    const-string v8, "HomeLog"

    .line 322
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, arrayHomeApps:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 326
    .local v1, context:Landroid/content/Context;
    :try_start_0
    const-string v5, "com.sony.drbd.ebook.setting"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    :goto_0
    iget-object v5, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mSkuName:Ljava/lang/String;

    const-string v6, "JP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    const-string v5, "HomeLog"

    const-string v5, "Home:country: JP"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_1
    return-object v0

    .line 328
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 329
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v5, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mSkuName:Ljava/lang/String;

    const-string v6, "RU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 336
    const-string v5, "HomeLog"

    const-string v5, "Home:country: RU"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 341
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, country:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 343
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 344
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v5, "CountrySelection"

    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06003b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    const-string v5, "HomeLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Home:country:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v5, "PageTurn_num"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mPageturnPreference:I

    .line 348
    .end local v4           #pref:Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    const-string v5, "HomeLog"

    const-string v6, "Home:country: NL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 351
    :cond_3
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 352
    :cond_4
    const-string v5, "HomeLog"

    const-string v6, "Home:country: General US/CA/UK/CN/TW"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 354
    :cond_5
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 355
    const-string v5, "HomeLog"

    const-string v6, "Home:country: Others BE/CH/SE/NO/FI/DK"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 358
    :cond_6
    const-string v5, "HomeLog"

    const-string v6, "Home:country: FR/DE/AT/IT/ES/AU"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 361
    .end local v2           #country:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 362
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "HomeLog"

    const-string v5, "Home:country: Exception"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 364
    sput v9, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mPageturnPreference:I

    goto/16 :goto_1
.end method

.method public getContentNumber(Ljava/lang/String;)I
    .locals 13
    .parameter "str"

    .prologue
    const-string v0, "(mime_type in (?, ?, ?, ?))"

    .line 991
    const/4 v12, -0x1

    .line 992
    .local v12, number:I
    const/4 v10, 0x0

    .line 994
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$3;->$SwitchMap$com$sony$drbd$ebook$home$activities$CommonPageActivity$Application:[I

    invoke-static {p1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->toApplication(Ljava/lang/String;)Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    .line 1062
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v10, :cond_2

    .line 1063
    if-gez v12, :cond_1

    .line 1064
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1066
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1069
    :cond_2
    :goto_1
    return v12

    .line 996
    :pswitch_1
    :try_start_1
    const-string v3, "periodical_name IS NULL"

    .line 997
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sony/drbd/ebook/contenttable/Contents$Book;->ALL_BOOKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 999
    goto :goto_0

    .line 1001
    .end local v3           #selection:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sony/drbd/ebook/contenttable/Contents$Notepad;->ALL_HANDWRITINGS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1003
    goto :goto_0

    .line 1005
    :pswitch_3
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sony/drbd/ebook/contenttable/Contents$Notepad;->ALL_TEXTMEMOS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1007
    goto :goto_0

    .line 1010
    :pswitch_4
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sony/drbd/ebook/contenttable/Contents$Periodical$Periodicals;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1012
    goto :goto_0

    .line 1014
    :pswitch_5
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sony/drbd/ebook/contenttable/Contents$Collection;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1016
    if-eqz v10, :cond_0

    .line 1017
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1018
    add-int/lit8 v12, v12, 0x3

    goto :goto_0

    .line 1022
    :pswitch_6
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sony/drbd/ebook/contenttable/Contents$Markups;->ALL_MARKUPS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1024
    goto :goto_0

    .line 1027
    :pswitch_7
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1029
    if-eqz v10, :cond_3

    .line 1030
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1031
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1034
    :cond_3
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1036
    if-eqz v10, :cond_0

    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v12, v0

    goto/16 :goto_0

    .line 1042
    :pswitch_8
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "(mime_type in (?, ?, ?, ?))"

    sget-object v8, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1044
    if-eqz v10, :cond_4

    .line 1045
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1046
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1049
    :cond_4
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "(mime_type in (?, ?, ?, ?))"

    sget-object v8, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1051
    if-eqz v10, :cond_0

    .line 1052
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    add-int/2addr v12, v0

    goto/16 :goto_0

    .line 1058
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 1060
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "HomeLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home:getContentNumber Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1062
    if-eqz v10, :cond_2

    .line 1063
    if-gez v12, :cond_5

    .line 1064
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1066
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1062
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_7

    .line 1063
    if-gez v12, :cond_6

    .line 1064
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1066
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 994
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public initialSetup()V
    .locals 6

    .prologue
    .line 1154
    const-string v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1155
    const/4 v4, 0x2

    iput v4, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTotalPage:I

    .line 1159
    :goto_0
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;

    .line 1160
    .local v2, item:Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;
    invoke-virtual {v2}, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;->clearApplications()V

    .line 1163
    const/4 v0, 0x0

    .line 1165
    .local v0, context:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.sony.drbd.ebook.setting"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1170
    :goto_1
    if-eqz v0, :cond_0

    .line 1171
    const-string v4, "product_info"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1172
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "sku_name"

    const-string v5, "UC,CEW"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mSkuName:Ljava/lang/String;

    .line 1174
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 1157
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #item:Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;
    :cond_1
    const/4 v4, 0x3

    iput v4, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mTotalPage:I

    goto :goto_0

    .line 1167
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #item:Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1168
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public isCategorized(Ljava/lang/String;I)Z
    .locals 3
    .parameter "str"
    .parameter "id"

    .prologue
    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, ret:Z
    if-nez p2, :cond_1

    .line 577
    const/4 v0, 0x1

    .line 617
    :cond_0
    :goto_0
    return v0

    .line 579
    :cond_1
    sget-object v1, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$3;->$SwitchMap$com$sony$drbd$ebook$home$activities$CommonPageActivity$Application:[I

    invoke-static {p1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->toApplication(Ljava/lang/String;)Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 587
    :pswitch_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 588
    const/4 v0, 0x1

    goto :goto_0

    .line 592
    :pswitch_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 593
    const/4 v0, 0x1

    goto :goto_0

    .line 598
    :pswitch_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 599
    const/4 v0, 0x1

    goto :goto_0

    .line 609
    :pswitch_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 610
    const/4 v0, 0x1

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public isLongTitle(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 1138
    const/4 v0, 0x0

    .line 1139
    .local v0, ret:Z
    sget-object v1, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$3;->$SwitchMap$com$sony$drbd$ebook$home$activities$CommonPageActivity$Application:[I

    invoke-static {p1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->toApplication(Ljava/lang/String;)Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1147
    :goto_0
    return v0

    .line 1142
    :pswitch_0
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1143
    goto :goto_0

    .line 1139
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public isNetwork(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 1118
    const/4 v0, 0x0

    .line 1119
    .local v0, ret:Z
    sget-object v1, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$3;->$SwitchMap$com$sony$drbd$ebook$home$activities$CommonPageActivity$Application:[I

    invoke-static {p1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->toApplication(Ljava/lang/String;)Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1131
    :goto_0
    return v0

    .line 1126
    :pswitch_0
    const/4 v0, 0x1

    .line 1127
    goto :goto_0

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isUnreadContent(Ljava/lang/String;)Z
    .locals 10
    .parameter "str"

    .prologue
    const-string v0, "periodical_name"

    const-string v2, " IS NULL"

    const-string v0, " AND "

    .line 1076
    const/4 v8, 0x0

    .line 1077
    .local v8, ret:Z
    const/4 v6, 0x0

    .line 1079
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "reading_time"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v5, "reading_time DESC LIMIT 1"

    .line 1085
    .local v5, sortOrder:Ljava/lang/String;
    :try_start_0
    sget-object v0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$3;->$SwitchMap$com$sony$drbd$ebook$home$activities$CommonPageActivity$Application:[I

    invoke-static {p1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->toApplication(Ljava/lang/String;)Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$Application;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v0, :sswitch_data_0

    .line 1106
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1107
    const/4 v8, 0x1

    .line 1108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1111
    :cond_0
    :goto_1
    return v8

    .line 1087
    :sswitch_0
    :try_start_1
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "periodical_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1089
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sony/drbd/ebook/contenttable/Contents$Book;->ALL_BOOKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1091
    goto :goto_0

    .line 1094
    .end local v3           #selection:Ljava/lang/String;
    :sswitch_1
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "periodical_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1096
    .restart local v3       #selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sony/drbd/ebook/contenttable/Contents$Periodical;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 1098
    goto :goto_0

    .line 1102
    .end local v3           #selection:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1104
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "HomeLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home:isUnreadContent Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1106
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1107
    const/4 v8, 0x1

    .line 1108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1106
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1107
    const/4 v8, 0x1

    .line 1108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1085
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method protected loadApplications()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method protected loadHomeApplication([Ljava/lang/String;III)Ljava/util/ArrayList;
    .locals 6
    .parameter "arrayHomeApps"
    .parameter "init"
    .parameter "max"
    .parameter "categorized_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sony/drbd/ebook/home/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    array-length v5, p1

    sub-int/2addr v5, p2

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 382
    .local v2, count:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    .local v1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sony/drbd/ebook/home/ApplicationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 387
    move v3, p2

    .local v3, i:I
    :goto_0
    add-int v5, p2, v2

    if-ge v3, v5, :cond_1

    .line 388
    new-instance v0, Lcom/sony/drbd/ebook/home/ApplicationInfo;

    invoke-direct {v0}, Lcom/sony/drbd/ebook/home/ApplicationInfo;-><init>()V

    .line 389
    .local v0, application:Lcom/sony/drbd/ebook/home/ApplicationInfo;
    aget-object v4, p1, v3

    .line 390
    .local v4, str:Ljava/lang/String;
    invoke-virtual {p0, v4, p4}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->isCategorized(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 391
    invoke-direct {p0, v0, v4}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setActivityFromId(Lcom/sony/drbd/ebook/home/ApplicationInfo;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0, v4}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getContentNumber(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/sony/drbd/ebook/home/ApplicationInfo;->number:I

    .line 393
    invoke-virtual {p0, v4}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->isUnreadContent(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/sony/drbd/ebook/home/ApplicationInfo;->unread:Z

    .line 394
    invoke-virtual {p0, v4}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->isNetwork(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/sony/drbd/ebook/home/ApplicationInfo;->network:Z

    .line 395
    invoke-virtual {p0, v4}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getApplicationTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sony/drbd/ebook/home/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 396
    invoke-virtual {p0, v4}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/sony/drbd/ebook/home/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 397
    invoke-virtual {p0, v4}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->isLongTitle(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/sony/drbd/ebook/home/ApplicationInfo;->title_num_flg:Z

    .line 398
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    .end local v0           #application:Lcom/sony/drbd/ebook/home/ApplicationInfo;
    .end local v4           #str:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method protected mediaEject(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1310
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setupViews(Landroid/content/Context;ZZ)V

    .line 1311
    return-void
.end method

.method protected mediaMounted(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1308
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1225
    :goto_0
    :pswitch_0
    return-void

    .line 1216
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->turnPage(Z)V

    goto :goto_0

    .line 1220
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->turnPage(Z)V

    goto :goto_0

    .line 1213
    :pswitch_data_0
    .packed-switch 0x7f09004f
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "demo_mode"

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$BrowseListGestureListener;

    invoke-direct {v4, p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$BrowseListGestureListener;-><init>(Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;)V

    invoke-direct {v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mCreateTime:J

    .line 196
    sget-object v3, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_0

    .line 197
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 198
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v3, 0xa

    const-string v4, "demo_mode"

    invoke-virtual {v0, v3, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mDemoWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 200
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const-string v3, "demo_mode"

    invoke-virtual {p0, v7, v6}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 201
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "enable"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 202
    .local v2, value:Z
    if-nez v2, :cond_1

    move v3, v6

    :goto_0
    invoke-direct {p0, v3}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setPowerKeyEnable(Z)V

    .line 203
    return-void

    :cond_1
    move v3, v5

    .line 202
    goto :goto_0
.end method

.method public onRestart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1241
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1242
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;

    .line 1243
    .local v0, item:Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;
    invoke-virtual {v0}, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;->isTurnPage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1244
    invoke-virtual {v0, v2}, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;->setForceUpdatePage1Flg(Z)V

    .line 1245
    invoke-virtual {v0, v2}, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;->setForceUpdatePage2Flg(Z)V

    .line 1247
    :cond_0
    invoke-virtual {v0}, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;->isForceUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    invoke-virtual {p0, p0, v3, v2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setupViews(Landroid/content/Context;ZZ)V

    .line 1250
    :cond_1
    invoke-virtual {v0, v3}, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;->setTurnPageFlg(Z)V

    .line 1251
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    const/4 v0, 0x0

    .line 1278
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected scannerFinished(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1314
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setupViews(Landroid/content/Context;ZZ)V

    .line 1315
    return-void
.end method

.method protected scannerStarted(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1312
    return-void
.end method

.method protected setAppOnTableLayout(Landroid/widget/TableLayout;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sony/drbd/ebook/home/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1188
    .local p2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sony/drbd/ebook/home/ApplicationInfo;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1190
    packed-switch v0, :pswitch_data_0

    .line 1202
    const v1, 0x7f090012

    .line 1205
    .local v1, id:I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sony/drbd/ebook/home/ApplicationInfo;

    invoke-virtual {p0, v3, v2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setAppView(Landroid/view/View;Lcom/sony/drbd/ebook/home/ApplicationInfo;)V

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    .end local v1           #id:I
    :pswitch_0
    const v1, 0x7f09000f

    .line 1193
    .restart local v1       #id:I
    goto :goto_1

    .line 1195
    .end local v1           #id:I
    :pswitch_1
    const v1, 0x7f090010

    .line 1196
    .restart local v1       #id:I
    goto :goto_1

    .line 1198
    .end local v1           #id:I
    :pswitch_2
    const v1, 0x7f090011

    .line 1199
    .restart local v1       #id:I
    goto :goto_1

    .line 1209
    .end local v0           #i:I
    .end local v1           #id:I
    :cond_0
    return-void

    .line 1190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAppView(Landroid/view/View;Lcom/sony/drbd/ebook/home/ApplicationInfo;)V
    .locals 10
    .parameter "view"
    .parameter "info"

    .prologue
    .line 421
    const v8, 0x7f090009

    :try_start_0
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 422
    .local v6, textTitle:Landroid/widget/TextView;
    iget-object v8, p2, Lcom/sony/drbd/ebook/home/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const v8, 0x7f09000c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 424
    .local v7, textTitle2:Landroid/widget/TextView;
    iget-object v8, p2, Lcom/sony/drbd/ebook/home/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    const v8, 0x7f090007

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 428
    .local v1, imageIcon:Landroid/widget/ImageView;
    iget-object v8, p2, Lcom/sony/drbd/ebook/home/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    const v8, 0x7f090008

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 432
    .local v3, newImage:Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 433
    iget-boolean v8, p2, Lcom/sony/drbd/ebook/home/ApplicationInfo;->unread:Z

    if-eqz v8, :cond_3

    .line 434
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    :cond_0
    :goto_0
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    const v8, 0x7f09000a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 444
    .local v4, numberBook:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 445
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    const-string v5, "(...)"

    .line 447
    .local v5, strNumber:Ljava/lang/String;
    iget v8, p2, Lcom/sony/drbd/ebook/home/ApplicationInfo;->number:I

    if-ltz v8, :cond_4

    iget v8, p2, Lcom/sony/drbd/ebook/home/ApplicationInfo;->number:I

    const v9, 0x98967f

    if-gt v8, v9, :cond_4

    .line 448
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p2, Lcom/sony/drbd/ebook/home/ApplicationInfo;->number:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 454
    :cond_1
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-boolean v8, p2, Lcom/sony/drbd/ebook/home/ApplicationInfo;->title_num_flg:Z

    if-eqz v8, :cond_2

    .line 458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 459
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 460
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    .end local v5           #strNumber:Ljava/lang/String;
    :cond_2
    const v8, 0x7f09000b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 466
    .local v2, layout:Landroid/widget/RelativeLayout;
    new-instance v8, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$1;

    invoke-direct {v8, p0, p2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity$1;-><init>(Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;Lcom/sony/drbd/ebook/home/ApplicationInfo;)V

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 494
    .end local v1           #imageIcon:Landroid/widget/ImageView;
    .end local v2           #layout:Landroid/widget/RelativeLayout;
    .end local v3           #newImage:Landroid/widget/ImageView;
    .end local v4           #numberBook:Landroid/widget/TextView;
    .end local v6           #textTitle:Landroid/widget/TextView;
    .end local v7           #textTitle2:Landroid/widget/TextView;
    :goto_2
    return-void

    .line 436
    .restart local v1       #imageIcon:Landroid/widget/ImageView;
    .restart local v3       #newImage:Landroid/widget/ImageView;
    .restart local v6       #textTitle:Landroid/widget/TextView;
    .restart local v7       #textTitle2:Landroid/widget/TextView;
    :cond_3
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    .end local v1           #imageIcon:Landroid/widget/ImageView;
    .end local v3           #newImage:Landroid/widget/ImageView;
    .end local v6           #textTitle:Landroid/widget/TextView;
    .end local v7           #textTitle2:Landroid/widget/TextView;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 492
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "HomeLog"

    const-string v9, "Home:setAppView"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 449
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #imageIcon:Landroid/widget/ImageView;
    .restart local v3       #newImage:Landroid/widget/ImageView;
    .restart local v4       #numberBook:Landroid/widget/TextView;
    .restart local v5       #strNumber:Ljava/lang/String;
    .restart local v6       #textTitle:Landroid/widget/TextView;
    .restart local v7       #textTitle2:Landroid/widget/TextView;
    :cond_4
    :try_start_1
    iget v8, p2, Lcom/sony/drbd/ebook/home/ApplicationInfo;->number:I

    if-gez v8, :cond_1

    .line 450
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected setCurrentPageNumber()V
    .locals 0

    .prologue
    .line 1229
    return-void
.end method

.method public setTurnPageActivityFlg(Z)V
    .locals 1
    .parameter "flg"

    .prologue
    .line 1235
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;

    .line 1236
    .local v0, item:Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;
    invoke-virtual {v0, p1}, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;->setTurnPageFlg(Z)V

    .line 1237
    return-void
.end method

.method public setupIndividualPageViews()V
    .locals 0

    .prologue
    .line 1181
    return-void
.end method

.method public setupThumbnailView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-string v1, "HomeLog"

    .line 263
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->acquireWakelock(Landroid/content/Context;)V

    .line 264
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setupIndividualPageViews()V

    .line 265
    const-string v1, "HomeLog"

    const-string v2, "finish setupThumbnailView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    invoke-direct {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->releaseWakelock()V

    .line 273
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 268
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "HomeLog"

    const-string v2, "error setupThumbnailView"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-direct {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->releaseWakelock()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->releaseWakelock()V

    throw v1
.end method

.method public setupViews(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "init"

    .prologue
    .line 223
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->acquireWakelock(Landroid/content/Context;)V

    .line 225
    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->initialSetup()V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setupIndividualPageViews()V

    .line 234
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->adaptApplication()V

    .line 236
    if-eqz p2, :cond_3

    .line 238
    const v1, 0x7f09004f

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mPrevPage:Landroid/widget/Button;

    .line 239
    iget-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mPrevPage:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mPrevPage:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :cond_1
    const v1, 0x7f090051

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mNextPage:Landroid/widget/Button;

    .line 243
    iget-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mNextPage:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mNextPage:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_2
    const v1, 0x7f090050

    invoke-virtual {p0, v1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->mPageNumberText:Landroid/widget/TextView;

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setCurrentPageNumber()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    invoke-direct {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->releaseWakelock()V

    .line 258
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 254
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-direct {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->releaseWakelock()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->releaseWakelock()V

    throw v1
.end method

.method public setupViews(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "init"
    .parameter "update"

    .prologue
    const/4 v1, 0x1

    .line 209
    if-eqz p3, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;

    .line 211
    .local v0, item:Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;
    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;->setForceUpdatePage1Flg(Z)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;->setForceUpdatePage2Flg(Z)V

    .line 213
    invoke-virtual {v0}, Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;->clearApplications()V

    .line 215
    .end local v0           #item:Lcom/sony/drbd/ebook/home/sdata/HomeApplicationItem;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setupViews(Landroid/content/Context;Z)V

    .line 216
    return-void
.end method

.method public turnPage(Z)V
    .locals 0
    .parameter "flg"

    .prologue
    .line 1232
    return-void
.end method

.method protected updateThumbnail(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1317
    invoke-virtual {p0, p1}, Lcom/sony/drbd/ebook/home/activities/CommonPageActivity;->setupThumbnailView(Landroid/content/Context;)V

    .line 1318
    return-void
.end method
