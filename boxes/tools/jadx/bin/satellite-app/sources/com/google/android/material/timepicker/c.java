package com.google.android.material.timepicker;

import F.C0001b;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.satellite.bigbang.R;

/* loaded from: classes.dex */
public final class c extends C0001b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f1972d;

    public c(ClockFaceView clockFaceView) {
        this.f1972d = clockFaceView;
    }

    @Override // F.C0001b
    public final void d(View view, G.d dVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f80a;
        AccessibilityNodeInfo accessibilityNodeInfo = dVar.f129a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        int intValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
        if (intValue > 0) {
            accessibilityNodeInfo.setTraversalAfter((View) this.f1972d.f1953v.get(intValue - 1));
        }
        dVar.f(G.c.a(0, 1, intValue, 1, view.isSelected()));
    }
}
