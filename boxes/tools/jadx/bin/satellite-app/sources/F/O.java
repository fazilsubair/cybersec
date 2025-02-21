package F;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.satellite.bigbang.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class O {

    /* renamed from: a, reason: collision with root package name */
    public static WeakHashMap f58a;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f59b;

    /* renamed from: c, reason: collision with root package name */
    public static final C0018t f60c;

    /* renamed from: d, reason: collision with root package name */
    public static final ViewTreeObserverOnGlobalLayoutListenerC0020v f61d;

    static {
        new AtomicInteger(1);
        f58a = null;
        f59b = new int[]{R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
        f60c = new C0018t();
        f61d = new ViewTreeObserverOnGlobalLayoutListenerC0020v();
    }

    public static T a(View view) {
        if (f58a == null) {
            f58a = new WeakHashMap();
        }
        T t2 = (T) f58a.get(view);
        if (t2 != null) {
            return t2;
        }
        T t3 = new T();
        t3.f69a = new WeakReference(view);
        f58a.put(view, t3);
        return t3;
    }

    public static ArrayList b(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R.id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    public static String[] c(View view) {
        return Build.VERSION.SDK_INT >= 31 ? L.a(view) : (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void d(View view, int i2) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z2 = I.b(view) != null && view.getVisibility() == 0;
            if (B.a(view) != 0 || z2) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z2 ? 32 : 2048);
                B.g(obtain, i2);
                if (z2) {
                    obtain.getText().add(I.b(view));
                    if (AbstractC0023y.c(view) == 0) {
                        AbstractC0023y.s(view, 1);
                    }
                    ViewParent parent = view.getParent();
                    while (true) {
                        if (!(parent instanceof View)) {
                            break;
                        }
                        if (AbstractC0023y.c((View) parent) == 4) {
                            AbstractC0023y.s(view, 2);
                            break;
                        }
                        parent = parent.getParent();
                    }
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (i2 != 32) {
                if (view.getParent() != null) {
                    try {
                        B.e(view.getParent(), view, view, i2);
                        return;
                    } catch (AbstractMethodError e2) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain2);
            obtain2.setEventType(32);
            B.g(obtain2, i2);
            obtain2.setSource(view);
            view.onPopulateAccessibilityEvent(obtain2);
            obtain2.getText().add(I.b(view));
            accessibilityManager.sendAccessibilityEvent(obtain2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C0007h e(View view, C0007h c0007h) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + c0007h + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return L.b(view, c0007h);
        }
        InterfaceC0016q interfaceC0016q = (InterfaceC0016q) view.getTag(R.id.tag_on_receive_content_listener);
        r rVar = f60c;
        if (interfaceC0016q == null) {
            if (view instanceof r) {
                rVar = (r) view;
            }
            return rVar.a(c0007h);
        }
        C0007h a2 = ((I.i) interfaceC0016q).a(view, c0007h);
        if (a2 == null) {
            return null;
        }
        if (view instanceof r) {
            rVar = (r) view;
        }
        return rVar.a(a2);
    }

    public static void f(View view, int i2) {
        ArrayList b2 = b(view);
        for (int i3 = 0; i3 < b2.size(); i3++) {
            if (((G.b) b2.get(i3)).a() == i2) {
                b2.remove(i3);
                return;
            }
        }
    }

    public static void g(View view, G.b bVar, G.o oVar) {
        G.b bVar2 = new G.b(null, bVar.f125b, null, oVar, bVar.f126c);
        View.AccessibilityDelegate a2 = J.a(view);
        C0001b c0001b = a2 == null ? null : a2 instanceof C0000a ? ((C0000a) a2).f77a : new C0001b(a2);
        if (c0001b == null) {
            c0001b = new C0001b();
        }
        h(view, c0001b);
        f(view, bVar2.a());
        b(view).add(bVar2);
        d(view, 0);
    }

    public static void h(View view, C0001b c0001b) {
        if (c0001b == null && (J.a(view) instanceof C0000a)) {
            c0001b = new C0001b();
        }
        view.setAccessibilityDelegate(c0001b == null ? null : c0001b.f81b);
    }

    public static void i(View view, CharSequence charSequence) {
        new C0019u(R.id.tag_accessibility_pane_title, 8, 28, 1 == true ? 1 : 0).b(view, charSequence);
        ViewTreeObserverOnGlobalLayoutListenerC0020v viewTreeObserverOnGlobalLayoutListenerC0020v = f61d;
        if (charSequence == null) {
            viewTreeObserverOnGlobalLayoutListenerC0020v.f108a.remove(view);
            view.removeOnAttachStateChangeListener(viewTreeObserverOnGlobalLayoutListenerC0020v);
            AbstractC0023y.o(view.getViewTreeObserver(), viewTreeObserverOnGlobalLayoutListenerC0020v);
        } else {
            viewTreeObserverOnGlobalLayoutListenerC0020v.f108a.put(view, Boolean.valueOf(view.getVisibility() == 0));
            view.addOnAttachStateChangeListener(viewTreeObserverOnGlobalLayoutListenerC0020v);
            if (B.b(view)) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC0020v);
            }
        }
    }
}
