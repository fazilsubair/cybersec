package c.c.a.a.z;

import android.view.ViewTreeObserver;
import com.google.android.material.timepicker.ClockFaceView;
import com.google.android.material.timepicker.ClockHandView;

/* loaded from: classes.dex */
public class a implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f924b;

    public a(ClockFaceView clockFaceView) {
        this.f924b = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (!this.f924b.isShown()) {
            return true;
        }
        this.f924b.getViewTreeObserver().removeOnPreDrawListener(this);
        int height = this.f924b.getHeight() / 2;
        ClockFaceView clockFaceView = this.f924b;
        int i = (height - clockFaceView.x.h) - clockFaceView.E;
        if (i != clockFaceView.v) {
            clockFaceView.v = i;
            clockFaceView.k();
            ClockHandView clockHandView = clockFaceView.x;
            clockHandView.p = clockFaceView.v;
            clockHandView.invalidate();
        }
        return true;
    }
}
