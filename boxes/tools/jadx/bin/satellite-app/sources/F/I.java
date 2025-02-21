package F;

import android.view.View;
import com.satellite.bigbang.R;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class I {
    public static void a(View view, N n2) {
        l.k kVar = (l.k) view.getTag(R.id.tag_unhandled_key_listeners);
        if (kVar == null) {
            kVar = new l.k();
            view.setTag(R.id.tag_unhandled_key_listeners, kVar);
        }
        Objects.requireNonNull(n2);
        View.OnUnhandledKeyEventListener h2 = new H();
        kVar.put(n2, h2);
        view.addOnUnhandledKeyEventListener(h2);
    }

    public static CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static boolean c(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean d(View view) {
        return view.isScreenReaderFocusable();
    }

    public static void e(View view, N n2) {
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
        l.k kVar = (l.k) view.getTag(R.id.tag_unhandled_key_listeners);
        if (kVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) kVar.getOrDefault(n2, null)) == null) {
            return;
        }
        view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
    }

    public static <T> T f(View view, int i2) {
        return (T) view.requireViewById(i2);
    }

    public static void g(View view, boolean z2) {
        view.setAccessibilityHeading(z2);
    }

    public static void h(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static void i(View view, boolean z2) {
        view.setScreenReaderFocusable(z2);
    }
}
