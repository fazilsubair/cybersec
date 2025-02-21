package com.google.android.material.datepicker;

import F.C0019u;
import F.O;
import S.f0;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.satellite.bigbang.R;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class s extends f0 {

    /* renamed from: t, reason: collision with root package name */
    public final TextView f1845t;

    /* renamed from: u, reason: collision with root package name */
    public final MaterialCalendarGridView f1846u;

    public s(LinearLayout linearLayout, boolean z2) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.f1845t = textView;
        WeakHashMap weakHashMap = O.f58a;
        new C0019u(R.id.tag_accessibility_heading, 3).b(textView, Boolean.TRUE);
        this.f1846u = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z2) {
            return;
        }
        textView.setVisibility(8);
    }
}
