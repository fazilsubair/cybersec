package b.h.j.c0;

import android.R;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.accessibility.AccessibilityNodeInfo;
import b.h.j.c0.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class b {
    public static int d;
    public final AccessibilityNodeInfo a;

    /* renamed from: b, reason: collision with root package name */
    public int f476b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f477c = -1;

    public static class a {
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        public static final a i;
        public static final a j;
        public static final a k;
        public static final a l;
        public final Object a;

        /* renamed from: b, reason: collision with root package name */
        public final int f478b;

        /* renamed from: c, reason: collision with root package name */
        public final Class<? extends d.a> f479c;
        public final d d;

        static {
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(1, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(2, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(4, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(8, null);
            }
            e = new a(16, null);
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(32, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(64, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(128, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(256, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(512, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(1024, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(2048, null);
            }
            f = new a(4096, null);
            g = new a(8192, null);
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(16384, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(32768, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(65536, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(131072, null);
            }
            h = new a(262144, null);
            i = new a(524288, null);
            j = new a(1048576, null);
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(2097152, null);
            }
            int i2 = Build.VERSION.SDK_INT;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionShowOnScreen, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction2 = i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction2 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionScrollToPosition, null);
            }
            k = new a(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction3 = i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction3 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionScrollLeft, null);
            }
            l = new a(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null, null, null);
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction4 = i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction4 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionScrollRight, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction5 = i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction5 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionPageUp, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction6 = i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction6 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionPageDown, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction7 = i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction7 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionPageLeft, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction8 = i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction8 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionPageRight, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction9 = i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction9 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionContextClick, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction10 = i2 >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction10 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionSetProgress, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction11 = i2 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction11 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionMoveWindow, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction12 = i2 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction12 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionShowTooltip, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction13 = i2 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction13 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionHideTooltip, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction14 = i2 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction14 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionPressAndHold, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction15 = i2 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null;
            if (Build.VERSION.SDK_INT < 21 || accessibilityAction15 != null) {
                return;
            }
            new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibilityActionImeEnter, null);
        }

        public a(int i2, CharSequence charSequence) {
            this(null, i2, null, null, null);
        }

        public a(Object obj, int i2, CharSequence charSequence, d dVar, Class<? extends d.a> cls) {
            this.f478b = i2;
            this.d = dVar;
            if (Build.VERSION.SDK_INT >= 21 && obj == null) {
                obj = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
            }
            this.a = obj;
            this.f479c = cls;
        }

        public int a() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.a).getId();
            }
            return 0;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            Object obj2 = this.a;
            Object obj3 = ((a) obj).a;
            return obj2 == null ? obj3 == null : obj2.equals(obj3);
        }

        public int hashCode() {
            Object obj = this.a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }
    }

    /* renamed from: b.h.j.c0.b$b, reason: collision with other inner class name */
    public static class C0019b {
        public final Object a;

        public C0019b(Object obj) {
            this.a = obj;
        }

        public static C0019b a(int i, int i2, boolean z, int i3) {
            int i4 = Build.VERSION.SDK_INT;
            return i4 >= 21 ? new C0019b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3)) : i4 >= 19 ? new C0019b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new C0019b(null);
        }
    }

    public static class c {
        public final Object a;

        public c(Object obj) {
            this.a = obj;
        }

        public static c a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            int i5 = Build.VERSION.SDK_INT;
            return i5 >= 21 ? new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : i5 >= 19 ? new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new c(null);
        }
    }

    public b(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.a = accessibilityNodeInfo;
    }

    public static String c(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
        if (i == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            case R.id.accessibilityActionImeEnter:
                return "ACTION_IME_ENTER";
            default:
                switch (i) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                return "ACTION_UNKNOWN";
                        }
                }
        }
    }

    public static ClickableSpan[] d(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public void a(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.a);
        }
    }

    public final List<Integer> b(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    public CharSequence e() {
        return this.a.getContentDescription();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.a;
        if (accessibilityNodeInfo == null) {
            if (bVar.a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(bVar.a)) {
            return false;
        }
        return this.f477c == bVar.f477c && this.f476b == bVar.f476b;
    }

    public Bundle f() {
        return Build.VERSION.SDK_INT >= 19 ? this.a.getExtras() : new Bundle();
    }

    public CharSequence g() {
        if (!(!b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty())) {
            return this.a.getText();
        }
        List<Integer> b2 = b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> b3 = b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> b4 = b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> b5 = b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.a.getText(), 0, this.a.getText().length()));
        for (int i = 0; i < b2.size(); i++) {
            spannableString.setSpan(new b.h.j.c0.a(b5.get(i).intValue(), this, f().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), b2.get(i).intValue(), b3.get(i).intValue(), b4.get(i).intValue());
        }
        return spannableString;
    }

    public final void h(int i, boolean z) {
        Bundle f = f();
        if (f != null) {
            int i2 = f.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1));
            if (!z) {
                i = 0;
            }
            f.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i | i2);
        }
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public void i(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((C0019b) obj).a);
        }
    }

    public void j(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.a.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) ((c) obj).a);
        }
    }

    public void k(CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.a.setHintText(charSequence);
        } else if (i >= 19) {
            this.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.util.ArrayList] */
    public String toString() {
        ?? emptyList;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        this.a.getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        this.a.getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(this.a.getPackageName());
        sb.append("; className: ");
        sb.append(this.a.getClassName());
        sb.append("; text: ");
        sb.append(g());
        sb.append("; contentDescription: ");
        sb.append(e());
        sb.append("; viewId: ");
        int i = Build.VERSION.SDK_INT;
        sb.append(i >= 18 ? this.a.getViewIdResourceName() : null);
        sb.append("; checkable: ");
        sb.append(this.a.isCheckable());
        sb.append("; checked: ");
        sb.append(this.a.isChecked());
        sb.append("; focusable: ");
        sb.append(this.a.isFocusable());
        sb.append("; focused: ");
        sb.append(this.a.isFocused());
        sb.append("; selected: ");
        sb.append(this.a.isSelected());
        sb.append("; clickable: ");
        sb.append(this.a.isClickable());
        sb.append("; longClickable: ");
        sb.append(this.a.isLongClickable());
        sb.append("; enabled: ");
        sb.append(this.a.isEnabled());
        sb.append("; password: ");
        sb.append(this.a.isPassword());
        sb.append("; scrollable: " + this.a.isScrollable());
        sb.append("; [");
        if (i >= 21) {
            List<AccessibilityNodeInfo.AccessibilityAction> actionList = i >= 21 ? this.a.getActionList() : null;
            if (actionList != null) {
                emptyList = new ArrayList();
                int size = actionList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    emptyList.add(new a(actionList.get(i2), 0, null, null, null));
                }
            } else {
                emptyList = Collections.emptyList();
            }
            for (int i3 = 0; i3 < emptyList.size(); i3++) {
                a aVar = (a) emptyList.get(i3);
                String c2 = c(aVar.a());
                if (c2.equals("ACTION_UNKNOWN")) {
                    int i4 = Build.VERSION.SDK_INT;
                    if ((i4 >= 21 ? ((AccessibilityNodeInfo.AccessibilityAction) aVar.a).getLabel() : null) != null) {
                        c2 = (i4 >= 21 ? ((AccessibilityNodeInfo.AccessibilityAction) aVar.a).getLabel() : null).toString();
                    }
                }
                sb.append(c2);
                if (i3 != emptyList.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int actions = this.a.getActions();
            while (actions != 0) {
                int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(actions);
                actions &= numberOfTrailingZeros ^ (-1);
                sb.append(c(numberOfTrailingZeros));
                if (actions != 0) {
                    sb.append(", ");
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
