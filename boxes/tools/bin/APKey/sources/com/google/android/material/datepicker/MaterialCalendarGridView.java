package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import b.h.i.b;
import b.h.j.q;
import c.c.a.a.l.a0;
import c.c.a.a.l.d;
import c.c.a.a.l.n;
import c.c.a.a.l.o;
import c.c.a.a.l.t;
import com.example.apkey.R;
import java.util.Calendar;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: b, reason: collision with root package name */
    public final Calendar f952b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f953c;

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f952b = a0.e();
        if (o.x0(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.f953c = o.y0(getContext(), R.attr.nestedScrollable);
        q.F(this, new n(this));
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public t getAdapter2() {
        return (t) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        t adapter = getAdapter();
        d<?> dVar = adapter.f825c;
        adapter.getItem(adapter.b());
        adapter.getItem(adapter.d());
        Iterator<b<Long, Long>> it = dVar.g().iterator();
        while (it.hasNext()) {
            it.next().getClass();
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        int b2;
        if (!z) {
            super.onFocusChanged(false, i, rect);
            return;
        }
        if (i == 33) {
            b2 = getAdapter().d();
        } else {
            if (i != 130) {
                super.onFocusChanged(true, i, rect);
                return;
            }
            b2 = getAdapter().b();
        }
        setSelection(b2);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().b()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter().b());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f953c) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof t)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), t.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter().b()) {
            i = getAdapter().b();
        }
        super.setSelection(i);
    }
}
