package b.q;

import android.os.Build;

/* loaded from: classes.dex */
public class r {
    public static final boolean a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f729b;

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f730c;

    static {
        int i = Build.VERSION.SDK_INT;
        a = i >= 19;
        f729b = i >= 18;
        f730c = i >= 28;
    }
}
